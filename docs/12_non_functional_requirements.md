# Fonksiyonel Olmayan Gereksinimler

Bu doküman, işlevlerin dışında kalan kalite beklentilerini tanımlar. Yetkilendirme ve değişiklik geçmişi konuları `11_user_roles_and_permissions.md` içinde ele alındığından burada tekrarlanmamıştır.

| ID | Kategori | Gereksinim | Öncelik | Not |
| --- | --- | --- | --- | --- |
| NFR-01 | Yedekleme ve kurtarma | Müşteri adayı ve iletişim verileri düzenli yedeklenmeli, veri kaybı halinde geri yüklenebilmelidir. | Yüksek | Problem analizindeki "dosyanın kaybolması" riskinin karşılığıdır. |
| NFR-02 | Kişisel verilerin korunması | Müşteri adaylarına ait kişisel bilgiler yetkisiz erişime ve ifşaya karşı korunmalıdır. | Yüksek | Saklama süresi ve silme talepleri açık sorudur (AUTH-05). Gerçek bir projede geçerli mevzuat (ör. KVKK) kapsamı doğrulanmalıdır. |
| NFR-03 | Kullanılabilirlik | Excel ile çalışan bir satış temsilcisi, temel işlemleri (kayıt oluşturma, iletişim ekleme, takip tarihi girme) kısa bir tanıtımla yapabilmelidir. | Orta | Ölçüt doğrulanacak. |
| NFR-04 | Performans | Arama ve listeleme sonuçları kullanıcıyı bekletmeyecek sürede gelmelidir. | Orta | Sayısal hedef belirlenmeli. |
| NFR-05 | Veri aktarımı | Mevcut Excel dosyalarındaki müşteri adayı verilerinin sisteme aktarımı planlanmalıdır. | Orta | MVP'de olup olmadığı açık; mükerrer kayıt kuralıyla ilişkilidir. |
