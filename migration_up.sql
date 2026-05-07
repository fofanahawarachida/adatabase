-- Création de l'enum pour le type de ressource
CREATE TYPE resource_type AS ENUM ('guide', 'video', 'exercice', 'projet');

-- Table themes
CREATE TABLE themes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

-- Table resources
CREATE TABLE resources (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    url TEXT NOT NULL,
    description TEXT,
    type resource_type NOT NULL,
    is_ada BOOLEAN DEFAULT false,
    theme_id INTEGER REFERENCES themes(id) ON DELETE SET NULL,
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Table skills
CREATE TABLE skills (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);

-- Table pivot resources_skills
CREATE TABLE resources_skills (
    resource_id INTEGER REFERENCES resources(id) ON DELETE CASCADE,
    skill_id INTEGER REFERENCES skills(id) ON DELETE CASCADE,
    PRIMARY KEY (resource_id, skill_id)
);
