SELECT
    city,
    state_name,
    population,
    density,
    ROUND((population / 1000.0) * density, 2) AS opportunity_score
FROM city_demographics
WHERE population IS NOT NULL
  AND density IS NOT NULL
ORDER BY opportunity_score DESC
LIMIT 25;