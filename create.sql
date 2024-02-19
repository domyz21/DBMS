/*create database Progetto;*/
/*drop database progetto;*/
create table persona (
Cf char(16) not null, 
nome varchar(255) not null, 
cognome varchar(255) not null, 
sesso enum("m","f") not null, 
luogo_nascita varchar(255) not null, 
data_nascita date not null, 
citta varchar(255) not null, 
cap char(5) not null, 
via varchar(255) not null, 
civico varchar(3) not null,
primary key (CF)
);

create table paziente(
CF char(16) not null,
foreign key (CF) references persona(CF)
);

create table telefono(
numero varchar(10) not null,
CF char(16) not null,
primary key (numero),
foreign key (CF) references persona(CF)
);

create table medico(
CF char(16) not null,
matricola char(10) not null,
specializzazione varchar(255) not null,
primary key (CF),
foreign key (CF) references persona(CF),
unique (matricola)
);

create table ospedale(
cod_osp char(6) not null,
num_reparti varchar(3) not null,
num_lavoratori varchar(5) not null,
citta varchar(255) not null, 
cap char(5) not null, 
via varchar(255) not null, 
civico varchar(3) not null,
primary key(cod_osp)
);

create table reparto(
cod_osp char(6) not null,
nome varchar(255) not null,
num_personale varchar(3) not null,
num_stanze varchar(3) not null,
CF_direttore char(16) not null,
primary key(cod_osp, nome),
foreign key (cod_osp) references ospedale(cod_osp),
foreign key (CF_direttore) references medico(CF)
);

create table visita(
CF_paziente char(16) not null,
CF_medico char(16) not null,
data date not null,
problematica varchar(255) not null,
prezzo double(7,2) not null,
primary key (CF_paziente, CF_medico, data),
foreign key (CF_paziente) references paziente(CF),
foreign key (CF_medico) references medico(CF)
);

create table lavoro(
CF_medico char(16) not null,
cod_osp char(6) not null,
data_assunzione date not null, 
stipendio double(7,2) not null,
data_fine date default null,
primary key (CF_medico, cod_osp, data_assunzione),
foreign key (CF_medico) references medico(CF),
foreign key (cod_osp) references ospedale(cod_osp)
);

create table intramoenia(
CF_paziente char(16) not null,
CF_medico char(16) not null,
data date not null,
quota_privata double(7,2) not null,
primary key (CF_paziente, CF_medico, data),
foreign key (CF_paziente, CF_medico, data) references visita(CF_paziente, CF_medico, data)
);

create table impegnativa(
CF_paziente char(16) not null,
CF_medico char(16) not null,
data date not null,
numero_impegnativa varchar(10) not null,
primary key (CF_paziente, CF_medico, data),
unique (numero_impegnativa),
foreign key (CF_paziente, CF_medico, data) references visita(CF_paziente, CF_medico, data)
);

create table studio(
cod_studio varchar(8) not null,
citta varchar(255) not null, 
via varchar(255) not null, 
civico varchar(3) not null,
primary key (cod_studio)
);

create table privata(
CF_paziente char(16) not null,
CF_medico char(16) not null,
data date not null,
cod_studio varchar(8) not null,
primary key (CF_paziente, CF_medico, data),
foreign key (CF_paziente, CF_medico, data) references visita(CF_paziente, CF_medico, data),
foreign key (cod_studio) references studio(cod_studio)
);

create view OSPSTIP (ospedale, stip_medio) AS (
		select cod_osp, AVG(stipendio)
		from LAVORO
        where data_fine is null
		group by cod_osp);
