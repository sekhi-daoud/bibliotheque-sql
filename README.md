# bibliotheque-sql

Base de données MySQL de gestion d'une bibliothèque universitaire : auteurs, livres, étudiants et emprunts. Projet personnel réalisé pour m'entraîner au SQL.

## Contenu du dépôt

- bibliotheque.sql : structure des tables et données d'exemple
- requetes.sql : requêtes SQL (sélection, jointure, valeurs NULL)

## Tables

- auteur : nom, prénom, nationalité
- livre : titre, année, catégorie, nombre d'exemplaires, auteur
- etudiant : nom, prénom, téléphone, email, filière
- emprunt : date d'emprunt, date de retour prévue, date de retour réelle, étudiant et livre concernés

Un étudiant peut emprunter plusieurs livres, et un livre peut être emprunté plusieurs fois. La table emprunt fait le lien entre etudiant et livre.

## Utilisation

1. Créer la base : CREATE DATABASE gestion_bibliotheque_universitaire;
2. Importer le fichier : mysql -u root -p gestion_bibliotheque_universitaire < bibliotheque.sql
3. Exécuter les requêtes de requetes.sql

## Remarque

Les données des étudiants sont fictives.

## Outils

MySQL 8.0
Envoyé
Rédiger
Écrire à
