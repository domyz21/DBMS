select nome, cognome, CF, citta, via
	from PERSONA
	where citta = "Cancello Scalo" AND via = "Scampia" OR via = "XXI Giugno"
	order by via asc;
/*---------------------------------------*/
select p.nome, p.cognome, p.CF
	from persona p join medico m on p.CF = m.CF
	where m.specializzazione = "Cardiologia";
/*---------------------------------------*/
select sum(prezzo) AS TotPrezzi
	from VISITA;
/*---------------------------------------*/
select cod_osp, sum(stipendio) AS stipendi_tot
	from LAVORO
    where data_fine is null
	group by cod_osp;
/*---------------------------------------*/
select ospedale, stip_medio
	from OSPSTIP
	where stip_medio > 3000;
/*---------------------------------------*/
	select ospedale, stip_medio
	from OSPSTIP
	where stip_medio = (select min(stip_medio) from OSPSTIP);
/*---------------------------------------*/
select p.nome, p.cognome, CF_medico, cod_osp
from LAVORO l join persona p on p.CF = l.CF_medico
where cod_osp = "OSP001" AND
	CF_medico NOT IN (select CF_medico
					from LAVORO
					where cod_osp = "OSP002");
/*---------------------------------------*/
select p.CF, pr.nome, pr.cognome
	from PAZIENTE P join Persona pr on p.CF = pr.CF
	where NOT EXISTS (select *
				from MEDICO M
				where NOT EXISTS(	select *
							from VISITA V
							where V.CF_paziente = P.CF AND
								V.CF_medico = M.CF)
				);