SELECT
    skills.name,
    skills.id,
    resources.title,
    resources.id,
    resources_skills.resource_id,
    resources_skills.skill_id
FROM skills
JOIN resources_skills ON skills.id = resources_skills.skill_id
JOIN resources ON resources.id = resources_skills.resource_id
WHERE skills.name = 'javascript';