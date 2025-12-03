CREATE TABLE users (
  nom VARCHAR(30),
  prenom VARCHAR(30),
  user_name VARCHAR(30) primary key,
  email VARCHAR(60),
  date_inscricption DATE,
  estAdmin boolean
);


CREATE TABLE categorie (
  id_categorie INT primary key auto_increment,,
  nom_categorie VARCHAR(30)
);


CREATE TABLE article (
  id_article INT primary key auto_increment,
  titre VARCHAR(30),
  contenu TEXT,
  date_creation DATE,
  date_modification DATE,
  nom_createur VARCHAR(30),
  id_categorie INT,
  FOREIGN KEY (nom_createur) REFERENCES users(user_name),
  FOREIGN KEY (id_categorie) REFERENCES categorie(id_categorie)
);


CREATE TABLE commentaire (
  id_cmt INT primary key auto_increment,
  contenu_cmt TEXT,
  date_creation_cmt DATE,
  id_article INT,
  user_name VARCHAR(30)
  FOREIGN KEY (id_article) REFERENCES article(id_article),
  FOREIGN KEY (user_name) REFERENCES users(user_name)
);


INSERT INTO users (nom, prenom, user_name, email, date_inscricption, estAdmin) VALUES
('Blog', 'Admin', 'admin_blog', 'admin@blogcms.com', '2024-01-15', 1),
('Dubois', 'Marie', 'marie_dubois', 'marie.dubois@email.com', '2024-02-10', 0),
('Leroy', 'Pierre', 'pierre_leroy', 'pierre.leroy@gmail.com', '2024-02-15', 0),
('Martin', 'Sophie', 'sophie_martin', 'sophie.martin@protonmail.com', '2024-03-01', 0),
('Dupont', 'Jean', 'jean_dupont', 'jean.dupont@yahoo.fr', '2024-03-10', 0),
('Bernard', 'Lucie', 'lucie_bernard', 'lucie.bernard@email.com', '2024-03-15', 0),
('Petit', 'Thomas', 'thomas_petit', 'thomas.petit@gmail.com', '2024-03-20', 0),
('Roux', 'Julie', 'julie_roux', 'julie.roux@protonmail.com', '2024-04-01', 0),
('Vincent', 'Marc', 'marc_vincent', 'marc.vincent@yahoo.fr', '2024-04-05', 0),
('Leroy', 'Isabelle', 'isabelle_leroy', 'isabelle.leroy@gmail.com', '2024-04-10', 0),
('Morel', 'David', 'david_morel', 'david.morel@email.com', '2024-04-15', 0),
('Duval', 'Caroline', 'caroline_duval', 'caroline.duval@protonmail.com', '2024-05-02', 1),
('Lambert', 'Nicolas', 'nicolas_lambert', 'nicolas.lambert@gmail.com', '2024-05-10', 0),
('Garnier', 'Elodie', 'elodie_garnier', 'elodie.garnier@email.com', '2024-05-20', 0),
('Chevalier', 'Antoine', 'antoine_chevalier', 'antoine.chevalier@yahoo.fr', '2024-06-01', 0),
('Royer', 'Clara', 'clara_royer', 'clara.royer@protonmail.com', '2024-06-10', 0),
('Menard', 'Quentin', 'quentin_menard', 'quentin.menard@gmail.com', '2024-06-15', 0),
('Colin', 'Amelie', 'amelie_colin', 'amelie.colin@email.com', '2024-07-03', 0),
('Gauthier', 'Vincent', 'vincent_gauthier', 'vincent.gauthier@protonmail.com', '2024-07-12', 1),
('Lebrun', 'Marine', 'marine_lebrun', 'marine.lebrun@gmail.com', '2024-07-20', 0);



INSERT INTO categorie (id_categorie, nom_categorie) VALUES
(1, 'Technologie'),
(2, 'Santé'),
(3, 'Voyage'),
(4, 'Cuisine'),
(5, 'Sport'),
(6, 'Éducation'),
(7, 'Finance'),
(8, 'Mode');




INSERT INTO article (id_article, titre, contenu, date_creation, date_modification, nom_createur, id_categorie) VALUES
(1, 'Les Nouvelles Tensions Technologiques en 2024', 'Explorez les technologies émergentes qui vont transformer notre quotidien cette année...', '2024-02-20', '2024-02-21', 'pierre_leroy', 1),
(2, 'Comment Maintenir une Bonne Santé au Travail', 'Des conseils pratiques pour préserver votre santé physique et mentale...', '2024-02-25', '2024-02-25', 'sophie_martin', 2),
(4, 'Recette du Gâteau au Chocolat Fondant', 'Une recette simple et rapide pour un gâteau au chocolat irrésistible...', '2024-03-10', '2024-03-11', 'lucie_bernard', 4),
(5, 'Préparation Marathon : Guide Complet du Débutant', 'Tout ce qu''il faut savoir pour préparer son premier marathon...', '2024-03-15', '2024-03-16', 'marc_vincent', 5),
(6, 'Apprendre à Coder en 6 Mois : Mon Parcours', 'Comment j''ai appris la programmation web en moins de 6 mois...', '2024-03-20', '2024-03-21', 'david_morel', 6),
(7, 'Investir dans la Cryptomonnaie en 2024', 'Guide pour débutants sur les opportunités et risques...', '2024-04-01', '2024-04-02', 'nicolas_lambert', 7),
(8, 'Les Tendances Mode Printemps-Été 2024', 'Découvrez les must-have de la saison prochaine...', '2024-04-05', '2024-04-06', 'antoine_chevalier', 8),
(9, 'Les Avantages du Télétravail pour la Productivité', 'Comment le travail à distance peut booster vos performances...', '2024-04-10', '2024-04-11', 'amelie_colin', 1),
(10, 'Les Superaliments pour Renforcer l''Immunité', '10 aliments à intégrer dans votre alimentation pour être en forme...', '2024-04-15', '2024-04-16', 'clara_royer', 2),
(11, 'Voyager en Solo : Mes Conseils Sécurité', 'Guide pratique pour voyager seul en toute sécurité...', '2024-04-20', '2024-04-21', 'amelie_colin', 3),
(13, 'Yoga pour Débutants : Programme sur 30 Jours', 'Un programme progressif pour découvrir le yoga...', '2024-05-10', '2024-05-11', 'jean_dupont', 5),
(14, 'Les Méthodes d''Apprentissage des Langues Efficaces', 'Comparatif des différentes approches pour apprendre une langue...', '2024-05-20', '2024-05-21', 'lucie_bernard', 6),
(15, 'Économiser pour Son Premier Achat Immobilier', 'Stratégies pour constituer son apport personnel...', '2024-06-01', '2024-06-02', 'marc_vincent', 7),
(16, 'Le Style Minimaliste : Less is More', 'Comment adopter une garde-robe minimaliste et élégante...', '2024-06-10', '2024-06-11', 'david_morel', 8),
(17, 'Introduction à l''Intelligence Artificielle', 'Comprendre les bases de l''IA et ses applications...', '2024-06-15', '2024-06-16', 'nicolas_lambert', 1),
(19, 'Voyager avec un Petit Budget', 'Astuces pour voyager sans se ruiner...', '2024-07-12', '2024-07-13', 'clara_royer', 3),
(20, 'Les Plats Typiques de la Cuisine Marocaine', 'Découverte des saveurs et traditions culinaires du Maroc...', '2024-07-20', '2024-07-21', 'amelie_colin', 4),
(22, 'Les Outils Numériques pour l''Éducation', 'Les meilleures applications pour apprendre et enseigner...', '2024-08-10', '2024-08-11', 'marine_lebrun', 6),
(23, 'Comprendre les Marchés Boursiers', 'Guide pour débutants en bourse...', '2024-08-20', '2024-08-21', 'pierre_leroy', 7),
(24, 'Le Style Casual Chic au Bureau', 'Comment être élégant tout en restant confortable...', '2024-09-01', '2024-09-02', 'sophie_martin', 8),
(25, 'La Sécurité Informatique pour les Particuliers', 'Protégez vos données et votre vie privée en ligne...', '2024-09-10', '2024-09-11', 'jean_dupont', 1),
(26, 'L''Importance du Sommeil pour la Santé', 'Comment améliorer la qualité de son sommeil...', '2024-09-20', '2024-09-21', 'lucie_bernard', 2),
(27, 'Les Plus Beaux Villages de France', 'Découverte des villages classés parmi les plus beaux de France...', '2024-10-01', '2024-10-02', 'marc_vincent', 3),
(28, 'Les Techniques de Cuisson Santé', 'Cuire ses aliments tout en préservant les nutriments...', '2024-10-10', '2024-10-11', 'david_morel', 4),
(29, 'Le CrossFit : Avantages et Risques', 'Analyse complète de cette discipline sportive...', '2024-10-20', '2024-10-21', 'nicolas_lambert', 5),
(30, 'Apprendre par le Jeu : La Ludopédagogie', 'Utiliser le jeu comme outil d''apprentissage...', '2024-11-01', '2024-11-02', 'antoine_chevalier', 6);




INSERT INTO commentaire (id_cmt, contenu_cmt, date_creation_cmt, id_article, user_name) VALUES
(1, 'Excellent article, très bien documenté !', '2024-02-21',),
(2, 'Je ne suis pas tout à fait d''accord sur certains points.', '2024-02-22'),
(3, 'Cela m''a beaucoup aidé, merci pour ces conseils.', '2024-02-25'),
(4, 'Très bel article, les photos sont magnifiques !', '2024-02-26'),
(5, 'Je trouve que certains conseils sont dangereux.', '2024-02-27'),
(6, 'Parfait pour les débutants comme moi, merci !', '2024-02-28'),
(7, 'Très détaillé, j''ai appris beaucoup de choses.', '2024-02-29'),
(8, 'C''est exactement ce que je cherchais, merci !', '2024-03-01'),
(9, 'Je ne comprends pas la partie sur les investissements.', '2024-03-02'),
(10, 'Super article, j''ai hâte de lire la suite !', '2024-03-03', 9),
(11, 'Les tendances présentées sont déjà dépassées.', '2024-03-04'),
(12, 'Je vais essayer la recette ce week-end !', '2024-03-05')
(13, 'Bonnes astuces pour économiser, merci.', '2024-03-06'),
(14, 'Le style minimaliste n''est pas pour tout le monde.', '2024-03-07'),
(15, 'Très bon tutoriel sur l''IA pour débutants.', '2024-03-08'),
(16, 'La méditation a changé ma vie, merci pour l''article.', '2024-03-09'),
(17, 'Voyager avec un petit budget c''est possible !', '2024-03-10'),
(18, 'Les plats marocains sont délicieux, merci.', '2024-03-11'),
(19, 'Je me prépare pour le ski, merci pour les conseils.', '2024-03-12'),
(20, 'Quelles applications recommandez-vous pour les enfants ?', '2024-03-13'),
(21, 'La bourse me fait peur, merci pour les explications.', '2024-03-14'),
(22, 'Je cherche justement un style casual chic, merci !', '2024-03-15'),
(23, 'Important de parler de sécurité informatique.', '2024-03-16'),
(24, 'Je dors mal, merci pour ces conseils.', '2024-03-17'),
(25, 'J''ai visité certains villages, ils sont magnifiques !', '2024-03-18');


alter table article add statu varchar(30) DEFAULT "published";

alter table users add passwords varchar(30) DEFAULT "user1234"

update users set users.password="admin1234" WHERE users.estAdmin=1;

ALTER TABLE `commentaire` CHANGE `date_creation_cmt` `date_creation_cmt` date default (current_date);

-- 1. INSERT - Création d'un nouvel utilisateur

INSERT INTO `users`(`nom`, `prenom`, `user_name`, `email`, `estAdmin`, `passwords`) VALUES ("jud","pont","jdupont","jean.dupont@email.com",0, "$2y$10$...");





