# Başarı Ölçütleri (KPI)

## 1. Amaç

Bu doküman, önerilen çözümün işe yarayıp yaramadığını ölçmek için kullanılacak göstergeleri tanımlar. Her gösterge bir iş gereksinimine (`docs/03_business_requirements.md`) ve durum diyagramındaki bir duruma bağlanır. Gösterge değerleri kurgusal veri seti üzerinde hesaplanır, gerçek bir şirket verisi değildir.

## 2. Tanımlar

- **Takipteki aday:** Durumu «Takipte» olan aday.
- **Kapanmış aday:** Durumu «Kazanıldı», «Kaybedildi» veya «İptal» olan aday.
- **Tolerans süresi:** Takip tarihi geçtikten sonra adayın henüz gecikmiş sayılmadığı gün sayısı. Önerilen değer 2 takvim günüdür. Bu değer parametredir ve iş birimi tarafından değiştirilebilir.
- **Geciken takip:** Takipteki aday olup sonraki takip tarihinin üzerinden tolerans süresinden fazla gün geçmiş olan aday. Kapanmış adaylar ve henüz takibe alınmamış adaylar (Yeni, Atandı) geciken sayılmaz.

## 3. Göstergeler

| Kod | Gösterge | Formül | İlgili gereksinim | Önerilen hedef |
|---|---|---|---|---|
| KPI-01 | Geciken takip oranı | Geciken takip sayısı ÷ Takipteki aday sayısı | BR-02 | %10'un altı |
| KPI-02 | Atamaya kadar geçen süre | Atama tarihi − oluşturulma tarihi (ortalama gün) | BR-03 | 1 iş günü |
| KPI-03 | İlk iletişime kadar geçen süre | İlk iletişim tarihi − atama tarihi (ortalama gün) | BR-02, BR-05 | 2 iş günü |
| KPI-04 | Takip tarihi planlı aday oranı | Sonraki takip tarihi dolu olan takipteki aday sayısı ÷ Takipteki aday sayısı | BR-02 | %100 |
| KPI-05 | Sorumlusuz bekleyen aday sayısı | Durumu «Yeni» olan aday sayısı | BR-03 | 0'a yakın |
| KPI-06 | Dönüşüm oranı | Kazanıldı ÷ (Kazanıldı + Kaybedildi) | BR-01 | Gözlemlenecek, hedef belirlenmedi |

## 4. Göstergelerin Ölçtüğü Sorun

| Sorun (mevcut süreç) | Gösterge |
|---|---|
| Takipler unutuluyor veya gecikiyor | KPI-01, KPI-04 |
| Adayın sorumlusu belirsiz | KPI-02, KPI-05 |
| İlk görüşme geç yapılıyor | KPI-03 |
| Sürecin genel başarısı görünmüyor | KPI-06 |

## 5. Gerekli Veri Alanları

| Alan | Kullanıldığı gösterge |
|---|---|
| aday_no | Tümü |
| durum | KPI-01, 04, 05, 06 |
| olusturulma_tarihi | KPI-02 |
| atama_tarihi | KPI-02, 03 |
| ilk_iletisim_tarihi | KPI-03 |
| sonraki_takip_tarihi | KPI-01, 04 |
| sorumlu | Kırılım (kişi bazında) |
| oncelik | Kırılım (öncelik bazında) |

## 6. Açık Sorular

- Hedef değerler (%10, 1 iş günü gibi) öneridir. Gerçek değerleri iş birimi belirler.
- «Geciken» ve «ilk iletişim süresi» için iş günü mü takvim günü mü kullanılacağı belirlenmemiştir. Veri setinde takvim günü kullanılacaktır.
- Öncelik «Yüksek» olan adaylar için daha sıkı hedef konulup konulmayacağı belirlenmemiştir.
- Tolerans süresinin 2 gün olması öneridir. Takvim günü mü iş günü mü kullanılacağı ve öncelik «Yüksek» olan adaylar için daha kısa bir tolerans uygulanıp uygulanmayacağı belirlenmemiştir. Veri setinde takvim günü kullanılacaktır.

## 7. İlişkili Dokümanlar

- `docs/03_business_requirements.md`: BR-01 … BR-06
- `diagrams/lead_status_flow.md`: durum tanımları
- `docs/09_requirements_traceability_matrix.md`: gereksinim zinciri
