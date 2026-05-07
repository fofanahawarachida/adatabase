-- Themes
INSERT INTO themes (id, name) VALUES
(1, 'Frontend'),
(2, 'Backend'),
(3, 'Base de données'),
(4, 'DevOps');


-- Resources
INSERT INTO resources (id, title, url, description, type, is_ada, theme_id) VALUES
(1, 'Introduction à React', 'https://react.dev', 'Guide officiel React', 'guide', false, 1),
(2, 'SQL pour débutants', 'https://example.com/sql', 'Cours SQL complet', 'video', false, 3),
(3, 'Exercices JavaScript', 'https://example.com/js', 'Pratique JS', 'exercice', false, 1),
(4, 'Créer une API en node', 'https://example.com/node', 'Projet node', 'projet', false, 2);


-- Skills
INSERT INTO skills (id, name) VALUES
(1, 'JavaScript'),
(2, 'React'),
(3, 'SQL'),
(4, 'PostgreSQL'),
(5, 'Node.js');


-- Resources_skills
INSERT INTO resources_skills (resource_id, skill_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 1),
(4, 1),
(4, 5);
