# Kullanıcı Rolleri ve Yetkilendirme Analizi

## 1. Amaç

Bu dokümanda, kurgusal CRM sistemindeki kullanıcı rollerini, kullanıcıların hangi işlemleri gerçekleştirebileceğini ve yetki değişikliklerinin nasıl yönetileceğini belirledim.

Amacım, kullanıcıların görevlerini yerine getirebilmesini sağlarken yetkisiz işlemleri önlemek ve yapılan değişikliklerin izlenebilir olmasını sağlamak.

**Not:** Bu proje eğitim ve portföy amacıyla hazırlanmış kurgusal bir iş analizi çalışmasıdır. Belirlenen kurallar gerçek bir işletmeyle doğrulanmamıştır.

## 2. Kullanıcı Rolleri

### 2.1. Satış Temsilcisi

Müşteri adaylarıyla iletişim kuran, görüşmeleri kaydeden ve takip süreçlerini yürüten kullanıcıdır.

### 2.2. Satış Yöneticisi

Satış ekibinin çalışmalarını takip eden, müşteri adaylarının sorumlularını belirleyen ve satış sürecinin düzenli ilerlemesini sağlayan kullanıcıdır.

### 2.3. Sistem Yöneticisi

Kullanıcı hesaplarını, sistem rollerini ve yetki tanımlarını yöneten kullanıcıdır. Teknik sistem ayarlarıyla ilgili sorumlulukları bulunur.

## 3. Yetki Matrisi

| İşlem | Satış Temsilcisi | Satış Yöneticisi | Sistem Yöneticisi |
|---|---|---|---|
| Tüm müşteri adaylarını görüntüleme | Evet | Evet | Belirlenecek |
| Müşteri bilgilerini görüntüleme | Evet | Evet | Belirlenecek |
| Müşteri bilgilerini düzenleme | Yalnızca sorumlu olduğu kayıtlar | Tüm kayıtlar | Belirlenecek |
| İletişim kaydı ekleme | Evet | Evet | Belirlenecek |
| İletişim geçmişini görüntüleme | Evet | Evet | Belirlenecek |
| Kendi oluşturduğu iletişim kaydını düzenleme | Evet | Evet | Belirlenecek |
| Başka kullanıcının iletişim kaydını düzenleme | Hayır | Evet | Belirlenecek |
| İletişim kaydını iptal etme | Yalnızca kendi kaydı | Evet | Belirlenecek |
| Müşteri adayına sorumlu atama/değiştirme | Hayır | Evet | Belirlenecek |
| Rol ve yetki tanımlarını görüntüleme | Hayır | Evet | Evet |
| Kullanıcıların rollerini görüntüleme | Hayır | Evet | Evet |
| Rol ve yetki tanımlarını değiştirme | Hayır | Hayır | Evet |
| Kullanıcılara rol atama/değiştirme | Hayır | Hayır | Evet |
| Yetki sorununu bildirme | İhtiyaç halinde yöneticisine iletir | Sistem yöneticisine iletir | İnceler ve gerekli işlemi yapar |

**Not:** Sistem yöneticisinin müşteri verilerine erişimi henüz kararlaştırılmamıştır. Teknik yönetim yetkisi, otomatik olarak tüm müşteri verilerine erişim hakkı anlamına gelmemelidir.

## 4. Yetkilendirme Kuralları

### AUTH-01 — Müşteri Adaylarına Erişim

Satış temsilcileri tüm müşteri adaylarını görüntüleyebilir ancak yalnızca sorumlusu oldukları kayıtların müşteri bilgilerini düzenleyebilir.

Satış yöneticileri tüm müşteri adaylarını görüntüleyebilir ve müşteri bilgilerini düzenleyebilir.

### AUTH-02 — İletişim Kaydı Oluşturma

Satış temsilcileri ve satış yöneticileri, görüntüleme yetkisine sahip oldukları müşteri adaylarına yeni iletişim kayıtları ekleyebilir.

İletişim kaydını oluşturan kullanıcı sistem tarafından kaydedilmelidir. Kaydı oluşturan kullanıcı ile müşteri adayının sorumlu çalışanı farklı kişiler olabilir.

### AUTH-03 — İletişim Kaydını Düzenleme

Bir iletişim kaydını yalnızca kaydı oluşturan kullanıcı veya satış yöneticisi düzenleyebilir.

Düzenleme işlemleri izlenebilir olmalı ve önceki kayıt bilgileri sessizce kaybolmamalıdır.

### AUTH-04 — Değişiklik Geçmişinin Tutulması

Kritik değişikliklerde işlemi yapan kullanıcı, tarih/saat, değiştirilen alan ve mümkün olduğunda önceki ve yeni değerler kaydedilmelidir.

Denetim kayıtlarının normal kullanıcı işlemleriyle değiştirilmesi veya silinmesi engellenmelidir.

### AUTH-05 — İletişim Kaydının İptal Edilmesi

İletişim kayıtları normal kullanıcı işlemiyle kalıcı olarak silinmemelidir.

Kaydı oluşturan kullanıcı veya satış yöneticisi, hatalı bir kaydı gerekçe belirterek iptal edebilir. İptal edilen kayıt, geçerli iletişim geçmişinden ayırt edilebilmeli ve işlem geçmişi korunmalıdır.

İptal edilen kayıtların yeniden etkinleştirilmesi, saklama süresi ve kişisel verilerin silinmesi talepleri ayrıca değerlendirilmelidir.

### AUTH-06 — Sorumlu Çalışan Atama ve Değiştirme

Müşteri adayının sorumlu çalışanını yalnızca satış yöneticisi atayabilir veya değiştirebilir.

Atanan çalışanın geçerli ve aktif bir kullanıcı olması kontrol edilmelidir.

### AUTH-07 — Sorumluluk Değişikliklerinin İzlenmesi

Her sorumluluk değişikliğinde önceki sorumlu, yeni sorumlu, işlemi yapan kullanıcı ve işlem tarihi/saat bilgisi kaydedilmelidir.

Sorumlu çalışan değiştiğinde açık takip görevlerinin nasıl aktarılacağı ayrıca belirlenmelidir.

### AUTH-08 — Rol ve Yetki Tanımlarının Görüntülenmesi

Satış yöneticileri sistemde tanımlı rolleri, yetkileri ve kullanıcıların hangi rollere sahip olduğunu görüntüleyebilir.

Bu yetki, rol veya yetki tanımlarını değiştirme hakkı vermez.

### AUTH-09 — Rol ve Yetki Yönetimi

Sistem yöneticisi kullanıcı hesaplarını, rol tanımlarını ve kullanıcıların rol atamalarını yönetebilir.

Bu işlemler de izlenebilir olmalıdır. Yetki tanımını değiştiren kullanıcı ve değişiklik zamanı kayıt altına alınmalıdır.

### AUTH-10 — Yetki Sorunlarının Bildirilmesi

Satış yöneticisi hatalı veya uygunsuz bir yetki tanımı fark ettiğinde sorunu sistem yöneticisine iletebilir.

Yetki değişikliğini yalnızca sistem yöneticisi gerçekleştirebilir. Bildirimin nasıl kaydedileceği ve çözüm durumunun nasıl takip edileceği ayrıca belirlenmelidir.

## 5. Örnek Senaryolar

### Senaryo 1 — Başka Bir Temsilcinin Müşteri Kaydı

Satış temsilcisi A, satış temsilcisi B'nin sorumlu olduğu müşteri adayını görüntülemek ister.

- Beklenen sonuç: Kayıt görüntülenebilir.
- Beklenen sonuç: Temsilci A, müşteri bilgilerini doğrudan düzenleyemez.

### Senaryo 2 — İletişim Kaydı Ekleme

Satış temsilcisi A, başka bir temsilcinin sorumlu olduğu müşteriyle yaptığı görüşmeyi kaydetmek ister.

- Beklenen sonuç: Temsilci A yeni iletişim kaydı oluşturabilir.
- Beklenen sonuç: Kaydı oluşturan kullanıcı A olarak kaydedilir.
- Beklenen sonuç: Müşteri adayının sorumlu çalışanı otomatik olarak değişmez.

### Senaryo 3 — İletişim Kaydını İptal Etme

Satış temsilcisi A, başka bir temsilcinin oluşturduğu hatalı bir iletişim kaydını iptal etmek ister.

- Beklenen sonuç: İşlem engellenir.
- Beklenen sonuç: Satış yöneticisi yetkisi kapsamında bu kaydı gerekçe belirterek iptal edebilir.
- Beklenen sonuç: İptal işlemi geçmişte izlenebilir.

### Senaryo 4 — Sorumlu Çalışanın Değiştirilmesi

Satış yöneticisi bir müşteri adayının sorumluluğunu çalışan A'dan çalışan B'ye aktarır.

- Beklenen sonuç: Yeni sorumlu çalışan B olur.
- Beklenen sonuç: Önceki sorumluluk bilgisi silinmez.
- Beklenen sonuç: Değişikliği yapan kullanıcı ve işlem zamanı kaydedilir.

### Senaryo 5 — Yetki Hatasının Bildirilmesi

Satış yöneticisi, bir kullanıcının görevi için gereğinden fazla yetkiye sahip olduğunu fark eder.

- Beklenen sonuç: Satış yöneticisi sorunu sistem yöneticisine iletir.
- Beklenen sonuç: Satış yöneticisi yetki tanımını kendisi değiştiremez.
- Beklenen sonuç: Yetki değişikliği yapıldığında işlem geçmişi korunur.

## 6. Açık Sorular

Gerçek bir işletmede bu kurallar uygulanmadan önce aşağıdaki konuların doğrulanması gerekir:

- Sistem yöneticisinin müşteri verilerine erişim kapsamı ne olmalıdır?
- İletişim kayıtlarında hassas veya kişisel bilgiler nasıl korunmalıdır?
- İptal edilen kayıtların saklama süresi ne olmalıdır?
- İptal edilmiş bir iletişim kaydı yeniden etkinleştirilebilir mi?
- Sorumlu çalışan değiştiğinde açık takip görevleri otomatik aktarılmalı mı?
- Yetki hataları için ayrı bir bildirim ve takip mekanizması gerekli midir?
- Kullanıcı hesabı pasif hale getirildiğinde sorumluluğundaki müşteri adayları ne olacaktır?

## 7. Sonraki Adımlar

Bu dokümandaki kararları projenin diğer analiz belgeleriyle ilişkilendirmeyi planlıyorum:

1. Fonksiyonel gereksinimlere rol bazlı erişim ve yetki kontrollerini eklemek.
2. Kabul kriterlerini yetkilendirme kurallarına göre güncellemek.
3. İş kurallarına iletişim kaydı iptali ve değişiklik geçmişi kurallarını eklemek.
4. Test senaryolarına yetkisiz erişim, düzenleme, atama ve iptal kontrollerini eklemek.
5. Gereksinim İzlenebilirlik Matrisi'nde bu gereksinimleri ilgili test senaryolarıyla eşleştirmek.

Bu doküman, taslak yetkilendirme kararlarını bir araya getirir. Gerçek bir sistemde güvenlik kontrollerinin yalnızca ekranda buton gizlemekle sınırlı kalmaması, sunucu tarafında da uygulanması gerekir.

## 8. Yetkilendirme Kontrollerinin Uygulanması

Belirlenen kullanıcı yetkilerinin yalnızca arayüzdeki butonların gösterilmesi veya gizlenmesiyle sınırlandırılmaması gerektiğini değerlendiriyorum.

Yetki kontrolleri, işlemin gerçekleştirildiği sunucu tarafında da uygulanmalıdır.

### Beklenen kontroller

- Kullanıcının kimliği doğrulanmalıdır.
- Kullanıcının rolü ve ilgili kayıt üzerindeki yetkisi kontrol edilmelidir.
- Müşteri kaydını düzenleme işleminde kayıt sahipliği kontrol edilmelidir.
- Kullanıcının değiştirmesine izin verilmeyen alanlar sunucu tarafından reddedilmelidir.
- Yetkisiz işlemler gerçekleştirilmemeli ve uygun bir hata yanıtı verilmelidir.
- Kritik değişiklikler, belirlenen denetim kuralları kapsamında izlenebilir olmalıdır.

**Örnek:** Bir satış temsilcisi başka bir temsilciye ait müşteri adayını değiştirmek için doğrudan bir istek gönderse bile sunucu, kayıt üzerindeki düzenleme yetkisi bulunmadığı için işlemi reddetmelidir.

**Not:** Bu bölüm, kurgusal CRM projesi için belirlenen analiz ve güvenlik beklentilerini açıklar. Gerçek bir uygulamanın geliştirildiği veya bu kontrollerin test edildiği anlamına gelmez.
