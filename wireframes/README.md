# Ekran Tasarımları (Wireframe)

Bu klasör, MVP kapsamındaki temel ekranların düşük doğruluklu tel kafes tasarımlarını içerir. Ekranlar, giriş yapmış bir **satış temsilcisi** (Temsilci A) gözünden çizilmiştir. Yalnızca sorumlu atama ekranı **satış yöneticisi** (Yönetici A) gözünden gösterilmiştir.

Her ekrandaki kırmızı numaralar, aşağıdaki tablolarda ilgili MVP özelliğine ([10_mvp_scope.md](../docs/10_mvp_scope.md)) ve yetkilendirme kuralına ([11_user_roles_and_permissions.md](../docs/11_user_roles_and_permissions.md)) bağlanmıştır.

**Not:** Bu tasarımlar görsel tasarım değil, gereksinimlerin ekrana nasıl yansıyabileceğini gösteren taslaklardır. Ekranlardaki kişi, firma ve çalışan adları yapay etiketlerdir (Aday 001, Firma 001, Temsilci A, Yönetici A gibi) ve gerçek kişi veya kuruluşlarla ilgisi yoktur. Henüz karara bağlanmamış konular ekranda «taslak» veya «açık soru» notuyla belirtilmiştir.

## Ekran 1: Müşteri Adayı Listesi


| No | Öğe | MVP özelliği | İlgili kural |
| --- | --- | --- | --- |
| 1 | Yeni müşteri adayı butonu | F1 | |
| 2 | Arama ve filtreleme | F2 | |
| 3 | Öncelik sütunu | F6 | |
| 4 | Sorumlu sütunu | F3 | |
| 5 | Sonraki takip tarihi ve «Geciken» rozeti | F5 | |
| 6 | Sorumlu olunmayan kayıtlarda pasif «Düzenle» | F7 | AUTH-01 |

## Ekran 2: Müşteri Adayı Detayı ve İletişim Geçmişi


| No | Öğe | MVP özelliği | İlgili kural |
| --- | --- | --- | --- |
| 1 | Aday bilgileri | F2 | AUTH-01 |
| 2 | Sorumlu çalışan | F3 | |
| 3 | İletişim ekle (sorumlu olmayan kayıtta da aktif) | F4 | AUTH-02 |
| 4 | İletişim geçmişi, yalnızca kendi kaydında düzenle ve iptal | F4 | AUTH-03, AUTH-05 |
| 5 | İptal edilmiş kayıt: ayırt edilebilir, gerekçe ve iptal eden görünür | F4, F8 | AUTH-05 |
| 6 | Öncelik | F6 | |
| 7 | Sonraki takip tarihi ve gecikme bilgisi | F5 | |
| 8 | Sorumluyu değiştir: temsilci için pasif | F3, F7 | AUTH-06 |
| 9 | Değişiklik geçmişi sekmesi | F8 | AUTH-04, AUTH-07 |

## Ekran 3: Yeni Müşteri Adayı


| No | Öğe | MVP özelliği | İlgili kural |
| --- | --- | --- | --- |
| 1 | Aday bilgi alanları | F1 | |
| 2 | Benzer kayıt uyarısı | F1, F2 | Açık soru: mükerrer kayıt |
| 3 | Öncelik seçimi | F6 | Açık soru: öncelik kriterleri |
| 4 | Sorumlu alanı: yöneticiye bırakılır | F3 | AUTH-06 |
| 5 | Sonraki takip tarihi | F5 | |

## Ekran 4: Takip Listesi


| No | Öğe | MVP özelliği | İlgili kural |
| --- | --- | --- | --- |
| 1 | Geciken, bugün ve yaklaşan sayaçları | F5 | |
| 2 | Geciken takipler listesi | F5 | Açık soru: gecikme koşulu |
| 3 | Öncelik ve tarihe göre sıralama | F5, F6 | |
| 4 | İletişim ekle kısayolu | F4 | AUTH-02 |
| 5 | Tüm ekip / yalnızca bana ait görünümü | F5 | |

Otomatik bildirim MVP dışındadır. Takibin görülmesi, temsilcinin bu listeyi kontrol etmesine bağlıdır.

## Ekran 5: Sorumlu Atama (Satış Yöneticisi)

| No | Öğe | MVP özelliği | İlgili kural |
| --- | --- | --- | --- |
| 1 | Yeni sorumlu seçimi: yalnızca aktif kullanıcılar | F3 | AUTH-06 |
| 2 | Kaydedilecek bilgiler: önceki ve yeni sorumlu, işlemi yapan, tarih/saat | F8 | AUTH-07 |
| 3 | Açık takip görevlerinin aktarımı | F3 | Açık soru (bkz. AUTH-07) |

## Mobil Ekranlar

Satış temsilcisinin sahada kullanacağı üç ekran çizildi. Yönetici işlemleri (sorumlu atama, sorumlu değiştirme, kayıt iptali) yalnızca masaüstünde yapılır. Gereksinim karşılığı için bkz. `docs/12_non_functional_requirements.md` (NFR-06).

| Ekran | Dosya | İlgili özellik | Not |
|---|---|---|---|
| Aday listesi | `m01_lead_list.png` | F1, F2, F3 (salt okunur), F5, F6 | Yeni aday düğmesi, arama, öncelik, geciken vurgusu |
| Aday detayı | `m02_lead_detail.png` | F2, F3 (salt okunur), F4, F5, F6, F8 | İletişim geçmişi, iptal edilmiş kayıt, değişiklik geçmişi |
| İletişim ekleme | `m03_add_contact.png` | F4, F5, AUTH-02 | Sorumlu olmayan temsilci de iletişim ekleyebilir |

### İşaret Açıklamaları

Ekranlardaki kırmızı numaralar, bir öğeyi ilgili MVP özelliğine bağlar. Numaralar her ekranda baştan başlar.

**Aday listesi (`m01_lead_list.png`)**

| İşaret | Ekrandaki öğe | Özellik |
|---|---|---|
| 1 | Sağ alttaki «+» düğmesi | F1 Aday oluşturma |
| 2 | Arama kutusu | F2 Listeleme, arama |
| 3 | Öncelik etiketi (Yüksek/Orta/Düşük) | F6 Öncelik |
| 4 | Sorumlu bilgisi (salt okunur) | F3 Sorumlu atama |
| 5 | «Geciken» etiketi | F5 Takip tarihi ve geciken işler |

**Aday detayı (`m02_lead_detail.png`)**

| İşaret | Ekrandaki öğe | Özellik |
|---|---|---|
| 1 | Başlık ve aday bilgileri | F2 Görüntüleme |
| 2 | Sorumlu satırı | F3 Sorumlu atama |
| 3 | Öncelik etiketi | F6 Öncelik |
| 4 | «+ İletişim ekle» düğmesi | F4 İletişim geçmişi |
| 5 | Sonraki takip tarihi | F5 Takip tarihi |
| 6 | «İPTAL» etiketli eski kayıt | F4 İletişim geçmişi (iptal edilen kayıt silinmez, gerekçeyle görünür kalır) |
| 7 | «Değişiklik geçmişi» sekmesi | F8 Değişiklik geçmişi |

**İletişim ekleme (`m03_add_contact.png`)**

| İşaret | Ekrandaki öğe | Özellik |
|---|---|---|
| 1 | İletişim türü | F4 İletişim geçmişi |
| 2 | Görüşme notu | F4 İletişim geçmişi |
| 3 | Sonraki takip tarihi | F5 Takip tarihi |

### Varsayımlar ve Açık Sorular

- Mobil kullanım, ayrı bir uygulama değil telefon tarayıcısı üzerinden varsayılmıştır.
- Mobilde yalnızca satış temsilcisi rolü düşünülmüştür. Yöneticilerin mobil kullanımı henüz belirlenmemiştir.
- Çevrimdışı çalışma kapsam dışı varsayılmıştır.
- Sonraki takip tarihinin zorunlu olup olmayacağı henüz belirlenmemiştir.
- Ekranlardaki isimler ve veriler kurgusaldır (Aday 001, Firma 001, Temsilci A gibi).

## Henüz tasarlanmayan ekranlar

- İletişim kaydı ekleme penceresi
- Rol ve yetki tanımlarını görüntüleme / yönetme (AUTH-08, AUTH-09)
- Değişiklik geçmişi sekmesinin içeriği
