
CREATE DATABASE HayvanatBahcesi;

CREATE TABLE Hayvanlar (
    HayvanID INT PRIMARY KEY IDENTITY(1,1),
    Ad VARCHAR(50) NOT NULL,
    Tur VARCHAR(100) NOT NULL,
    Cins VARCHAR(100),
    DogumTarihi DATE,
    Cinsiyet VARCHAR(10),
    SaglikDurumu VARCHAR(100),
    KafesNo VARCHAR(20)
);

CREATE TABLE Ziyaretciler (
    ZiyaretciID INT PRIMARY KEY IDENTITY(1,1),
    AdSoyad VARCHAR(100) NOT NULL,
    GirisTarihi DATETIME NOT NULL,
    CikisTarihi DATETIME,
    BiletTipi VARCHAR(20)
);

CREATE TABLE Kafesler (
    KafesNo VARCHAR(20) PRIMARY KEY,
    Alan VARCHAR(100),
    HayvanSayisi INT DEFAULT 0,
    TemizlikDurumu VARCHAR(50)
);

INSERT INTO Hayvanlar (Ad, Tur, Cins, DogumTarihi, Cinsiyet, SaglikDurumu, KafesNo)
VALUES 
('Aslan Kral', 'Aslan', 'Afrika Aslaný', '2015-05-20', 'Erkek', 'Saðlýklý', 'KAF001'),
('Maya', 'Fil', 'Asya Fili', '2010-07-12', 'Diþi', 'Diþ problemleri var', 'KAF002'),
('Çita', 'Çita', 'Afrika Çitasý', '2018-04-22', 'Diþi', 'Saðlýklý', 'KAF003'),
('Bambam', 'Ayý', 'Kutup Ayýsý', '2013-09-18', 'Erkek', 'Sol bacaðý sakat', 'KAF004'),
('Nemo', 'Penguen', 'Ýmparator Penguen', '2019-01-10', 'Erkek', 'Saðlýklý', 'KAF005'),
('Koko', 'Maymun', 'Þempanze', '2016-03-15', 'Diþi', 'Saðlýklý', 'KAF006'),
('Zazu', 'Kuþ', 'Tukan', '2020-08-05', 'Erkek', 'Tüy dökmesi var', 'KAF007'),
('Sirius', 'Kaplan', 'Bengal Kaplaný', '2014-11-01', 'Erkek', 'Göz enfeksiyonu', 'KAF008'),
('Luna', 'Zebra', 'Düz Zebra', '2017-06-09', 'Diþi', 'Saðlýklý', 'KAF009'),
('Dumbo', 'Fil', 'Afrika Fili', '2011-02-28', 'Erkek', 'Týrnak bakýmý gerekli', 'KAF010');



INSERT INTO Ziyaretciler (AdSoyad, GirisTarihi, CikisTarihi, BiletTipi)
VALUES
('Ahmet Yýlmaz', '2025-05-28 10:00:00', '2025-05-28 13:00:00', 'Tam'),
('Elif Demir', '2025-05-28 11:15:00', '2025-05-28 12:45:00', 'Öðrenci'),
('Zeynep Kara', '2025-05-28 09:45:00', NULL, 'Çocuk'),
('Mert Þahin', '2025-05-28 14:00:00', '2025-05-28 16:30:00', 'Tam'),
('Ayþe Aydýn', '2025-05-28 13:30:00', '2025-05-28 15:00:00', 'Tam'),
('Kerem Aksoy', '2025-05-28 15:00:00', NULL, 'Öðrenci'),
('Deniz Kýlýç', '2025-05-28 10:30:00', '2025-05-28 12:30:00', 'Tam'),
('Merve Güneþ', '2025-05-28 11:00:00', '2025-05-28 13:00:00', 'Öðrenci'),
('Ali Vural', '2025-05-28 09:00:00', '2025-05-28 11:00:00', 'Çocuk'),
('Buse Tan', '2025-05-28 14:15:00', '2025-05-28 16:00:00', 'Tam');



INSERT INTO Kafesler (KafesNo, Alan, HayvanSayisi, TemizlikDurumu)
VALUES
('KAF001', 'Orman Bölgesi', 1, 'Temiz'),
('KAF002', 'Tropik Alan', 1, 'Temizlik Gerekli'),
('KAF003', 'Açýk Arazi', 1, 'Temiz'),
('KAF004', 'Kutupsal Alan', 1, 'Bakýmda'),
('KAF005', 'Buzul Alan', 1, 'Temiz'),
('KAF006', 'Yaðmur Ormaný', 1, 'Kirli'),
('KAF007', 'Kuþ Kafesi', 1, 'Temiz'),
('KAF008', 'Kaplan Alaný', 1, 'Temizlik Gerekli'),
('KAF009', 'Savan Bölgesi', 1, 'Temiz'),
('KAF010', 'Fil Alaný', 1, 'Temiz');

