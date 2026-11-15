-- 1. Livres de la catégorie Théâtre
SELECT * FROM livre WHERE categorie = 'Théâtre';

-- 2. Livres écrits par Victor Hugo (jointure)
SELECT livre.titre, livre.annee
FROM livre
JOIN auteur ON livre.id_auteur = auteur.id
WHERE auteur.nom = 'Hugo';

-- 3. Emprunts en cours (livres non rendus)
SELECT * FROM emprunt WHERE date_de_retour_reelle IS NULL;
