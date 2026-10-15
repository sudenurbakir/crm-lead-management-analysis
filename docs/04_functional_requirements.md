# Fonksiyonel Gereksinimler

## 1. Amaç

Bu doküman, CRM sisteminin müşteri takip sürecini desteklemek için sunması gereken temel işlevleri tanımlar.

Gereksinimler, `03_business_requirements.md` dosyasında tanımlanan iş ihtiyaçlarına dayanmaktadır.

## 2. Fonksiyonel Gereksinimler

### FR-01 — Müşteri Kaydı Oluşturma

Sistem, yetkili kullanıcının yeni bir müşteri kaydı oluşturmasına izin vermelidir.

- Müşteri adı ve iletişim bilgileri kaydedilebilmelidir.
- Zorunlu alanlar daha sonraki analiz aşamasında netleştirilmelidir.

**İlgili iş gereksinimi:** BR-01

### FR-02 — Müşteri Bilgilerini Görüntüleme ve Güncelleme

Sistem, yetkili kullanıcının mevcut müşteri bilgilerini görüntülemesine ve gerekli bilgileri güncellemesine izin vermelidir.

**İlgili iş gereksinimi:** BR-01

### FR-03 — Görüşme Kaydı Oluşturma

Sistem, müşteriyle yapılan görüşmenin tarihinin, iletişim kanalının ve görüşme sonucunun kaydedilmesine izin vermelidir.

**İlgili iş gereksinimi:** BR-05

### FR-04 — Geri Dönüş Tarihi Belirleme

Sistem, müşteri kaydı için bir sonraki geri dönüş tarihinin belirlenmesine izin vermelidir.

**İlgili iş gereksinimi:** BR-02

### FR-05 — Geri Dönüşleri Görüntüleme

Sistem, kullanıcıların planlanan geri dönüşleri tarih ve durum bilgilerine göre görüntüleyebilmesini sağlamalıdır.

**İlgili iş gereksinimi:** BR-02

### FR-06 — Sorumlu Kullanıcı Belirleme

Sistem, müşteri takibinden sorumlu kullanıcının belirlenmesine izin vermelidir.

**İlgili iş gereksinimi:** BR-03

### FR-07 — Sorumluluk Değişikliğini Kaydetme

Sistem, bir müşteri takibinin sorumlusu değiştirildiğinde yeni sorumlunun kaydedilmesine izin vermelidir.

Eski ve yeni sorumlunun geçmişinin izlenmesi gerekip gerekmediği ayrıca netleştirilmelidir.

**İlgili iş gereksinimi:** BR-03

### FR-08 — Müşteri Önceliği Belirleme

Sistem, müşteri veya satış fırsatı için belirlenen öncelik seviyesinin kaydedilmesine izin vermelidir.

Öncelik seviyeleri ve bunları belirleyen kurallar iş birimiyle birlikte netleştirilecektir.

**İlgili iş gereksinimi:** BR-04

### FR-09 — İletişim Geçmişini Görüntüleme

Sistem, yetkili kullanıcının müşteriyle ilgili geçmiş görüşme kayıtlarını görüntüleyebilmesini sağlamalıdır.

**İlgili iş gereksinimi:** BR-05

### FR-10 — Veri Yedekleme ve Kurtarma İhtiyacı

Sistem için müşteri takip verilerinin yedeklenmesi ve gerektiğinde kurtarılması desteklenmelidir.

Yedekleme sıklığı, saklama süresi ve kurtarma beklentileri teknik ekip ve ilgili paydaşlarla netleştirilecektir.

**İlgili iş gereksinimi:** BR-06

## 3. Açık Konular

- Müşteri kaydı için zorunlu alanlar belirlenmelidir.
- Aynı müşterinin tekrar kaydedilmesini önleyecek kurallar değerlendirilmelidir.
- Geri dönüş hatırlatmalarının nasıl çalışacağı belirlenmelidir.
- Geri dönüşlerin tamamlandı veya gecikti olarak nasıl işaretleneceği netleştirilmelidir.
- Kullanıcıların hangi kayıtları görüntüleyebileceği ve değiştirebileceği belirlenmelidir.
- Öncelik seviyeleri ve iş kuralları tanımlanmalıdır.
- Veri yedekleme ve kurtarma beklentileri teknik olarak değerlendirilmelidir.

## 4. Sonuç

Bu fonksiyonel gereksinimler, CRM sisteminin temel işlevleri için ilk taslağı oluşturmaktadır.

Gereksinimler henüz paydaşlar tarafından doğrulanmamıştır. Sonraki aşamada gereksinimlerin kabul kriterleri hazırlanacak ve iş gereksinimleriyle bağlantıları izlenebilir hale getirilecektir.

**Not:** Bu çalışma eğitim amaçlı kurgusal bir iş analizi projesidir.

## 5. Kullanıcı Rolleri ve Yetkilendirme Gereksinimleri

Bu gereksinimler, CRM sisteminde kullanıcıların hangi işlemleri gerçekleştirebileceğini belirlemek amacıyla hazırlanmıştır.

**FR-11 — Müşteri Adayı Görüntüleme Yetkisi**

Sistem, satış temsilcilerinin tüm müşteri adaylarını görüntülemesine izin vermelidir.

**FR-12 — Müşteri Bilgilerini Düzenleme Yetkisi**

Sistem, satış temsilcilerinin yalnızca sorumlusu oldukları müşteri adaylarının bilgilerini düzenlemesine izin vermelidir. Satış yöneticisi, tüm müşteri adaylarının bilgilerini düzenleyebilmelidir.

**FR-13 — İletişim Kaydı Ekleme Yetkisi**

Sistem, satış temsilcilerinin ve satış yöneticisinin görüntüleyebildikleri müşteri adaylarına yeni iletişim kayıtları eklemesine izin vermelidir.

**FR-14 — İletişim Kaydını Düzenleme Yetkisi**

Sistem, bir iletişim kaydının yalnızca kaydı oluşturan kullanıcı veya satış yöneticisi tarafından düzenlenmesine izin vermelidir.

**FR-15 — İletişim Kaydını İptal Etme Yetkisi**

Sistem, iletişim kaydının oluşturucusunun veya satış yöneticisinin gerekçe belirterek kaydı iptal etmesine izin vermelidir. İptal edilen kayıt, geçerli iletişim geçmişinden ayırt edilebilmelidir.

**FR-16 — Sorumlu Çalışan Atama Yetkisi**

Sistem, müşteri adayına sorumlu çalışan atama ve mevcut sorumluyu değiştirme işlemlerini yalnızca satış yöneticisinin gerçekleştirmesine izin vermelidir.

**FR-17 — Sorumluluk Değişikliklerinin Kaydedilmesi**

Sistem, sorumlu çalışan değişikliklerinde önceki sorumlu, yeni sorumlu, işlemi yapan kullanıcı ve işlem tarihi/saat bilgisini kaydetmelidir.

**FR-18 — Rol ve Yetkileri Görüntüleme**

Sistem, satış yöneticisinin tanımlı rolleri, yetkileri ve kullanıcıların hangi rollere sahip olduğunu görüntülemesine izin vermelidir.

**FR-19 — Rol ve Yetkileri Yönetme**

Sistem, rol ve yetki tanımlarının oluşturulması ve değiştirilmesi işlemlerini yalnızca sistem yöneticisinin gerçekleştirmesine izin vermelidir.

**FR-20 — Yetkisiz İşlemleri Engelleme**

Sistem, kullanıcıların yetkileri dışında gerçekleştirmeye çalıştıkları işlemleri sunucu tarafında kontrol etmeli ve yetkisiz işlemlerin uygulanmasını engellemelidir.

**FR-21 — Yetki Değişikliklerinin İzlenmesi**

Sistem, rol ve yetki tanımlarında yapılan değişikliklerin işlemi yapan kullanıcı ve işlem tarihi/saat bilgisiyle izlenebilmesini sağlamalıdır.

**FR-22 — Yetki Sorunlarının Bildirilmesi**

Sistem, satış yöneticisinin tespit ettiği yetki sorunlarını sistem yöneticisine iletebileceği bir süreç sağlamalıdır. Bildirim yöntemi ve çözüm takibi henüz netleştirilmemiştir.

### Açık Konular

- Sistem yöneticisinin müşteri verilerine erişim kapsamı belirlenecektir.
- İletişim kaydı iptalinin geri alınabilir olup olmayacağı belirlenecektir.
- Sorumlu çalışan değiştiğinde açık takip görevlerinin nasıl aktarılacağı belirlenecektir.
- Yetki sorunları için bildirim ve çözüm takip yöntemi netleştirilecektir.

**Not:** Bu gereksinimler kurgusal CRM projesi için hazırlanmış taslaklardır. Gerçek bir işletmeyle doğrulanmamış ve çalışan bir yazılım üzerinde test edilmemiştir.
