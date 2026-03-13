-- Top 25 cities by population and density
-- Used as an initial exploratory view of markets with strong demand concentration

SELECT
    city,
    state_name,
    population,
    density
FROM city_demographics
WHERE population IS NOT NULL
  AND density IS NOT NULL
ORDER BY population DESC, density DESC
LIMIT 25;

