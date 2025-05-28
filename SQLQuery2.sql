CREATE DATABASE HayvanatBahcesi;
USE HayvanatBahcesi;

CREATE TABLE Turler (
    TurID INT PRIMARY KEY IDENTITY(1,1),
    TurAdi VARCHAR(100) NOT NULL
);

CREATE TABLE Cinsler (
    CinsID INT PRIMARY KEY IDENTITY(1,1),
    CinsAdi VARCHAR(100) NOT NULL,
    TurID INT FOREIGN KEY REFERENCES Turler(TurID)
);


CREATE TABLE Hayvanlar (
    HayvanID INT PRIMARY KEY IDENTITY(1,1),
    Ad VARCHAR(50) NOT NULL,
    CinsID INT FOREIGN KEY REFERENCES Cinsler(CinsID),
    DogumTarihi DATE,
    Cinsiyet VARCHAR(10),
    SaglikDurumu VARCHAR(100),
    KafesNo VARCHAR(20) FOREIGN KEY REFERENCES Kafesler(KafesNo)
);


CREATE TABLE Kafesler (
    KafesNo VARCHAR(20) PRIMARY KEY,
    Alan VARCHAR(100),
    TemizlikDurumu VARCHAR(50)
);


CREATE TABLE BiletTipleri (
    BiletTipiID INT PRIMARY KEY IDENTITY(1,1),
    TipAdi VARCHAR(20) NOT NULL
);


CREATE TABLE Ziyaretciler (
    ZiyaretciID INT PRIMARY KEY IDENTITY(1,1),
    AdSoyad VARCHAR(100) NOT NULL,
    GirisTarihi DATETIME NOT NULL,
    CikisTarihi DATETIME,
    BiletTipiID INT FOREIGN KEY REFERENCES BiletTipleri(BiletTipiID)
);


INSERT INTO Turler (TurAdi) VALUES
('Aslan'), ('Fil'), ('Çita'), ('Ayý'), ('Penguen'),
('Maymun'), ('Kuþ'), ('Kaplan'), ('Zebra');

INSERT INTO Cinsler (CinsAdi, TurID) VALUES
('Afrika Aslaný', 1),
('Asya Fili', 2),
('Afrika Çitasý', 3),
('Kutup Ayýsý', 4),
('Ýmparator Penguen', 5),
('Þempanze', 6),
('Tukan', 7),
('Bengal Kaplaný', 8),
('Düz Zebra', 9),
('Afrika Fili', 2);


INSERT INTO Kafesler (KafesNo, Alan, TemizlikDurumu) VALUES
('KAF001', 'Orman Bölgesi', 'Temiz'),
('KAF002', 'Tropik Alan', 'Temizlik Gerekli'),
('KAF003', 'Açýk Arazi', 'Temiz'),
('KAF004', 'Kutupsal Alan', 'Bakýmda'),
('KAF005', 'Buzul Alan', 'Temiz'),
('KAF006', 'Yaðmur Ormaný', 'Kirli'),
('KAF007', 'Kuþ Kafesi', 'Temiz'),
('KAF008', 'Kaplan Alaný', 'Temizlik Gerekli'),
('KAF009', 'Savan Bölgesi', 'Temiz'),
('KAF010', 'Fil Alaný', 'Temiz'),
('KAF011', 'Ekstra Alan 1', 'Temiz'),
('KAF012', 'Ekstra Alan 2', 'Temizlik Gerekli');


INSERT INTO Hayvanlar (Ad, CinsID, DogumTarihi, Cinsiyet, SaglikDurumu, KafesNo) VALUES
('Aslan Kral', 1, '2015-05-20', 'Erkek', 'Saðlýklý', 'KAF001'),
('Maya', 2, '2010-07-12', 'Diþi', 'Diþ problemleri var', 'KAF002'),
('Çita', 3, '2018-04-22', 'Diþi', 'Saðlýklý', 'KAF003'),
('Bambam', 4, '2013-09-18', 'Erkek', 'Sol bacaðý sakat', 'KAF004'),
('Nemo', 5, '2019-01-10', 'Erkek', 'Saðlýklý', 'KAF005'),
('Koko', 6, '2016-03-15', 'Diþi', 'Saðlýklý', 'KAF006'),
('Zazu', 7, '2020-08-05', 'Erkek', 'Tüy dökmesi var', 'KAF007'),
('Sirius', 8, '2014-11-01', 'Erkek', 'Göz enfeksiyonu', 'KAF008'),
('Luna', 9, '2017-06-09', 'Diþi', 'Saðlýklý', 'KAF009'),
('Dumbo', 10, '2011-02-28', 'Erkek', 'Týrnak bakýmý gerekli', 'KAF010'),
('Mini', 5, '2020-12-15', 'Diþi', 'Burun akýntýsý', 'KAF005'),
('Boncuk', 6, '2018-06-20', 'Erkek', 'Saðlýklý', 'KAF006');


INSERT INTO BiletTipleri (TipAdi) VALUES
('Tam'), ('Öðrenci'), ('Çocuk');


INSERT INTO Ziyaretciler (AdSoyad, GirisTarihi, CikisTarihi, BiletTipiID) VALUES
('Dusan Tadic', '2025-05-28 10:00:00', '2025-05-28 13:00:00', 1),
('Oðuz Aydýn', '2025-05-28 11:15:00', '2025-05-28 12:45:00', 2),
('Ýrfancan Kahveci', '2025-05-28 09:45:00', NULL, 3),
('Ýrfancan Eðribayat', '2025-05-28 14:00:00', '2025-05-28 16:30:00', 1),
('Mert Müldür', '2025-05-28 13:30:00', '2025-05-28 15:00:00', 1),
('Bright Osayi Samuel', '2025-05-28 15:00:00', NULL, 2),
('Edin Dzeko', '2025-05-28 10:30:00', '2025-05-28 12:30:00', 1),
('Sofyan Amrabat', '2025-05-28 11:00:00', '2025-05-28 13:00:00', 2),
('Youssef En-Nesyri', '2025-05-28 09:00:00', '2025-05-28 11:00:00', 3),
('Mert Hakan Yandaþ', '2025-05-28 14:15:00', '2025-05-28 16:00:00', 1),
('Dirk Kuyt', '2025-05-28 12:00:00', NULL, 2),
('Alex de Souza', '2025-05-28 13:15:00', '2025-05-28 15:45:00', 1);
