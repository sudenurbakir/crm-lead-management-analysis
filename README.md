# CRM Lead Management Analysis

## Proje Hakkında

Bu projede, müşteri takibinin Excel dosyaları ve kişisel hatırlatmalar üzerinden yürütüldüğü kurgusal bir şirket senaryosunu ele aldım.

Senaryoda müşteriyle yapılan görüşmelerin farklı yerlerde tutulması, geri dönüş tarihlerinin her zaman kaydedilmemesi ve takip sorumluluklarının net olmaması gibi sorunları inceledim.

Amacım, mevcut süreci analiz ederek müşteri takibinin daha düzenli yürütülmesini destekleyecek gereksinimleri ve süreç iyileştirme önerilerini ortaya koymak.

**Not:** Bu proje, iş analizi öğrenme amacıyla hazırlanmış kurgusal bir portföy çalışmasıdır. Gerçek bir şirkete veya gerçek müşteri verilerine dayanmamaktadır.

## Ele Alınan Problem

Kurgusal senaryoda satış ekibi, müşteri bilgilerini ve iletişim geçmişini Excel dosyalarında takip etmektedir.

Bu durum bazı riskler oluşturmaktadır:

- Müşteriye geri dönüşlerin gecikmesi veya unutulması.
- İletişim geçmişine ulaşmanın zorlaşması.
- Müşteri takibinden kimin sorumlu olduğunun belirsizleşmesi.
- Müşteri önceliklerinin ortak kurallarla belirlenememesi.
- Dosyanın kaybolması durumunda müşteri bilgilerinin ve takip geçmişinin zarar görmesi.

## Paydaşlar

| Paydaş | Rolü | Süreçle ilişkisi |
| --- | --- | --- |
| Satış temsilcisi | Lead ve müşterilerle iletişimi yürütür | Görüşme kaydı girer, geri dönüşlerini takip eder |
| Satış müdürü | Ekibin takibini ve önceliklendirmesini izler | Takip durumunu ve geciken işleri görür |
| Yönetim | Satış performansını değerlendirir | Raporlara ve özet bilgiye ihtiyaç duyar |

## Kapsam

**Kapsam içinde:**
- Müşteri ve lead bilgilerinin merkezi olarak tutulması
- İletişim geçmişinin kaydedilmesi
- Geri dönüş tarihlerinin ve sorumlunun belirlenmesi
- Önceliklendirme kurallarının tanımlanması

**Kapsam dışında:**
- Çalışan bir CRM uygulamasının geliştirilmesi
- Fatura, ödeme ve sözleşme yönetimi
- Pazarlama otomasyonu ve e-posta kampanyaları

## Proje Hedefi

Müşteri takibinin merkezi ve daha düzenli bir yapı üzerinden yürütülmesini destekleyecek iş gereksinimlerini belirlemek, mevcut süreçle önerilen süreci karşılaştırmak ve gereksinimlerin nasıl doğrulanabileceğini planlamak.

## Başarı Ölçütleri (Önerilen)

Önerilen sürecin başarısı aşağıdaki gibi ölçülebilir:

| Ölçüt | Mevcut durum | Hedef |
| --- | --- | --- |
| Zamanında yapılan geri dönüş oranı | Ölçülmüyor | Belirlenecek eşik (ör. %90) |
| Sorumlusu atanmış kayıt oranı | Ölçülmüyor | %100 |
| Müşteri geçmişine erişim süresi | Dosyalar arasında arama gerekiyor | Tek ekrandan erişim |

*Not: Hedef değerler örnektir; gerçek bir projede paydaşlarla birlikte belirlenmesi gerekir.*

## Çalışma Kapsamı

Bu projede aşağıdaki iş analizi çalışmalarını gerçekleştirdim:

- Mevcut problemin ve iş ihtiyaçlarının belirlenmesi.
- Mevcut sürecin incelenmesi.
- Mevcut durum ile hedef durum arasındaki farkların değerlendirilmesi.
- İş gereksinimlerinin ve fonksiyonel gereksinimlerin hazırlanması.
- Kullanıcı hikâyelerinin yazılması.
- Kabul kriterlerinin belirlenmesi.
- İş kurallarının taslak olarak oluşturulması.
- Test senaryolarının hazırlanması.
- Gereksinimler arasındaki bağlantıların izlenebilirlik matrisiyle gösterilmesi.

## Klasör Yapısı

```text
crm-lead-management-analysis/
├── README.md
├── docs/
│   ├── 01_problem_analysis.md
│   ├── 02_gap_analysis.md
│   ├── 03_business_requirements.md
│   ├── 04_functional_requirements.md
│   ├── 05_user_stories.md
│   ├── 06_acceptance_criteria.md
│   ├── 07_business_rules.md
│   ├── 08_test_scenarios.md
│   └── 09_requirements_traceability_matrix.md
└── diagrams/
    ├── current_process_flow.md
    └── target_process_flow.md
```

## Süreç Diyagramları

- [Mevcut Süreç Akışı](diagrams/current_process_flow.md)
- [Önerilen Süreç Akışı](diagrams/target_process_flow.md)

## Dokümantasyon

| Dosya | İçerik |
|---|---|
| [Problem Analizi](docs/01_problem_analysis.md) | Problemin, mevcut durumun ve iş hedefinin açıklanması |
| [Gap Analizi](docs/02_gap_analysis.md) | Mevcut durum ile hedef durum arasındaki farklar |
| [İş Gereksinimleri](docs/03_business_requirements.md) | İşletmenin karşılanması beklenen ihtiyaçları |
| [Fonksiyonel Gereksinimler](docs/04_functional_requirements.md) | Sistemin sağlaması beklenen işlevler |
| [Kullanıcı Hikayeleri](docs/05_user_stories.md) | İhtiyaçların kullanıcı bakış açısıyla ifade edilmesi |
| [Kabul Kriterleri](docs/06_acceptance_criteria.md) | Kullanıcı hikayelerinin karşılanma koşulları |
| [İş Kuralları](docs/07_business_rules.md) | Sürecin yürütülmesine ilişkin önerilen kurallar |
| [Test Senaryoları](docs/08_test_scenarios.md) | Gereksinimlerin nasıl kontrol edilebileceğini gösteren senaryolar |
| [Gereksinim İzlenebilirlik Matrisi](docs/09_requirements_traceability_matrix.md) | İş gereksinimlerinden test senaryolarına uzanan bağlantılar |

## Kullanılan Yaklaşım

Çalışma boyunca önce problemi ve mevcut süreci anlamaya, ardından gereksinimleri belirlemeye odaklandım. Çözümü doğrudan varsaymak yerine mevcut durum, hedef durum ve netleştirilmesi gereken konuları birbirinden ayırmaya çalıştım.

Dokümanları hazırlarken iş gereksinimleri, fonksiyonel gereksinimler, kullanıcı hikayeleri, kabul kriterleri ve test senaryoları arasındaki bağlantıları korumaya dikkat ettim.

## Projenin Durumu

Bu çalışma, iş analizi dokümantasyonu ve süreç modelleme odaklı bir portföy projesidir.

- Analiz dokümanları ve süreç diyagramları hazırlanmıştır.
- İş kurallarının bir kısmı hala doğrulanması gereken taslaklardır.
- Test senaryoları hazırlanmış, ancak gerçek bir uygulama üzerinde çalıştırılmamıştır.
- Proje kapsamında çalışan bir CRM uygulaması geliştirilmemiştir.

## Açık Sorular ve Varsayımlar

Bu kurgusal senaryoda aşağıdaki konular netleştirilmemiştir:

| # | Soru / Varsayım | Kimle netleştirilmeli | Etkilediği doküman |
| --- | --- | --- | --- |
| 1 | Lead önceliği hangi kriterlere göre belirlenir? | Satış müdürü | 07_business_rules.md |
| 2 | Geri dönüş için kabul edilen azami süre nedir? | Satış müdürü | 07_business_rules.md |
| 3 | Mevcut Excel verileri yeni yapıya nasıl aktarılacak? | Satış ekibi / BT | 04_functional_requirements.md |
| 4 | Kayıtlara kimler erişebilir, kimler düzenleyebilir? | Yönetim / BT | 04_functional_requirements.md |

## Öğrendiklerim

Bu proje sayesinde bir iş problemini yalnızca tanımlamak yerine mevcut süreci incelemeyi, ihtiyaçları gereksinimlere dönüştürmeyi ve gereksinimlerle test senaryoları arasındaki bağlantıyı kurmayı uygulamalı olarak çalıştım.

> **Özet:** Satış ekibinin müşteri ve lead takibini Excel ve kişisel hatırlatmalarla yürüttüğü kurgusal bir senaryoyu analiz ettim; mevcut süreci, hedef süreci ve aradaki farkı gereksinimlere, kullanıcı hikayelerine ve test senaryolarına dönüştürdüm.

**Kullanılan araçlar:** Markdown, Mermaid (süreç diyagramları), GitHub
