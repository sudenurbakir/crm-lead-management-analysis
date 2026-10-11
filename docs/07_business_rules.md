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
