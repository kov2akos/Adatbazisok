CREATE TABLE Ugyfel_masked
([LOGIN] varchar(20) MASKED WITH (Function = 'default()'),
EMAIL varchar(50)	MASKED WITH (function = 'email()'),
NEV varchar(50) MASKED WITH (FUNCTION = 'partial(1,"XXX",1)'),
SZULEV INT MASKED WITH (FUNCTION = 'random(1920,2025)'),
NEM varchar(1),
CIM VARCHAR(50) MASKED WITH (FUNCTION = 'partial(5,"XXXXXXX",0)'))

INSERT INTO Ugyfel_masked ([LOGIN], EMAIL, NEV, SZULEV, NEM, CIM) VALUES
('Asanka1', 'dineshasanka@gmail.com', 'Asanka Badama', '1989', 'F', '1212 Budapest, Ady Endre út 3'),
('Kati22', 'kati.nagy@example.com', 'Nagy Katalin', '1995', 'N', '1133 Budapest, Váci út 15'),
('Jozsi77', 'jozsi.bacsi@gmail.com', 'Kovács József', '1977', 'F', '4032 Debrecen, Böszörményi út 1'),
('Lilla03', 'lilla03@yahoo.com', 'Szabó Lilla', '2003', 'N', '7624 Pécs, Rákóczi út 8'),
('Tomi88', 'tomi_88@freemail.hu', 'Tóth Tamás', '1988', 'F', '1111 Budapest, Bartók Béla út 22'),
('Bogi99', 'bogi.csilla@hotmail.com', 'Kiss Csilla', '1999', 'N', '9022 Győr, Árpád út 5'),
('Zoli63', 'zoli63@citromail.hu', 'Varga Zoltán', '1963', 'F', '6000 Kecskemét, Petőfi Sándor utca 9')

CREATE USER MaskUser WITHOUT Login;
GRANT SELECT ON Ugyfel_masked TO MaskUser

EXECUTE AS User= 'MaskUser';
SELECT * FROM Ugyfel_masked;
REVERT;