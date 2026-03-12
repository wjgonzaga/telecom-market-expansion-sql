SELECT
    city,
    state_name,
    population,
    density,
    ROUND(CAST(population * density AS numeric), 2) AS opportunity_score
FROM city_demographics
WHERE population IS NOT NULL
  AND density IS NOT NULL
ORDER BY opportunity_score DESC
LIMIT 25;