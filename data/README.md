# Veri Seti

`leads.csv`, KPI hesaplamaları için hazırlanmış 160 satırlık **kurgusal** bir müşteri adayı veri setidir. Gerçek kişi, firma veya şirket verisi içermez.

| Alan | Açıklama |
|---|---|
| aday_no | Yapay aday etiketi (Aday 001 gibi) |
| durum | Yeni, Atandı, Takipte, Kazanıldı, Kaybedildi, İptal |
| oncelik | Yüksek, Orta, Düşük |
| sorumlu | Yapay temsilci etiketi (Temsilci A gibi). Atanmamışsa boş |
| olusturulma_tarihi | Kaydın oluşturulduğu tarih |
| atama_tarihi | Sorumlunun atandığı tarih. Atanmamışsa boş |
| ilk_iletisim_tarihi | İlk iletişimin kaydedildiği tarih. Yoksa boş |
| sonraki_takip_tarihi | Planlanan sonraki takip tarihi. Yoksa boş |

Rapor tarihi 05.11.2026 olarak alınmıştır. Durum kuralları `diagrams/lead_status_flow.md` dosyasına, gösterge tanımları `docs/13_kpi_and_success_metrics.md` dosyasına uygundur.
