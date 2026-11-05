-- ============================================================
-- CRM Lead Management Analysis: KPI sorguları
-- Kaynak tablo: adaylar (data/leads.csv dosyasından yüklenir)
-- Rapor tarihi: 2026-11-05 (sorgularda sabit yazılmıştır)
-- Tolerans süresi: 2 takvim günü (bkz. docs/13_kpi_and_success_metrics.md)
-- Veriler kurgusaldır.
-- ============================================================

-- Tablo oluşturma 
-- CREATE TABLE adaylar (
--   aday_no TEXT, durum TEXT, oncelik TEXT, sorumlu TEXT,
--   olusturulma_tarihi TEXT, atama_tarihi TEXT,
--   ilk_iletisim_tarihi TEXT, sonraki_takip_tarihi TEXT
-- );


-- ------------------------------------------------------------
-- 0. Genel bakış: hangi durumda kaç aday var?
-- GROUP BY: aynı durumdaki satırları gruplar, COUNT(*) her grubu sayar.
-- ------------------------------------------------------------
SELECT durum, COUNT(*) AS adet
FROM adaylar
GROUP BY durum
ORDER BY adet DESC;


-- ------------------------------------------------------------
-- KPI-01: Geciken takip oranı
-- Geciken = durum «Takipte» VE takip tarihi 2 günden fazla geçmiş.
-- julianday(): tarihi sayıya çevirir, iki tarihin farkı gün olarak çıkar.
-- Takip tarihi boş olan satırlarda fark hesaplanamaz, bu satırlar sayılmaz.
-- ------------------------------------------------------------
SELECT
  COUNT(*) AS geciken_takip,
  (SELECT COUNT(*) FROM adaylar WHERE durum = 'Takipte') AS takipteki_aday,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM adaylar WHERE durum = 'Takipte'), 1) AS geciken_orani_yuzde
FROM adaylar
WHERE durum = 'Takipte'
  AND julianday('2026-11-05') - julianday(sonraki_takip_tarihi) > 2;


-- KPI-01 kırılımı: geciken takipler sorumluya göre
SELECT sorumlu, COUNT(*) AS geciken_takip
FROM adaylar
WHERE durum = 'Takipte'
  AND julianday('2026-11-05') - julianday(sonraki_takip_tarihi) > 2
GROUP BY sorumlu
ORDER BY geciken_takip DESC;


-- ------------------------------------------------------------
-- KPI-02: Atamaya kadar geçen ortalama süre (gün)
-- Atama tarihi boş olan adaylar (henüz atanmamış) hesaba katılmaz.
-- ------------------------------------------------------------
SELECT
  ROUND(AVG(julianday(atama_tarihi) - julianday(olusturulma_tarihi)), 1) AS ortalama_gun
FROM adaylar
WHERE atama_tarihi IS NOT NULL AND atama_tarihi <> '';


-- ------------------------------------------------------------
-- KPI-03: İlk iletişime kadar geçen ortalama süre (atamadan sonra, gün)
-- ------------------------------------------------------------
SELECT
  ROUND(AVG(julianday(ilk_iletisim_tarihi) - julianday(atama_tarihi)), 1) AS ortalama_gun
FROM adaylar
WHERE ilk_iletisim_tarihi IS NOT NULL AND ilk_iletisim_tarihi <> '';


-- ------------------------------------------------------------
-- KPI-04: Takip tarihi planlı aday oranı
-- Takipteki adaylardan kaçının sonraki takip tarihi dolu?
-- ------------------------------------------------------------
SELECT
  COUNT(*) AS takipteki_aday,
  SUM(CASE WHEN sonraki_takip_tarihi <> '' THEN 1 ELSE 0 END) AS tarihi_dolu,
  ROUND(SUM(CASE WHEN sonraki_takip_tarihi <> '' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS planli_orani_yuzde
FROM adaylar
WHERE durum = 'Takipte';


-- ------------------------------------------------------------
-- KPI-05: Sorumlusuz bekleyen aday sayısı
-- ------------------------------------------------------------
SELECT COUNT(*) AS sorumlusuz_bekleyen
FROM adaylar
WHERE durum = 'Yeni';


-- ------------------------------------------------------------
-- KPI-06: Dönüşüm oranı = Kazanıldı / (Kazanıldı + Kaybedildi)
-- İptal edilen kayıtlar hesaba katılmaz.
-- ------------------------------------------------------------
SELECT
  SUM(CASE WHEN durum = 'Kazanıldı' THEN 1 ELSE 0 END) AS kazanilan,
  SUM(CASE WHEN durum = 'Kaybedildi' THEN 1 ELSE 0 END) AS kaybedilen,
  ROUND(SUM(CASE WHEN durum = 'Kazanıldı' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 1) AS donusum_orani_yuzde
FROM adaylar
WHERE durum IN ('Kazanıldı', 'Kaybedildi');


-- ------------------------------------------------------------
-- EK 1: Takip listesi kategorileri (04_followup_list ekranının veri karşılığı)
-- CASE: koşula göre etiket verir (Excel'deki EĞER gibi).
-- ------------------------------------------------------------
SELECT
  CASE
    WHEN julianday('2026-11-05') - julianday(sonraki_takip_tarihi) > 2 THEN '1 Geciken'
    WHEN julianday('2026-11-05') - julianday(sonraki_takip_tarihi) > 0 THEN '2 Süresi geçmiş (tolerans içinde)'
    WHEN julianday('2026-11-05') - julianday(sonraki_takip_tarihi) = 0 THEN '3 Bugün yapılacak'
    ELSE '4 Yaklaşan'
  END AS kategori,
  COUNT(*) AS adet
FROM adaylar
WHERE durum = 'Takipte' AND sonraki_takip_tarihi <> ''
GROUP BY kategori
ORDER BY kategori;


-- ------------------------------------------------------------
-- EK 2: Neden «durum = Takipte» şartı var?
-- Kapanmış adaylarda geçmiş takip tarihi kalabilir, bunlar geciken sayılmaz.
-- Bu sorgu, şart olmasaydı yanlışlıkla sayılacak kayıtları gösterir.
-- ------------------------------------------------------------
SELECT durum, COUNT(*) AS gecmis_takip_tarihli_kayit
FROM adaylar
WHERE durum IN ('Kazanıldı', 'Kaybedildi', 'İptal')
  AND sonraki_takip_tarihi <> ''
  AND julianday('2026-11-05') - julianday(sonraki_takip_tarihi) > 2
GROUP BY durum;
