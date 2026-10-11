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

## Proje Hedefi

Müşteri takibinin merkezi ve daha düzenli bir yapı üzerinden yürütülmesini destekleyecek iş gereksinimlerini belirlemek, mevcut süreçle önerilen süreci karşılaştırmak ve gereksinimlerin nasıl doğrulanabileceğini planlamak.

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

## Öğrendiklerim

Bu proje sayesinde bir iş problemini yalnızca tanımlamak yerine mevcut süreci incelemeyi, ihtiyaçları gereksinimlere dönüştürmeyi ve gereksinimlerle test senaryoları arasındaki bağlantıyı kurmayı uygulamalı olarak çalıştım.
