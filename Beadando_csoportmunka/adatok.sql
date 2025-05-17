INSERT INTO Csapat (CsapatID, Nev, Varos) VALUES
(1, 'Fradi', 'Budapest'),
(2, 'Diósgyőr', 'Miskolc'),
(3, 'Videoton', 'Székesfehérvár'),
(4, 'Debrecen', 'Debrecen'),
(5, 'Győr', 'Győr'),
(6, 'MTK', 'Budapest'),
(7, 'Paks', 'Paks'),
(8, 'Kisvárda', 'Kisvárda'),
(9, 'ZTE', 'Zalaegerszeg'),
(10, 'Puskás Akadémia', 'Felcsút');

INSERT INTO Jatekos (JatekosID, Nev, SzuletesiDatum, Poszt, CsapatID) VALUES
(1, 'Kovács Péter', '1995-03-12', 'Kapus', 1),
(2, 'Nagy László', '1998-07-25', 'Védő', 2),
(3, 'Szabó Dániel', '2000-01-15', 'Középpályás', 3),
(4, 'Tóth Gergely', '1996-11-05', 'Támadó', 4),
(5, 'Varga Bence', '1997-06-30', 'Védő', 5),
(6, 'Kiss Balázs', '1999-04-20', 'Kapus', 6),
(7, 'Molnár István', '1994-09-10', 'Támadó', 7),
(8, 'Farkas Ádám', '2001-02-22', 'Középpályás', 8),
(9, 'Horváth Norbert', '1993-12-01', 'Védő', 9),
(10, 'Lakatos Krisztián', '1992-08-17', 'Támadó', 10);

INSERT INTO Merkozes (MerkozesID, Datum, Helyszin, HazaiCsapatID, VendegCsapatID, HazaiGol, VendegGol) VALUES
(1, '2024-08-01', 'Groupama Aréna', 1, 2, 2, 1),
(2, '2024-08-02', 'Miskolc Stadion', 2, 3, 1, 3),
(3, '2024-08-03', 'Sóstói Stadion', 3, 4, 0, 0),
(4, '2024-08-04', 'Nagyerdei Stadion', 4, 5, 2, 2),
(5, '2024-08-05', 'ETO Park', 5, 6, 1, 0),
(6, '2024-08-06', 'Hidegkuti Stadion', 6, 7, 3, 1),
(7, '2024-08-07', 'Paksi Stadion', 7, 8, 0, 2),
(8, '2024-08-08', 'Kisvárda Stadion', 8, 9, 1, 1),
(9, '2024-08-09', 'ZTE Aréna', 9, 10, 2, 2),
(10, '2024-08-10', 'Pancho Aréna', 10, 1, 1, 4);

INSERT INTO Gol (GolID, MerkozesID, JatekosID, Perc) VALUES
(1, 1, 4, 12),
(2, 1, 1, 34),
(3, 2, 3, 78),
(4, 3, 2, 90),
(5, 5, 5, 13),
(6, 6, 6, 45),
(7, 6, 6, 55),
(8, 7, 8, 89),
(9, 9, 9, 67),
(10, 10, 1, 80);

INSERT INTO Buntetes (BuntetesID, MerkozesID, JatekosID, Tipus, Perc) VALUES
(1, 1, 2, 'Sárga', 23),
(2, 1, 3, 'Piros', 87),
(3, 2, 1, 'Sárga', 45),
(4, 3, 5, 'Sárga', 10),
(5, 4, 4, 'Piros', 65),
(6, 5, 6, 'Sárga', 30),
(7, 6, 7, 'Sárga', 12),
(8, 7, 8, 'Piros', 88),
(9, 8, 9, 'Sárga', 53),
(10, 9, 10, 'Sárga', 75);