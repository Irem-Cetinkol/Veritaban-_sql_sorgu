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
('Aslan'), ('Fil'), ('�ita'), ('Ay�'), ('Penguen'),
('Maymun'), ('Ku�'), ('Kaplan'), ('Zebra');

INSERT INTO Cinsler (CinsAdi, TurID) VALUES
('Afrika Aslan�', 1),
('Asya Fili', 2),
('Afrika �itas�', 3),
('Kutup Ay�s�', 4),
('�mparator Penguen', 5),
('�empanze', 6),
('Tukan', 7),
('Bengal Kaplan�', 8),
('D�z Zebra', 9),
('Afrika Fili', 2);


INSERT INTO Kafesler (KafesNo, Alan, TemizlikDurumu) VALUES
('KAF001', 'Orman B�lgesi', 'Temiz'),
('KAF002', 'Tropik Alan', 'Temizlik Gerekli'),
('KAF003', 'A��k Arazi', 'Temiz'),
('KAF004', 'Kutupsal Alan', 'Bak�mda'),
('KAF005', 'Buzul Alan', 'Temiz'),
('KAF006', 'Ya�mur Orman�', 'Kirli'),
('KAF007', 'Ku� Kafesi', 'Temiz'),
('KAF008', 'Kaplan Alan�', 'Temizlik Gerekli'),
('KAF009', 'Savan B�lgesi', 'Temiz'),
('KAF010', 'Fil Alan�', 'Temiz'),
('KAF011', 'Ekstra Alan 1', 'Temiz'),
('KAF012', 'Ekstra Alan 2', 'Temizlik Gerekli');


INSERT INTO Hayvanlar (Ad, CinsID, DogumTarihi, Cinsiyet, SaglikDurumu, KafesNo) VALUES
('Aslan Kral', 1, '2015-05-20', 'Erkek', 'Sa�l�kl�', 'KAF001'),
('Maya', 2, '2010-07-12', 'Di�i', 'Di� problemleri var', 'KAF002'),
('�ita', 3, '2018-04-22', 'Di�i', 'Sa�l�kl�', 'KAF003'),
('Bambam', 4, '2013-09-18', 'Erkek', 'Sol baca�� sakat', 'KAF004'),
('Nemo', 5, '2019-01-10', 'Erkek', 'Sa�l�kl�', 'KAF005'),
('Koko', 6, '2016-03-15', 'Di�i', 'Sa�l�kl�', 'KAF006'),
('Zazu', 7, '2020-08-05', 'Erkek', 'T�y d�kmesi var', 'KAF007'),
('Sirius', 8, '2014-11-01', 'Erkek', 'G�z enfeksiyonu', 'KAF008'),
('Luna', 9, '2017-06-09', 'Di�i', 'Sa�l�kl�', 'KAF009'),
('Dumbo', 10, '2011-02-28', 'Erkek', 'T�rnak bak�m� gerekli', 'KAF010'),
('Mini', 5, '2020-12-15', 'Di�i', 'Burun ak�nt�s�', 'KAF005'),
('Boncuk', 6, '2018-06-20', 'Erkek', 'Sa�l�kl�', 'KAF006');


INSERT INTO BiletTipleri (TipAdi) VALUES
('Tam'), ('��renci'), ('�ocuk');


INSERT INTO Ziyaretciler (AdSoyad, GirisTarihi, CikisTarihi, BiletTipiID) VALUES
('Dusan Tadic', '2025-05-28 10:00:00', '2025-05-28 13:00:00', 1),
('O�uz Ayd�n', '2025-05-28 11:15:00', '2025-05-28 12:45:00', 2),
('�rfancan Kahveci', '2025-05-28 09:45:00', NULL, 3),
('�rfancan E�ribayat', '2025-05-28 14:00:00', '2025-05-28 16:30:00', 1),
('Mert M�ld�r', '2025-05-28 13:30:00', '2025-05-28 15:00:00', 1),
('Bright Osayi Samuel', '2025-05-28 15:00:00', NULL, 2),
('Edin Dzeko', '2025-05-28 10:30:00', '2025-05-28 12:30:00', 1),
('Sofyan Amrabat', '2025-05-28 11:00:00', '2025-05-28 13:00:00', 2),
('Youssef En-Nesyri', '2025-05-28 09:00:00', '2025-05-28 11:00:00', 3),
('Mert Hakan Yanda�', '2025-05-28 14:15:00', '2025-05-28 16:00:00', 1),
('Dirk Kuyt', '2025-05-28 12:00:00', NULL, 2),
('Alex de Souza', '2025-05-28 13:15:00', '2025-05-28 15:45:00', 1);
