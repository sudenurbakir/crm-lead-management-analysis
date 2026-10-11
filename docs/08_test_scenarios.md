# Test Senaryoları (Test Scenarios)

## 1. Amaç

Bu dosyada, CRM Lead Management Analysis projesinde belirlenen gereksinimlerin ve kabul kriterlerinin nasıl kontrol edilebileceğini göstermek için test senaryoları hazırladım.

Senaryoları yazarken hem işlemin başarılı olduğu durumları hem de hata veya eksik bilgi içeren durumları değerlendirmeye çalıştım.

Bu dosya test planlama çalışmasıdır. Senaryolar henüz gerçek bir sistem üzerinde çalıştırılmamıştır.

## 2. Test Senaryoları

### TC-01 — Yeni Müşteri Kaydı Oluşturma

**İlgili kullanıcı hikâyesi:** US-01

**Amaç:** Yeni bir müşteri kaydının oluşturulabildiğini kontrol etmek.

**Ön koşul:** Kullanıcının müşteri kaydı oluşturma yetkisi vardır.

**Test adımları:**
1. Müşteri kayıt ekranı açılır.
2. Belirlenen müşteri bilgileri girilir.
3. Kaydet işlemi gerçekleştirilir.

**Beklenen sonuç:** Müşteri kaydı oluşturulur ve görüntülenebilir.

### TC-02 — Eksik Bilgilerle Müşteri Kaydı Oluşturma

**İlgili kullanıcı hikâyesi:** US-01

**Amaç:** Zorunlu olduğu belirlenen alanlar eksikken kayıt işleminin nasıl davrandığını kontrol etmek.

**Ön koşul:** Zorunlu müşteri alanları tanımlanmıştır.

**Test adımları:**
1. Müşteri kayıt ekranı açılır.
2. Zorunlu alanlardan en az biri boş bırakılır.
3. Kaydet işlemi gerçekleştirilir.

**Beklenen sonuç:** Sistem, tanımlanan zorunlu alan kuralına uygun davranır ve eksik bilgi hakkında kullanıcıya açıklayıcı bir mesaj gösterir.

**Not:** Zorunlu alanlar henüz belirlenmediğinden bu senaryo, ilgili kural netleştirildikten sonra uygulanabilir.

### TC-03 — Müşteri Bilgilerini Güncelleme

**İlgili kullanıcı hikâyesi:** US-02

**Amaç:** Müşteri bilgilerinin güncellenebildiğini kontrol etmek.

**Ön koşul:** Sistemde mevcut bir müşteri kaydı vardır ve kullanıcının güncelleme yetkisi bulunur.

**Test adımları:**
1. Mevcut müşteri kaydı açılır.
2. Güncellenmesine izin verilen bir alan değiştirilir.
3. Değişiklik kaydedilir.
4. Müşteri kaydı yeniden görüntülenir.

**Beklenen sonuç:** Güncellenen bilgi yeni değeriyle görüntülenir.

### TC-04 — İletişim Kaydı Oluşturma

**İlgili kullanıcı hikâyesi:** US-03

**Amaç:** Müşteriyle yapılan bir görüşmenin kayıt altına alınabildiğini kontrol etmek.

**Ön koşul:** Sistemde bir müşteri kaydı vardır.

**Test adımları:**
1. Müşteri kaydı açılır.
2. İletişim tarihi, kanalı ve görüşme sonucu girilir.
3. İletişim kaydedilir.
4. Müşterinin iletişim geçmişi görüntülenir.

**Beklenen sonuç:** Yeni iletişim kaydı ilgili müşterinin geçmişinde görüntülenir.

### TC-05 — Geri Dönüş Tarihi Kaydetme

**İlgili kullanıcı hikâyesi:** US-04

**Amaç:** Bir sonraki geri dönüş tarihinin kaydedilebildiğini kontrol etmek.

**Ön koşul:** Sistemde bir müşteri kaydı vardır.

**Test adımları:**
1. Müşteri kaydı açılır.
2. Bir sonraki geri dönüş tarihi girilir.
3. Tarih kaydedilir.
4. Müşteri kaydı yeniden görüntülenir.

**Beklenen sonuç:** Girilen geri dönüş tarihi ilgili müşteri kaydında görüntülenir.

### TC-06 — Planlanan Takipleri Görüntüleme

**İlgili kullanıcı hikâyesi:** US-05

**Amaç:** Planlanan ve gecikmiş takiplerin ayırt edilebildiğini kontrol etmek.

**Ön koşul:** Sistemde farklı tarihlere ve durumlara sahip takip kayıtları vardır.

**Test adımları:**
1. Takip listesi açılır.
2. Planlanan takipler incelenir.
3. Tarihi geçmiş ve tamamlanmamış takipler kontrol edilir.

**Beklenen sonuç:** Takipler, tanımlanan tarih ve durum kurallarına uygun biçimde görüntülenir.

**Not:** Takip durumları ve gecikme kuralları netleştirilmelidir.

### TC-07 — Müşteri Sorumlusu Atama

**İlgili kullanıcı hikâyesi:** US-06

**Amaç:** Müşteriye bir sorumlu satış temsilcisi atanabildiğini kontrol etmek.

**Ön koşul:** Sistemde müşteri kaydı ve atanabilecek kullanıcılar vardır.

**Test adımları:**
1. Müşteri kaydı açılır.
2. Bir satış temsilcisi sorumlu olarak seçilir.
3. Değişiklik kaydedilir.
4. Müşteri kaydı yeniden görüntülenir.

**Beklenen sonuç:** Atanan satış temsilcisi müşteri kaydında sorumlu olarak görüntülenir.

### TC-08 — Müşteri Sorumlusunu Değiştirme

**İlgili kullanıcı hikâyesi:** US-07

**Amaç:** Müşteri sorumlusu değişikliğinin kaydedilebildiğini kontrol etmek.

**Ön koşul:** Müşterinin mevcut bir sorumlusu vardır ve kullanıcının değişiklik yetkisi bulunur.

**Test adımları:**
1. Müşteri kaydı açılır.
2. Mevcut sorumlu farklı bir satış temsilcisiyle değiştirilir.
3. Değişiklik kaydedilir.
4. Güncel sorumlu ve varsa değişiklik geçmişi kontrol edilir.

**Beklenen sonuç:** Yeni sorumlu görüntülenir ve değişiklik geçmişi, belirlenen kurallara göre tutulur.

### TC-09 — Müşteri Önceliği Belirleme

**İlgili kullanıcı hikâyesi:** US-08

**Amaç:** Müşteri için öncelik seviyesi seçilebildiğini kontrol etmek.

**Ön koşul:** Öncelik seviyeleri tanımlanmıştır.

**Test adımları:**
1. Müşteri kaydı açılır.
2. Tanımlanmış öncelik seviyelerinden biri seçilir.
3. Değişiklik kaydedilir.
4. Müşteri kaydı yeniden görüntülenir.

**Beklenen sonuç:** Seçilen öncelik seviyesi müşteri kaydında görüntülenir.

### TC-10 — İletişim Geçmişini Görüntüleme

**İlgili kullanıcı hikâyesi:** US-09

**Amaç:** Müşterinin geçmiş iletişim kayıtlarına ulaşılabildiğini kontrol etmek.

**Ön koşul:** İlgili müşteri için daha önce iletişim kayıtları oluşturulmuştur.

**Test adımları:**
1. Müşteri kaydı açılır.
2. İletişim geçmişi görüntülenir.
3. Kayıtların tarih ve iletişim kanalı gibi bilgileri kontrol edilir.

**Beklenen sonuç:** İlgili müşterinin iletişim kayıtları görüntülenebilir.

### TC-11 — Yedekleme ve Geri Yükleme Sürecini Kontrol Etme

**İlgili kullanıcı hikâyesi:** US-10

**Amaç:** Yedeklenen verilerin gerektiğinde geri yüklenebildiğini kontrol etmek.

**Ön koşul:** Yedekleme ve geri yükleme prosedürü tanımlanmıştır; test ortamında kullanılabilir bir yedek vardır.

**Test adımları:**
1. Test ortamındaki yedekleme kaydı kontrol edilir.
2. Tanımlanan prosedüre göre geri yükleme işlemi gerçekleştirilir.
3. Geri yüklenen müşteri kayıtları kontrol edilir.

**Beklenen sonuç:** Veriler belirlenen prosedüre uygun biçimde geri yüklenir ve kullanılabilirliği doğrulanır.

**Not:** Bu senaryo gerçek müşteri verileri üzerinde değil, kontrollü bir test ortamında yürütülmelidir.

## 3. Test Durumu

Bu proje kapsamında test senaryoları taslak olarak hazırlanmıştır.

| Test ID | Test Konusu | Durum |
|---|---|---|
| TC-01 | Müşteri kaydı oluşturma | Hazırlanmadı değil, senaryo hazır; test edilmedi |
| TC-02 | Eksik bilgilerle kayıt oluşturma | Kural netleştirilmeli; test edilmedi |
| TC-03 | Müşteri bilgilerini güncelleme | Senaryo hazır; test edilmedi |
| TC-04 | İletişim kaydı oluşturma | Senaryo hazır; test edilmedi |
| TC-05 | Geri dönüş tarihi kaydetme | Senaryo hazır; test edilmedi |
| TC-06 | Planlanan takipleri görüntüleme | İş kuralları netleştirilmeli; test edilmedi |
| TC-07 | Müşteri sorumlusu atama | Senaryo hazır; test edilmedi |
| TC-08 | Müşteri sorumlusunu değiştirme | Senaryo hazır; test edilmedi |
| TC-09 | Müşteri önceliği belirleme | Öncelik seviyeleri netleştirilmeli; test edilmedi |
| TC-10 | İletişim geçmişini görüntüleme | Senaryo hazır; test edilmedi |
| TC-11 | Yedekleme ve geri yükleme | Prosedür netleştirilmeli; test edilmedi |

## 4. Analiz Notu

Test senaryoları, fonksiyonel gereksinimler ve kullanıcı hikâyeleri temel alınarak hazırlanmıştır. Gerçek test sonuçları elde edilmediği için senaryoların başarılı olduğu iddia edilmemektedir.

Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir çalışmadır.
