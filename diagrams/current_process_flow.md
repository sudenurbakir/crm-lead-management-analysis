# Mevcut Müşteri Takip Süreci

## 1. Amaç

Bu diyagram, kurgusal şirketin potansiyel müşterilerle iletişim kurma ve görüşme sonrasında takip sürecini mevcut haliyle göstermektedir.

## 2. Mevcut Süreç Akışı

```mermaid
flowchart TD
    A([Müşteri şirkete ulaşır]) --> B[Satış temsilcisi müşteriyle iletişim kurar]
    B --> C[Telefon veya e-posta görüşmesi yapılır]
    C --> D[Görüşme bilgileri Excel dosyasına kaydedilir]
    D --> E{Sonraki geri dönüş gerekli mi?}
    E -- Hayır --> F([Mevcut takip sonlandırılır])
    E -- Evet --> G[Satış temsilcisi geri dönüşü planlar]
    G --> H{Geri dönüş hatırlanıyor mu?}
    H -- Evet --> I[Müşteriyle yeniden iletişim kurulur]
    H -- Hayır --> J[Geri dönüş gecikir veya unutulur]
    I --> K{Yeni bir takip gerekli mi?}
    K -- Evet --> G
    K -- Hayır --> L([Takip sonlandırılır])
```

## 3. Diyagram Hakkında

Bu akışta müşteri bilgileri ve görüşme sonuçları Excel dosyalarına kaydedilmektedir. Sonraki geri dönüşün planlanması ve hatırlanması ise standart bir yöntemle yürütülmemektedir.

Bu nedenle geri dönüşün gecikmesi veya unutulması olası sonuçlardan biridir.

## 4. Analiz Notu

Diyagram, satış yöneticisiyle yapılan kurgusal görüşmede edinilen bilgilere göre hazırlanmıştır. Sürecin bazı ayrıntıları henüz doğrulanmadığından diyagram ilk taslak niteliğindedir.

Bir sonraki aşamada mevcut süreçteki sorunları ve iyileştirme fırsatlarını değerlendireceğim.
