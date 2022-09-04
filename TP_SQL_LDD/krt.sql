drop database if exists krt ;
create database krt ;

use krt  ;

create table Fournisseur(
				numFournisseur integer(20),
				nomFournisseur varchar(20),
				adrFournisseur varchar(40),
				villeFournisseur varchar(40),
				primary key (numFournisseur)
);

create table Article(
				numArticle integer(20),
				libelleArticle varchar(20),
				stock integer(20) default 0,
				PrixUnitHT float(40) default 0,
				primary key (numArticle)
);

create table Achat(
				numFournisseur integer(20),
				numArticle integer(20),
				prixAchat float(20),
				délaiLivraison integer(20),
				enCommande integer (20),
				Foreign key (numFournisseur) references Fournisseur(numFournisseur) ON DELETE CASCADE,
				Foreign key (numArticle) references Article(numArticle) ON DELETE CASCADE
);

insert into Fournisseur values (40, 'Dubois', '27 rue du Parc', 'Antibes');
insert into Fournisseur values (41, 'Dupont', '25 bf Marchal', 'Cannes');
insert into Fournisseur values (42, 'Dulin', '108, Corniche Bellevue', 'Nice');
insert into Fournisseur values (43, 'Durand', '56, avenue de Fabron', 'Nice');
insert into Fournisseur values (50, 'Foch', '27 rue du Parc', 'Menton');
insert into Fournisseur values (90, 'Serrano', '27 rue du Parc', 'Nice');
insert into Fournisseur values (91, 'Taillefer', '27 rue du Parc', 'Cagnes Sur Mer');

insert into Article values (356, 'Courroie', 48, 41.00);
insert into Article values (365, 'Arbre à came', 20, 12.10);
insert into Article values (398, 'Joint torique', 68, 1.92);
insert into Article values (401, 'Boulon 16/18', 1980, 1.23);
insert into Article values (402, 'Pompe à eau', 2000, 20.05);
insert into Article values (435, 'Démarreur', 1200 , 120.00);
insert into Article values (496, 'Pot d''échampement', 230, 250.00);
insert into Article values (497, 'Joint de culasse', 70, 100.00);


insert into Achat values (40, 402, 2.30, 18, 200);
insert into Achat values (41, 496, 72.00, 20, 734);
insert into Achat values (42, 497, 100.00, 15, 28);
insert into Achat values (43, 365, 12.15, 21, 50);
insert into Achat values (43, 435, 151.00, 21, 200);
insert into Achat values (50, 401, 1.10, 35, 550);
insert into Achat values (90, 497, 99.00, 28, 75);
insert into Achat values (91, 356, 41.10, 18, 230);
insert into Achat values (91, 398, 1.92, 18, 50);
insert into Achat values (91, 497, 98.90, 90, 50);
