-- 1. Récupérer la liste des thèmes
SELECT * FROM themes;

-- 2. Récupérer toutes les ressources triées par date de mise à jour
SELECT * FROM resources ORDER BY updated_at DESC;

-- 3. Récupérer uniquement le nom et l'url des ressources de type exercice
SELECT title, url FROM resources WHERE type = 'exercice';

-- 4. Récupérer le titre et la description des ressources d'Ada uniquement
SELECT title, description FROM resources WHERE is_ada = true;

-- 5. Récupérer les ressources qui ont la compétence JavaScript associée
SELECT r.*
FROM resources r
JOIN resources_skills rs ON r.id = rs.resource_id
JOIN skills s ON s.id = rs.skill_id
WHERE s.name = 'JavaScript';

-- 6. Récupérer les ressources dont le titre contient "react" (insensible à la casse)
SELECT *
FROM resources
WHERE LOWER(title) LIKE '%react%';
