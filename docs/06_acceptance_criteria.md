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

**İlgili gereksinim:** FR-02, FR-11, FR-12

- Kullanıcı, mevcut bir müşterinin kayıtlı bilgilerini görüntüleyebilmelidir.
- Satış temsilcisi, tüm müşteri adaylarını görüntüleyebilmelidir.
- Satış temsilcisi yalnızca sorumlusu olduğu müşteri adaylarının bilgilerini düzenleyebilmelidir.
- Satış yöneticisi, tüm müşteri adaylarının bilgilerini düzenleyebilmelidir.
- Kullanıcı yetkisi olmayan bir müşteri kaydını düzenlemeye çalıştığında sistem değişikliği kaydetmemelidir.
- Güncelleme başarılı olduğunda yeni bilgiler görüntülenebilmelidir.

**Netleştirilmesi gereken konu:** Sistem yöneticisinin müşteri verilerine erişim kapsamı belirlenmelidir.

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

**İlgili gereksinim:** FR-06, FR-16

- Satış yöneticisi, bir müşteri için sorumlu satış temsilcisi belirleyebilmelidir.
- Satış yöneticisi, müşteri adayının mevcut sorumlusunu değiştirebilmelidir.
- Atanan çalışan geçerli ve aktif bir kullanıcı olmalıdır.
- Satış temsilcisi sorumlu çalışanı değiştirmeye çalıştığında sistem işlemi reddetmelidir.
- Belirlenen sorumlu, müşteri kaydında görüntülenebilmelidir.

**Netleştirilmesi gereken konu:** Sorumlu çalışan değiştiğinde açık takip görevlerinin nasıl aktarılacağı belirlenmelidir.

## 8. US-07 — Sorumluluk Değişikliğini Kaydetme

**İlgili gereksinim:** FR-07, FR-17

- Sorumlu çalışan değiştirildiğinde yeni sorumlu müşteri kaydında görüntülenebilmelidir.
- Değişiklik geçmişinde önceki sorumlu, yeni sorumlu, işlemi yapan kullanıcı ve işlem tarihi/saat bilgisi tutulmalıdır.
- Yetkili kullanıcılar sorumluluk değişikliği geçmişini inceleyebilmelidir.
- Sorumluluk değişikliği geçmişi, normal bir kayıt güncellemesiyle silinmemelidir.

**Netleştirilmesi gereken konu:** Değişiklik geçmişine erişebilecek roller ve açık takip görevlerinin devri belirlenmelidir.

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

## 12. Yetkilendirme İçin Ek Kabul Kriterleri

### AC-13 — İletişim Kaydı Ekleme Yetkisi

**İlgili gereksinim:** FR-13

- Satış temsilcisi, görüntüleme yetkisine sahip olduğu müşteri adayına yeni iletişim kaydı ekleyebilmelidir.
- Kaydı oluşturan kullanıcı sistem tarafından kaydedilmelidir.
- Yeni iletişim kaydı eklenmesi, müşteri adayının sorumlusunu kendiliğinden değiştirmemelidir.

### AC-14 — İletişim Kaydını Düzenleme Yetkisi

**İlgili gereksinim:** FR-14

- Kaydı oluşturan kullanıcı kendi iletişim kaydını düzenleyebilmelidir.
- Satış temsilcisi başka bir kullanıcının iletişim kaydını düzenlemeye çalıştığında sistem işlemi reddetmelidir.
- Satış yöneticisi, belirlenen yetkiler kapsamında iletişim kayıtlarını düzenleyebilmelidir.

### AC-15 — İletişim Kaydını İptal Etme Yetkisi

**İlgili gereksinim:** FR-15

- Kullanıcı, kendi iletişim kaydını iptal ederken gerekçe girmelidir.
- Satış temsilcisi başka bir kullanıcının kaydını iptal etmeye çalıştığında sistem işlemi reddetmelidir.
- Satış yöneticisi, yetkisi kapsamında başka bir kullanıcının kaydını gerekçe belirterek iptal edebilmelidir.
- İptal edilen kayıt, geçerli iletişim geçmişinden ayırt edilebilmelidir.
- İptal işleminin geçmişi korunmalıdır.

### AC-18 — Rol ve Yetkileri Görüntüleme

**İlgili gereksinim:** FR-18

- Satış yöneticisi tanımlı rolleri ve yetkileri görüntüleyebilmelidir.
- Satış yöneticisi kullanıcıların hangi rollere sahip olduğunu görüntüleyebilmelidir.
- Satış temsilcisi rol ve yetki tanımlarına erişmeye çalıştığında sistem erişim kuralını uygulamalıdır.

### AC-19 — Rol ve Yetkileri Yönetme

**İlgili gereksinim:** FR-19

- Sistem yöneticisi rol ve yetki tanımlarını oluşturabilmeli veya değiştirebilmelidir.
- Satış yöneticisi rol ve yetki tanımlarını değiştirmeye çalıştığında sistem işlemi reddetmelidir.
- Rol veya yetki değişikliği yapıldığında işlemi yapan kullanıcı ve işlem tarihi/saat bilgisi kaydedilmelidir.

### AC-20 — Yetkisiz İşlemleri Engelleme

**İlgili gereksinim:** FR-20

- Yetkisiz bir işlem arayüz üzerinden veya doğrudan sunucuya istek gönderilerek denendiğinde sistem işlemi reddetmelidir.
- Yetkisiz işlem sonucunda ilgili veri değiştirilmemelidir.
- Kullanıcıya uygun bir hata yanıtı verilmelidir.

### AC-21 — Yetki Değişikliklerini İzleme

**İlgili gereksinim:** FR-21

- Rol veya yetki tanımı değiştirildiğinde işlem geçmişi kaydedilmelidir.
- Yetkili kullanıcılar değişiklik geçmişini inceleyebilmelidir.

### AC-22 — Yetki Sorunlarını Bildirme

**İlgili gereksinim:** FR-22

- Satış yöneticisi tespit ettiği yetki sorununu sistem yöneticisine iletebilmelidir.
- Bildirim ve çözüm takibi yöntemi belirlendikten sonra ilgili kabul kriterleri ayrıntılandırılmalıdır.

**Not:** AC numaraları, gereksinimlerle ilişki kurmak için kullanılmıştır. İletişim geçmişi ve sorumluluk değişiklikleriyle ilgili kriterler, mevcut US-03 ve US-07 kriterleriyle birlikte değerlendirilmelidir.

## 13. Genel Notlar

- Kabul kriterleri, ilgili kullanıcı hikâyelerinin test edilebilir hale getirilmesini destekler.
- Henüz doğrulanmamış iş kuralları kesin karar olarak değerlendirilmemelidir.
- Bu kriterler ilk taslaktır; iş birimi ve teknik ekipten alınacak geri bildirimlere göre güncellenebilir.

Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir çalışmadır.
