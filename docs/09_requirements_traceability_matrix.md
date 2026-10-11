# Gereksinim İzlenebilirlik Matrisi (RTM)

## 1. Amaç

Bu matrisi, projede belirlediğim iş gereksinimleri, fonksiyonel gereksinimler, kullanıcı hikâyeleri, kabul kriterleri ve test senaryoları arasındaki bağlantıları takip etmek için hazırladım.

Bu sayede bir gereksinimin analiz sürecinde kaybolup kaybolmadığını ve hangi test senaryosuyla kontrol edilebileceğini inceleyebilirim.

## 2. Gereksinim İzlenebilirlik Matrisi

| İş Gereksinimi | Fonksiyonel Gereksinim | Kullanıcı Hikâyesi | Test Senaryosu |
|---|---|---|---|
| BR-01 — Merkezi müşteri takibi | FR-01, FR-02 | US-01, US-02 | TC-01, TC-02, TC-03 |
| BR-02 — Takiplerin düzenli yapılması | FR-04, FR-05 | US-04, US-05 | TC-05, TC-06 |
| BR-03 — Sorumlulukların belirlenmesi | FR-06, FR-07 | US-06, US-07 | TC-07, TC-08 |
| BR-04 — Müşteri önceliklendirme | FR-08 | US-08 | TC-09 |
| BR-05 — İletişim geçmişinin izlenmesi | FR-03, FR-09 | US-03, US-09 | TC-04, TC-10 |
| BR-06 — Veri güvenliği ve iş sürekliliği | FR-10 | US-10 | TC-11 |

## 3. İzlenebilirlik Kontrolü

Matrisi hazırlarken şu soruları dikkate aldım:

- Her iş gereksinimi en az bir fonksiyonel gereksinimle ilişkilendirilmiş mi?
- Fonksiyonel gereksinimlerin kullanıcı hikâyeleriyle bağlantısı kurulmuş mu?
- Kullanıcı hikâyelerinin test edilmesine yardımcı olacak senaryolar hazırlanmış mı?
- Bir gereksinim değiştiğinde etkilenecek diğer belgeler belirlenebiliyor mu?

## 4. Açık Noktalar

- Kabul kriterleri ve test senaryoları henüz taslak niteliğindedir.
- Test senaryoları gerçek bir sistem üzerinde çalıştırılmamıştır.
- Bazı iş kuralları henüz doğrulanmamıştır.
- Gereksinimler değiştikçe matris de güncellenmelidir.

## 5. Analiz Notu

Bu matrisi, hazırladığım analiz belgeleri arasındaki ilişkileri görünür kılmak amacıyla oluşturdum. Matriste bir test senaryosunun bulunması, ilgili testin başarıyla tamamlandığı anlamına gelmez.

Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir çalışmadır.
