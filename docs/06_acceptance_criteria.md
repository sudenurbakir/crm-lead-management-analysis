# Kabul Kriterleri (Acceptance Criteria)

## 1. Amaç

Bu dosyada, kullanıcı hikâyelerinin hangi koşullarda karşılanmış sayılacağını belirledim.

Kabul kriterlerini yazarken mümkün olduğunca açık, anlaşılır ve test edilebilir ifadeler kullanmaya çalıştım. Henüz netleştirilmemiş iş kurallarını ise kesinleşmiş kararlar gibi yazmadım.

## 2. US-01 — Müşteri Kaydı Oluşturma

**İlgili gereksinim:** FR-01

- Kullanıcı, müşteri kaydı oluşturma işlemini başlatabilmelidir.
- Zorunlu alanlar tamamlandığında müşteri kaydı oluşturulabilmelidir.
- Kayıt başarıyla oluşturulduğunda müşteri bilgileri görüntülenebilmelidir.

**Netleştirilmesi gereken konu:** Hangi müşteri alanlarının zorunlu olacağı belirlenmelidir.

## 3. US-02 — Müşteri Bilgilerini Görüntüleme ve Güncelleme

**İlgili gereksinim:** FR-02

- Kullanıcı, mevcut bir müşterinin kayıtlı bilgilerini görüntüleyebilmelidir.
- Kullanıcı, değiştirmeye yetkili olduğu alanları güncelleyebilmelidir.
- Güncelleme başarılı olduğunda yeni bilgiler görüntülenebilmelidir.

**Netleştirilmesi gereken konu:** Hangi kullanıcıların hangi alanları değiştirebileceği belirlenmelidir.

## 4. US-03 — İletişim Kaydı Oluşturma

**İlgili gereksinim:** FR-03

- Kullanıcı, ilgili müşteri için yeni bir iletişim kaydı oluşturabilmelidir.
- İletişim kaydında tarih, iletişim kanalı ve görüşme sonucu tutulabilmelidir.
- Kaydedilen iletişim, ilgili müşterinin geçmiş kayıtlarında görüntülenebilmelidir.

**Netleştirilmesi gereken konu:** Görüşme sonucu için hangi seçeneklerin kullanılacağı belirlenmelidir.

## 5. US-04 — Sonraki Geri Dönüş Tarihini Belirleme

**İlgili gereksinim:** FR-04

- Kullanıcı, müşteri için bir sonraki geri dönüş tarihini girebilmelidir.
- Kaydedilen tarih, ilgili müşteri kaydıyla ilişkilendirilmelidir.
- Kullanıcı, kaydedilen geri dönüş tarihini daha sonra görüntüleyebilmelidir.

**Netleştirilmesi gereken konu:** Geri dönüş tarihi zorunlu mu olacak, yoksa yalnızca gerektiğinde mi girilecek?

## 6. US-05 — Planlanan Takipleri Görüntüleme

**İlgili gereksinim:** FR-05

- Kullanıcı, planlanan müşteri takiplerini görüntüleyebilmelidir.
- Kullanıcı, takipleri tarihe veya takip durumuna göre inceleyebilmelidir.
- Tarihi geçmiş ve tamamlanmamış takipler, diğer takiplerden ayırt edilebilmelidir.

**Netleştirilmesi gereken konu:** Takip durumlarının ve gecikme kurallarının nasıl tanımlanacağı belirlenmelidir.

## 7. US-06 — Müşteri Sorumlusu Belirleme

**İlgili gereksinim:** FR-06

- Yetkili kullanıcı, bir müşteri için sorumlu satış temsilcisi belirleyebilmelidir.
- Belirlenen sorumlu, müşteri kaydında görüntülenebilmelidir.
- Müşteri kaydının sorumlusu belli değilse bu durum kullanıcı tarafından fark edilebilmelidir.

**Netleştirilmesi gereken konu:** Sorumlu atama yetkisinin hangi rollerde olacağı belirlenmelidir.

## 8. US-07 — Sorumluluk Değişikliğini Kaydetme

**İlgili gereksinim:** FR-07

- Yetkili kullanıcı, müşteri sorumlusunu değiştirebilmelidir.
- Sorumlu değiştirildiğinde yeni sorumlu müşteri kaydında görüntülenebilmelidir.
- Sorumluluk değişikliğinin geçmişi incelenebilmelidir.

**Netleştirilmesi gereken konu:** Değişiklik geçmişinde tarih ve işlemi yapan kullanıcı gibi hangi bilgilerin tutulacağı belirlenmelidir.

## 9. US-08 — Müşteri Önceliğini Belirleme

**İlgili gereksinim:** FR-08

- Kullanıcı, müşteri için tanımlanmış öncelik seviyelerinden birini seçebilmelidir.
- Seçilen öncelik müşteri kaydında görüntülenebilmelidir.
- Kullanıcı, müşteri listesindeki öncelik bilgilerini karşılaştırabilmelidir.

**Netleştirilmesi gereken konu:** Öncelik seviyeleri ve bunların belirlenme kuralları satış ekibiyle netleştirilmelidir.

## 10. US-09 — İletişim Geçmişini Görüntüleme

**İlgili gereksinim:** FR-09

- Kullanıcı, ilgili müşterinin önceki iletişim kayıtlarını görüntüleyebilmelidir.
- Her iletişim kaydında tarih ve iletişim kanalı gibi belirlenen bilgiler yer almalıdır.
- İletişim kayıtları, geçmiş görüşmelerin takip edilebileceği şekilde sunulmalıdır.

**Netleştirilmesi gereken konu:** Kayıtların hangi sırayla gösterileceği ve hangi alanlarla aranabileceği belirlenmelidir.

## 11. US-10 — Verileri Koruma ve Geri Yükleme

**İlgili gereksinim:** FR-10

- Müşteri verileri, belirlenen yedekleme planına göre yedeklenebilmelidir.
- Veri kaybı durumunda, belirlenen prosedür doğrultusunda yedekten geri yükleme yapılabilmelidir.
- Geri yükleme sonrasında verilerin kullanılabilirliği kontrol edilebilmelidir.

**Netleştirilmesi gereken konu:** Yedekleme sıklığı, yedeklerin saklanma süresi ve kabul edilebilir veri kaybı süresi belirlenmelidir.

## 12. Genel Notlar

- Kabul kriterleri, ilgili kullanıcı hikâyelerinin test edilebilir hale getirilmesini destekler.
- Henüz doğrulanmamış iş kuralları kesin karar olarak değerlendirilmemelidir.
- Bu kriterler ilk taslaktır; iş birimi ve teknik ekipten alınacak geri bildirimlere göre güncellenebilir.

Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir çalışmadır.
