# MVP Kapsamı

## 1. Amaç

Bu belge, CRM Lead Management Analysis projesinin ilk sürümünde yer alacak temel özellikleri ve sonraki geliştirme aşamalarına bırakılan işlevleri tanımlamak için hazırlanmıştır.

Projenin amacı, satış ekibinin Excel üzerinden yürüttüğü müşteri adayı takip sürecini daha merkezi, düzenli ve izlenebilir bir yapıya dönüştürmektir.

## 2. MVP Kapsamındaki Özellikler

| ID | Özellik | Açıklama |
|---|---|---|
| F1 | Müşteri adayı oluşturma | Yeni müşteri adayı kaydının oluşturulması |
| F2 | Listeleme, arama ve güncelleme | Kayıtların görüntülenmesi, bulunması ve bilgilerinin güncellenmesi |
| F3 | Sorumlu çalışan atama | Müşteri adayının takibinden sorumlu çalışanın belirlenmesi |
| F4 | İletişim geçmişi | Müşteri adayıyla yapılan iletişimlerin kayıt altına alınması |
| F5 | Takip tarihi ve geciken işler | Sonraki takip tarihinin belirlenmesi ve geciken takiplerin görüntülenmesi |
| F6 | Öncelik belirleme | Müşteri adaylarına öncelik seviyesi atanması |
| F7 | Rol bazlı yetkilendirme | Kullanıcı rolüne göre görüntüleme, düzenleme ve atama yetkisi (bkz. 11_user_roles_and_permissions.md) |
| F8 | Değişiklik geçmişi | Sorumlu değişikliği, iletişim kaydı düzenleme ve iptal gibi kritik işlemlerin kayıt altına alınması |

## 3. Kapsam Dışı Bırakılan Özellikler

Aşağıdaki özellikler ilk sürümde yer almayacak, sonraki geliştirme aşamalarında değerlendirilecektir.

- Otomatik e-posta gönderimi
- E-posta veya uygulama üzerinden otomatik hatırlatma bildirimleri
- Gelişmiş raporlama ve performans göstergeleri
- Web sitesi iletişim formuyla otomatik veri aktarımı
- ERP ve diğer iş sistemleriyle entegrasyonlar

Geciken takiplerin sistemde görüntülenmesi MVP kapsamındadır. Bu takipler için otomatik bildirim gönderilmesi ise sonraki aşamaya bırakılmıştır.

## 4. Mevcut Dokümantasyonla İlişki

MVP kapsamındaki özellikler, mevcut analiz belgeleriyle ilişkilendirilmiştir.

- İş gereksinimleri: `03_business_requirements.md`
- Fonksiyonel gereksinimler: `04_functional_requirements.md`
- Kullanıcı hikâyeleri: `05_user_stories.md`
- Kabul kriterleri: `06_acceptance_criteria.md`
- İş kuralları: `07_business_rules.md`
- Test senaryoları: `08_test_scenarios.md`
- Gereksinim izlenebilirlik matrisi: `09_requirements_traceability_matrix.md`
- Kullanıcı rolleri ve yetkilendirme: `11_user_roles_and_permissions.md`

Bu belgeler, MVP kapsamındaki özelliklerin gereksinimlerden test senaryolarına kadar izlenebilmesini sağlayacaktır.

## 5. Henüz Netleştirilmemiş Konular

- Müşteri adayı oluşturulurken zorunlu olacak alanlar
- Aynı müşteri adayının birden fazla kez kaydedilmesinin nasıl önleneceği
- Öncelik seviyelerinin hangi kriterlere göre belirleneceği
- Geciken takiplerin hangi koşullarda gecikmiş sayılacağı
- Çalışanların kayıtları görüntüleme ve değiştirme yetkileri: taslak olarak `11_user_roles_and_permissions.md` içinde tanımlanmıştır; iş birimiyle doğrulanması gerekir.
Bu konular, ilgili gereksinimler ve iş kuralları üzerinde çalışılırken netleştirilecektir.

## 6. Varsayımlar ve Sınırlamalar

Bu çalışma, kurgusal bir şirket için hazırlanan iş analizi portföyü projesidir. Gerçek bir CRM uygulaması geliştirilmiş veya test edilmiş değildir.

MVP kapsamı, mevcut senaryoya göre hazırlanmış bir başlangıç kararıdır. İş birimiyle doğrulama yapılması gereken noktalar ayrıca ele alınacaktır.

## 7. Sonraki Adımlar

1. Kullanıcı rollerini ve yetkilerini netleştirmek.
2. Müşteri adayı ve iletişim kayıtlarının veri modelini oluşturmak.
3. Temel ekranların gereksinimlerini belirlemek ve tasarımlarını hazırlamak.
4. Kabul kriterleri ve test senaryolarını yeni kararlarla uyumlu hâle getirmek.
5. Sonraki geliştirme aşamalarında otomatik e-posta, hatırlatmalar, raporlar ve sistem entegrasyonlarını ele almak.
