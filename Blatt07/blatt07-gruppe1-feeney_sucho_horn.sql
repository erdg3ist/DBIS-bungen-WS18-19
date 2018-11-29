create table Abteilung(
    AbNr    integer primary key,
    Bezeichnung varchar2(40),
    Budget  number
    check (Budget > (select sum(Gehalt) from Angestellte A where A.AbNr = AbNR)),
    AnzAng  integer,
    check (2000 <= (select avg(Gehalt) from Angestellte A where A.AbNr = AbNr))
);

create table Angestellte(
    AngNr   integer primary key,
    Name    varchar2(40),
    Gehalt  number,
    AbNr    integer,
    foreign key (AbNr) references Abteilung (AbNr)
);

create assertion AssertMaxGehalt (
    check ( not exists ( 
        select Ab.AbNr from Abteilung Ab where (select max(Ang.Gehalt) from Angestellte Ang where Ang.AbNr = Ab.AbNr) >
        2 *(select sum(Ang.Gehalt) from Angestellte Ang where Ang.AbNr = Ab.AbNr))
    )
) 


select max(Gehalt from Angstellte)

select 2 * 0.5 from Dual;