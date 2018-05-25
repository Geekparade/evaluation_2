INSERT INTO `bed` (id,name)
VALUES
	(1,'Lit simple'),
	(2,'Queen size'),
	(3,'King size');

INSERT INTO `bathroom` (id,name)
VALUES
	(1,'Douche'),
	(2,'Baignoire'),
	(3,'Douche et baignoire');

INSERT INTO `suite` (id,name)
VALUES
	(1,'Nuptiale'),
	(2,'Royale'),
	(3,'Présidentielle'),
	(4,'Pas de suite');

INSERT INTO `room` (id,id_bed,id_bathroom,id_suite,reduced_mobility,name,area,floor,view,description,price) 
VALUES
	(1,1,1,4,'1','Chambre 1','20 m2','Rez de chaussée', 'Pas de vue spécifique','Petite chambre confortable à moindre coût','90.00'),
	(2,2,2,1,'1','Chambre des amoureux','40 m2','1er étage','Belle vue sur la mer','Chambre moyenne avec prestations de qualités pour votre lune de miel','150.00'),
	(3,3,2,2,'1','Chambre Napoléon','80 m2','2ème étage','Belle vue sur la mer et sur la cité','Chambre de luxe avec prestations de qualités','500.00'),
	(4,3,3,3,'1','Chambre Macron','120 m2','3ème étage','Vue imprenable à 360° sur toute la cité, la mer et la montagne','Venez vite découvrir cette chambre aux prestations luxueuses digne d\'un président','1500.00');

INSERT INTO `customers` (id,name,first_name,phone,mail,password,adress)
VALUES
	(1,'Mousse','Mickey','O1.02.03.04.05','mickeymousse@disney.land','MinnieMoussejetaime','1 rue Disney, Wonderland'),
	(2,'Sheppard','Commandant','00.09.08.07.06','masseffect@electronic.art','CerberusSucks','88 avenue de Séléné, Andromède'),
	(3,'De Riv','Geralt','00.00.666.00;00','thewitcher@redcd.projekt','Gwynbleid','666 boulevard de Novigrad, Téméria');

INSERT INTO `state` (id,name)
VALUES
	(1,'En cours'),
	(2,'Validé'),
	(3,'Annulé'),
	(4,'Payé'),
	(5,'En attente de paiement'),
	(6,'Réservé');

INSERT INTO `category_service` (id,name)
VALUES
	(1,'Matériel'),
	(2,'Bien-être'),
	(3,'Repas'),
	(4,'Spécial');

IINSERT INTO `service` (id,id_category,name,price,description)
VALUES
	(1,1,'Transat','15.00','Location de transat de luxe à la journée, pour pouvoir bronzer dans le plus grand des conforts'),
	(2,2,'Massage thaïlandais','60.00','Massage traditionnel éxécuter par des professionnels diplômés. Venez découvrir un moment de détente intégrale'),
	(3,3,'Petit déjeuner','15.00','Petit déjeuner servie en chambre avec divers choix de viennoiseries, boissons chaudes et jus de fruits de saison pressé dans nos locaux'),
	(4,4,'Mini-bar','150.00','Mise à disposition de divers spiritueux et recharger quotidiennement. Le prix est journalier. Disponible que pour les suites');

INSERT INTO `booking` (id,id_room,id_customers,id_state,start_stay,end_stay,price)
VALUES
	(1,4,2,6,'2035-01-21 12:00:00','2036-01-22 12:00:00','1500.00'),
	(2,3,1,4,'2019-04-01 14:00:00','2019-04-15 17:00:00','500.00'),
	(3,1,3,5,'2019-10-30 19:00:00','2019-11-02 09:35:45','90.00');

INSERT INTO `book_serve`(id,id_booking,id_service)
VALUES
	(1,1,4),
	(2,2,2),
	(3,3,3);