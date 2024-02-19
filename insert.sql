insert into persona values
("ABCDEFHIJ0000001", "Auriemma", "Domenico", "m", "Pollena Trocchia", '2003-06-17', "Cancello Scalo", "81027", "Scampia", "3"),
("ABCDEFHIJ0000002", "D'Ermilio", "Stefano", "m", "Atripalda", '2002-12-26', "San Giorgio del Sannio ", "82018", "San Giacomo", "3"),
("ABCDEFHIJ0000003", "Zito", "Stefano", "m", "Caserta", '2004-01-28', "Formicola", "81040", "San Matteo", "15"),
("ABCDEFHIJ0000004", "Ferretti", "Renato", "m", "Napoli", '1990-10-10', "Napoli", "80122", "Marzio", "56"),
("ABCDEFHIJ0000005", "Patanè", "Duccio", "m", "Napoli", '1995-09-09', "Cancello Scalo", "81027", "Scampia", "4"),
("ABCDEFHIJ0000006", "Biascica", "Augusto", "m", "Roma", '1970-06-06', "Roma", "00184", "San Patrizio", "123"),
("ABCDEFHIJ0000007", "Dell'Arti", "Arianna", "f", "Milano", '2000-07-07', "Milano", "20129", "San Matteo", "1"),
("ABCDEFHIJ0000008", "Bianchi", "Karin", "f", "Roma", '1999-08-08', "Roma", "00184", "Sanniti", "13"),
("ABCDEFHIJ0000009", "Avola Brukstaller", "Cristina", "f", "Roma", '2002-01-01', "Roma", "00184", "Sanniti", "99"),
("ABCDEFHIJ0000010", "Rossi", "Itala", "f", "Bari", '1983-02-02', "Cancello Scalo", "81027", "XXI Giugno", "1"),
("ABCDEFHIJ0000011", "Negri", "Corinna", "f", "Bari", '1955-03-03', "Cancello Scalo", "81027", "XXI Giugno", "2"),
("ABCDEFHIJ0000012", "La Rochelle", "Stanis", "m", "Napoli", '1989-04-04', "Cancello Scalo", "81027", "Scampia", "5");

-- select * from persona;

insert into medico values
("ABCDEFHIJ0000007","1111111111","Cardiologia"),("ABCDEFHIJ0000008","2222222222","Cardiologia"),
("ABCDEFHIJ0000009","3333333333","Pediatria"),("ABCDEFHIJ0000010","4444444444","Ortopedia"),
("ABCDEFHIJ0000011","5555555555","Psichiatria"),("ABCDEFHIJ0000012","6666666666","Oculistica");

-- select * from medico m join persona p on m.CF = p.CF;

insert into paziente values
("ABCDEFHIJ0000001"), ("ABCDEFHIJ0000002"), ("ABCDEFHIJ0000003"), 
("ABCDEFHIJ0000004"), ("ABCDEFHIJ0000005"), ("ABCDEFHIJ0000006");

-- select * from paziente pz join persona p on pz.CF = p.CF;

insert into ospedale values
("OSP001", "1", "100", "Napoli", "80122", "Marzio", "10"),
("OSP002", "2", "50", "Roma", "00184", "Sanniti", "63"),
("OSP003", "2", "80", "Milano", "20129", "San Matteo", "78");

-- select * from ospedale;

insert into lavoro values
("ABCDEFHIJ0000007", "OSP001", "2010-01-01", 2500, null),
("ABCDEFHIJ0000008", "OSP002", "2011-01-01", 3000, null),
("ABCDEFHIJ0000009", "OSP003", "2012-01-01", 2000, null),
("ABCDEFHIJ0000010", "OSP001", "2013-01-01", 1500, "2020-01-01"),
("ABCDEFHIJ0000010", "OSP003", "2020-01-02", 5000, null),
("ABCDEFHIJ0000011", "OSP002", "2014-01-01", 3500, null),
("ABCDEFHIJ0000012", "OSP003", "2015-01-01", 10000, null);

-- select * from lavoro order by cod_osp;

insert into reparto values
("OSP001", "Cardiologia", 100, 30, "ABCDEFHIJ0000007"),
("OSP002", "Cardiologia", 20, 8, "ABCDEFHIJ0000008"),
("OSP002", "Psichiatria", 30, 10, "ABCDEFHIJ0000011"),
("OSP003", "Pediatria", 40, 15, "ABCDEFHIJ0000009"),
("OSP003", "Ortopedia", 40, 15, "ABCDEFHIJ0000010");

-- select * from reparto r right join medico m on m.CF = r.CF_direttore;

insert into telefono values
('1234567890', 'ABCDEFHIJ0000001'),
('3664991478', 'ABCDEFHIJ0000001'),
('0000000000', 'ABCDEFHIJ0000001'),
('2345678901', 'ABCDEFHIJ0000002'),
('1111111111', 'ABCDEFHIJ0000002'),
('3456789012', 'ABCDEFHIJ0000003'),
('4567890123', 'ABCDEFHIJ0000004'),
('5678901234', 'ABCDEFHIJ0000005'),
('6789012345', 'ABCDEFHIJ0000006'),
('7890123456', 'ABCDEFHIJ0000007'),
('8901234567', 'ABCDEFHIJ0000008'),
('9012345678', 'ABCDEFHIJ0000009'),
('0123456789', 'ABCDEFHIJ0000010'),
('9876543210', 'ABCDEFHIJ0000011'),
('8765432109', 'ABCDEFHIJ0000012');

-- select t.numero, p.nome, p.cognome from telefono t join persona p on p.CF = t.cf;

insert into studio values
("STUD0001", "Roma", "Sandro", "642"),
("STUD0002", "Milano", "San Marcello", "22"),
("STUD0003", "Napoli", "Portocorto", "30");

-- select * from studio;

insert into visita values
("ABCDEFHIJ0000002", "ABCDEFHIJ0000007", "2023-12-12", "Cuore", 100.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000008", "2023-11-11", "Cuore", 10.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000009", "2023-11-20", "Controllo figlio", 20.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000010", "2023-10-10", "Piedi", 30.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000011", "2022-01-01", "Test attitudinale", 40.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000012", "2022-09-29", "Controllo gradi", 50.00),
("ABCDEFHIJ0000001", "ABCDEFHIJ0000007", "2021-12-12", "Cuore", 100.00),
("ABCDEFHIJ0000003", "ABCDEFHIJ0000011", "2023-01-01", "Test attitudinale", 40.00);

-- select p.nome, p.cognome, v.* from visita v join paziente pz on v.CF_paziente = pz.CF join persona p on p.CF = pz.CF;

insert into intramoenia values
("ABCDEFHIJ0000002", "ABCDEFHIJ0000007", "2023-12-12", 30.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000008", "2023-11-11", 10.00),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000009", "2023-11-20", 5.00);
 
insert into impegnativa values
("ABCDEFHIJ0000002", "ABCDEFHIJ0000010", "2023-10-10", "1231231231"),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000011", "2022-01-01", "4564564564"),
("ABCDEFHIJ0000001", "ABCDEFHIJ0000007", "2021-12-12", "7897897897");

insert into privata values
("ABCDEFHIJ0000003", "ABCDEFHIJ0000011", "2023-01-01", "STUD0001"),
("ABCDEFHIJ0000002", "ABCDEFHIJ0000012", "2022-09-29", "STUD0002");