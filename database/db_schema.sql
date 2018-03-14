create database WoodyToys;
use WoodyToys;

CREATE TABLE Client
(
id_Client char(5),
prenom varchar(25),
nom varchar(25),
adresse TEXT,
compte FLOAT(9,2),
PRIMARY KEY (id_Client)
) COMMENT='this is my client table';

CREATE TABLE Produit
(
id_Product char(5),
name varchar(25),
description TEXT,
PRIMARY KEY (id_Product)
) COMMENT='this is my Produit table';

CREATE TABLE Commande
(
id_Commande char(5),
id_Product char(5),
quantite INTEGER,
PRIMARY KEY (id_Commande, id_Product),
FOREIGN KEY (id_Product) REFERENCES Produit(id_Product)
) COMMENT='this is my Commande table';

CREATE TABLE Facture
(
id_Facture char(5),
id_Client char(5),
id_Commande char(5),
PRIMARY KEY (id_Facture, id_Client, id_Commande),
FOREIGN KEY (id_Client) REFERENCES Client(id_Client),
FOREIGN KEY (id_Commande) REFERENCES Commande(id_Commande)
) COMMENT='this is my Facture table';