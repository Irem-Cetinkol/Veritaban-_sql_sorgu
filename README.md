Proje Özeti
Bu proje, bir hayvanat bahçesinin günlük operasyonlarını yönetmek için tasarlanmış kapsamlı bir veritabanı sistemidir. Sistem, hayvanların tür ve cins bilgilerini, kafes yönetimini, ziyaretçi takibini ve biletleme işlemlerini entegre bir şekilde yönetmektedir.

Proje Amacı
Hayvanat bahçesindeki tüm hayvanların detaylı kaydını tutmak

Kafeslerin durumunu ve konumlarını takip etmek

Ziyaretçi bilgilerini ve hareketlerini kaydetmek

Bilet satış ve türlerini yönetmek

Hayvan sağlık durumlarını izlemek

Veritabanı Yapısı
1. Tablolar ve İlişkiler
a. Temel Tablolar:
Turler: Hayvan türlerini içerir (Aslan, Fil, Çita vb.)

Cinsler: Her türün alt cinslerini içerir (Afrika Aslanı, Asya Fili vb.)

Hayvanlar: Bireysel hayvan kayıtlarını tutar

Kafesler: Hayvanların barındığı kafes bilgilerini içerir

BiletTipleri: Bilet türlerini tanımlar (Tam, Öğrenci, Çocuk)

Ziyaretciler: Ziyaretçi bilgilerini ve hareketlerini kaydeder

b. İlişkiler:
Cinsler ↔ Turler: Bir türün birden çok cinsi olabilir (1-n)

Hayvanlar ↔ Cinsler: Her hayvan bir cinse aittir (n-1)

Hayvanlar ↔ Kafesler: Her hayvan bir kafeste barındırılır (n-1)

Ziyaretciler ↔ BiletTipleri: Her ziyaretçi bir bilet türüne sahiptir (n-1)

2. Örnek Veri Seti
Sistemde örnek olarak:

9 hayvan türü

10 hayvan cinsi

12 kafes

12 hayvan kaydı

3 bilet tipi

12 ziyaretçi kaydı bulunmaktadır

Sistem Fonksiyonları
1. Hayvan Yönetimi
Hayvanların tür ve cins bilgilerinin kaydı

Doğum tarihi ve cinsiyet bilgilerinin saklanması

Sağlık durumlarının takibi

Kafes atamalarının yönetimi

2. Kafes Yönetimi
Kafeslerin alan bilgilerinin kaydı

Temizlik durumlarının takibi

Kafes-hayvan eşleştirmesi

3. Ziyaretçi Yönetimi
Ziyaretçi giriş-çıkış kayıtları

Bilet tipine göre ziyaretçi sınıflandırması

Ziyaret sürelerinin takibi

4. Raporlama ve Analiz
Hayvan sağlık durum raporları

Kafes temizlik durum analizleri

Ziyaretçi istatistikleri

Bilet satış raporları

Teknik Detaylar
1. Veritabanı Yapısı
DBMS: Microsoft SQL Server

Tablo Sayısı: 6

İlişkisel Yapı: Foreign key ilişkileriyle güçlü referans bütünlüğü

Indexleme: Primary key'ler üzerinde otomatik indexleme

2. Veri Tipleri
Kimlik Alanları: INT IDENTITY (otomatik artan)

Metin Alanları: VARCHAR (50-100)

Tarih/Saat Alanları: DATE, DATETIME

Durum Bilgileri: VARCHAR (10-100)

Kullanım Senaryoları
1. Yeni Hayvan Kaydı
Önce tür ve cins tabloları kontrol edilir veya yeni kayıt eklenir

Hayvan tablosuna yeni kayıt eklenir

Uygun bir kafese ataması yapılır

2. Ziyaretçi Takibi
Ziyaretçi giriş yaptığında kayıt oluşturulur

Bilet tipi seçilir

Çıkış yapıldığında çıkış zamanı güncellenir

3. Kafes Yönetimi
Kafes temizlik durumu güncellenir

Hayvan transferleri kaydedilir

Bakım gerektiren kafesler raporlanır

Sistem Çıktıları ve Raporlar
1. Hayvan Envanter Raporu
Tür ve cins bazında hayvan sayıları

Cinsiyet dağılımı

Yaş analizleri

2. Kafes Durum Raporu
Temizlik durumuna göre kafesler

Boş/dolu kafes sayıları

Bakım gerektiren kafesler

3. Ziyaretçi İstatistikleri
Günlük ziyaretçi sayıları

Bilet tipi dağılımları

Ortalama ziyaret süreleri

Sonuç ve Öneriler
Bu veritabanı sistemi, orta ölçekli bir hayvanat bahçesinin temel ihtiyaçlarını karşılayacak şekilde tasarlanmıştır. İleriki aşamalarda:

Görsel Arayüz: Windows Forms veya web tabanlı bir arayüz eklenebilir

Personel Yönetimi: Bakıcı ve veteriner kayıtları için modül eklenebilir

Beslenme Takibi: Hayvanların beslenme programları eklenebilir

Stok Yönetimi: Yem ve malzeme stok takibi yapılabilir

Güvenlik Önlemleri: Kullanıcı yetkilendirme sistemi eklenebilir
