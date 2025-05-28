
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
('Aslan Kral', 'Aslan', 'Afrika Aslan�', '2015-05-20', 'Erkek', 'Sa�l�kl�', 'KAF001'),
('Maya', 'Fil', 'Asya Fili', '2010-07-12', 'Di�i', 'Di� problemleri var', 'KAF002'),
('�ita', '�ita', 'Afrika �itas�', '2018-04-22', 'Di�i', 'Sa�l�kl�', 'KAF003'),
('Bambam', 'Ay�', 'Kutup Ay�s�', '2013-09-18', 'Erkek', 'Sol baca�� sakat', 'KAF004'),
('Nemo', 'Penguen', '�mparator Penguen', '2019-01-10', 'Erkek', 'Sa�l�kl�', 'KAF005'),
('Koko', 'Maymun', '�empanze', '2016-03-15', 'Di�i', 'Sa�l�kl�', 'KAF006'),
('Zazu', 'Ku�', 'Tukan', '2020-08-05', 'Erkek', 'T�y d�kmesi var', 'KAF007'),
('Sirius', 'Kaplan', 'Bengal Kaplan�', '2014-11-01', 'Erkek', 'G�z enfeksiyonu', 'KAF008'),
('Luna', 'Zebra', 'D�z Zebra', '2017-06-09', 'Di�i', 'Sa�l�kl�', 'KAF009'),
('Dumbo', 'Fil', 'Afrika Fili', '2011-02-28', 'Erkek', 'T�rnak bak�m� gerekli', 'KAF010');



INSERT INTO Ziyaretciler (AdSoyad, GirisTarihi, CikisTarihi, BiletTipi)
VALUES
('Ahmet Y�lmaz', '2025-05-28 10:00:00', '2025-05-28 13:00:00', 'Tam'),
('Elif Demir', '2025-05-28 11:15:00', '2025-05-28 12:45:00', '��renci'),
('Zeynep Kara', '2025-05-28 09:45:00', NULL, '�ocuk'),
('Mert �ahin', '2025-05-28 14:00:00', '2025-05-28 16:30:00', 'Tam'),
('Ay�e Ayd�n', '2025-05-28 13:30:00', '2025-05-28 15:00:00', 'Tam'),
('Kerem Aksoy', '2025-05-28 15:00:00', NULL, '��renci'),
('Deniz K�l��', '2025-05-28 10:30:00', '2025-05-28 12:30:00', 'Tam'),
('Merve G�ne�', '2025-05-28 11:00:00', '2025-05-28 13:00:00', '��renci'),
('Ali Vural', '2025-05-28 09:00:00', '2025-05-28 11:00:00', '�ocuk'),
('Buse Tan', '2025-05-28 14:15:00', '2025-05-28 16:00:00', 'Tam');



INSERT INTO Kafesler (KafesNo, Alan, HayvanSayisi, TemizlikDurumu)
VALUES
('KAF001', 'Orman B�lgesi', 1, 'Temiz'),
('KAF002', 'Tropik Alan', 1, 'Temizlik Gerekli'),
('KAF003', 'A��k Arazi', 1, 'Temiz'),
('KAF004', 'Kutupsal Alan', 1, 'Bak�mda'),
('KAF005', 'Buzul Alan', 1, 'Temiz'),
('KAF006', 'Ya�mur Orman�', 1, 'Kirli'),
('KAF007', 'Ku� Kafesi', 1, 'Temiz'),
('KAF008', 'Kaplan Alan�', 1, 'Temizlik Gerekli'),
('KAF009', 'Savan B�lgesi', 1, 'Temiz'),
('KAF010', 'Fil Alan�', 1, 'Temiz');

