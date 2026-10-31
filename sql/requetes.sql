q1.5.1SELECT * FROM produits;
Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
q1.5.2 .1SELECT* from produits where qunatite= 0;
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
q1.5.3 select *from produits  order by prix desc;
1	Huile d'olive 1 L	18.5	24	1	2026-10-01T09:00:00	1
4	Jus d'orange 1 L	3.2	0	0	2026-10-02T10:10:00	2
5	Savon de Marseille	2.9	15	1	2026-10-03T11:00:00	3
2	Couscous moyen 1 kg	2.3	40	1	2026-10-01T09:05:00	1
6	Cahier 96 pages	1.6	60	1	2026-10-04T08:30:00	4
3	Eau minérale 1,5 L	0.85	120	1	2026-10-02T10:00:00	2
q1.q5.4 SELECT p.nom AS produits, c.nom AS categories
FROM produits p 
LEFT JOIN categories c ON c.id = p.categorie_id;
 Huile d'olive 1 L	Alimentation
Couscous moyen 1 kg	Alimentation
Eau minérale 1,5 L	Boissons
Jus d'orange 1 L	Boissons
Savon de Marseille	Hygiène
Cahier 96 pages	Papeterie
q1.5.5SELECT c.nom AS categorie, COUNT(p.id) AS nombre_produits
FROM categories c
LEFT JOIN produits p ON c.id = p.categorie_id
GROUP BY c.id, c.nom;

Alimentation	2
Boissons	2
Hygiène	1
Papeterie	1
q1.5.6 SELECT SUM(prix * quantite) AS valeur_totale_stock
FROM produits;
777.5
