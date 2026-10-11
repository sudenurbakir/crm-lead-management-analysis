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
