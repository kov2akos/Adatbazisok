CREATE TABLE Csapat (
    CsapatID INT PRIMARY KEY AUTO_INCREMENT,
    Név VARCHAR(100),
    Város VARCHAR(100)
);

CREATE TABLE Játékos (
    JátékosID INT PRIMARY KEY AUTO_INCREMENT,
    Név VARCHAR(100),
    SzületésiDátum DATE,
    Poszt VARCHAR(50),
    CsapatID INT,
    FOREIGN KEY (CsapatID) REFERENCES Csapat(CsapatID)
);

CREATE TABLE Mérkőzés (
    MérkőzésID INT PRIMARY KEY AUTO_INCREMENT,
    Dátum DATE,
    Helyszín VARCHAR(100),
    HazaiCsapatID INT,
    VendégCsapatID INT,
    HazaiGól INT,
    VendégGól INT,
    FOREIGN KEY (HazaiCsapatID) REFERENCES Csapat(CsapatID),
    FOREIGN KEY (VendégCsapatID) REFERENCES Csapat(CsapatID)
);

CREATE TABLE Gól (
    GólID INT PRIMARY KEY AUTO_INCREMENT,
    MérkőzésID INT,
    JátékosID INT,
    Perc INT,
    FOREIGN KEY (MérkőzésID) REFERENCES Mérkőzés(MérkőzésID),
    FOREIGN KEY (JátékosID) REFERENCES Játékos(JátékosID)
);

CREATE TABLE Büntetés (
    BüntetésID INT PRIMARY KEY AUTO_INCREMENT,
    MérkőzésID INT,
    JátékosID INT,
    Típus VARCHAR(50),
    Perc INT,
    FOREIGN KEY (MérkőzésID) REFERENCES Mérkőzés(MérkőzésID),
    FOREIGN KEY (JátékosID) REFERENCES Játékos(JátékosID)
);
