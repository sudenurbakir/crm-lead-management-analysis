# İş Kuralları (Business Rules)

## 1. Amaç

Bu dosyada, CRM Lead Management Analysis projesinde müşteri takibinin nasıl yürütülmesi gerektiğine ilişkin iş kurallarını belirledim.

Kuralları oluştururken mevcut süreçte karşılaşılan sorunları dikkate aldım. Henüz iş birimi tarafından doğrulanmamış kararları kesinleşmiş kurallar yerine öneri olarak belirttim.

## 2. İş Kuralları

### BRL-01 — Merkezi Müşteri Kaydı

Her müşteri için sistemde merkezi bir müşteri kaydı bulunması hedeflenir.

**Durum:** Önerilen kural.

### BRL-02 — Müşteri Sorumluluğu

Müşteri takibinde sorumluluğun belirsiz kalmaması için her aktif müşteri kaydına bir sorumlu satış temsilcisi atanması önerilir.

**Durum:** İş birimiyle doğrulanmalı.

### BRL-03 — Geri Dönüş Tarihi

Müşteriyle yeniden iletişim kurulması gerekiyorsa bir sonraki geri dönüş tarihinin kaydedilmesi önerilir.

**Durum:** İş birimiyle doğrulanmalı.

### BRL-04 — İletişim Geçmişi

Müşteriyle gerçekleştirilen iletişimlerin ilgili müşteri kaydıyla ilişkilendirilmesi hedeflenir.

**Durum:** Önerilen kural.

### BRL-05 — Müşteri Önceliği

Müşteri önceliğinin belirlenmesinde satın almaya hazır olma durumu ve talebin aciliyeti gibi ölçütlerin dikkate alınması önerilir.

**Durum:** Öncelik seviyeleri ve değerlendirme ölçütleri netleştirilmeli.

### BRL-06 — Geciken Takipler

Planlanan geri dönüş tarihi geçmiş ve tamamlanmamış takiplerin gecikmiş olarak ayırt edilmesi önerilir.

**Durum:** Gecikme tanımı iş birimiyle doğrulanmalı.

### BRL-07 — Veri Güvenliği ve Yedekleme

Müşteri kayıtlarının ve iletişim geçmişinin kaybolma riskini azaltmak için uygun yedekleme ve veri kurtarma süreçleri belirlenmelidir.

**Durum:** Teknik ekip ve iş birimiyle netleştirilmeli.

## 8. Kullanıcı Rolleri ve Yetkilendirme Kuralları

### BRL-08 — Müşteri Adayı Görüntüleme ve Düzenleme

Satış temsilcileri tüm müşteri adaylarını görüntüleyebilir ancak yalnızca sorumlusu oldukları kayıtların müşteri bilgilerini düzenleyebilir.

Satış yöneticileri tüm müşteri adaylarını görüntüleyebilir ve düzenleyebilir.

### BRL-09 — İletişim Kaydı Oluşturma

Satış temsilcileri ve satış yöneticileri, görüntüleme yetkisine sahip oldukları müşteri adaylarına iletişim kaydı ekleyebilir.

İletişim kaydını oluşturan kullanıcı bilgisi sistem tarafından kaydedilmelidir. Kaydı oluşturan kullanıcı ile müşteri adayının sorumlusu farklı kişiler olabilir.

### BRL-10 — İletişim Kaydını Düzenleme

İletişim kaydını yalnızca kaydı oluşturan kullanıcı veya satış yöneticisi düzenleyebilir.

Düzenleme işlemleri, belirlenen denetim kuralları kapsamında izlenebilir olmalıdır.

### BRL-11 — İletişim Kaydının İptal Edilmesi

İletişim kayıtları normal kullanıcı işlemiyle kalıcı olarak silinmemelidir.

Kaydı oluşturan kullanıcı veya satış yöneticisi, iptal gerekçesi belirterek kaydı iptal edebilir. İptal edilen kayıt, geçerli iletişim geçmişinden ayırt edilebilmeli ve işlem geçmişi korunmalıdır.

### BRL-12 — Sorumlu Çalışan Atama ve Değiştirme

Müşteri adayına sorumlu çalışan atama veya mevcut sorumluyu değiştirme yetkisi yalnızca satış yöneticisine aittir.

Atanan çalışan geçerli ve aktif bir kullanıcı olmalıdır.

### BRL-13 — Sorumluluk Değişikliklerinin İzlenmesi

Her sorumluluk değişikliğinde önceki sorumlu, yeni sorumlu, işlemi yapan kullanıcı ve işlem tarihi/saat bilgisi kaydedilmelidir.

### BRL-14 — Rol ve Yetkileri Görüntüleme

Satış yöneticileri tanımlı rolleri, yetkileri ve kullanıcıların hangi rollere sahip olduğunu görüntüleyebilir.

Görüntüleme yetkisi, rol veya yetki tanımlarını değiştirme hakkı vermez.

### BRL-15 — Rol ve Yetkileri Yönetme

Rol ve yetki tanımlarını oluşturma ve değiştirme yetkisi yalnızca sistem yöneticisine aittir.

Bu işlemler izlenebilir olmalıdır.

### BRL-16 — Yetki Sorunlarının Bildirilmesi

Satış yöneticisi, tespit ettiği yetki sorunlarını sistem yöneticisine iletebilir. Yetki tanımlarını kendisi değiştiremez.

### BRL-17 — Sunucu Tarafında Yetki Kontrolü

Kullanıcı yetkileri yalnızca arayüzdeki butonların gösterilmesi veya gizlenmesiyle kontrol edilmemelidir.

Sistem, işlem gerçekleştirilmeden önce sunucu tarafında kullanıcının kimliğini, rolünü ve ilgili kayıt üzerindeki yetkisini kontrol etmelidir. Yetkisiz işlemler reddedilmelidir.

### BRL-18 — Değişiklik Geçmişinin Korunması

Kritik değişiklikler, belirlenen denetim kuralları kapsamında izlenebilir olmalıdır. Normal kullanıcı işlemleri, önceki değişiklik geçmişini sessizce değiştirememeli veya silememelidir.

### Açık Konular

- Sistem yöneticisinin müşteri verilerine erişim kapsamı belirlenmelidir.
- İptal edilen iletişim kayıtlarının saklama süresi ve yeniden etkinleştirme koşulları belirlenmelidir.
- Sorumlu çalışan değiştiğinde açık takip görevlerinin nasıl aktarılacağı kararlaştırılmalıdır.
- Yetki sorunlarının bildirim ve çözüm süreci netleştirilmelidir.

**Not:** Bu kurallar kurgusal CRM projesi için hazırlanan taslaklardır. Gerçek bir işletmede doğrulanmaları ve teknik uygulamadan önce ilgili paydaşlarla değerlendirilmesi gerekir.

## 3. Netleştirilmesi Gereken Konular

- Bir müşteri kaydı oluşturulurken hangi alanlar zorunlu olmalı?
- Aynı müşteri için birden fazla kayıt oluşturulması nasıl önlenmeli?
- Geri dönüş tarihi hangi durumlarda zorunlu olmalı?
- Müşteri önceliği hangi seviyelerden oluşmalı?
- Geciken takipler nasıl belirlenmeli?
- Müşteri sorumlusu hangi koşullarda değiştirilebilmeli?
- Veriler ne sıklıkta yedeklenmeli ve ne kadar süre saklanmalı?

## 4. Analiz Notu

Bu kurallar, mevcut bilgilerden hareketle hazırlanan ilk taslaktır. İş birimiyle görüşülmeden kesinleşmiş iş kuralları olarak değerlendirilmemelidir.

Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir çalışmadır.
