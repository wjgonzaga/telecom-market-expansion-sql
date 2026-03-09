SELECT
    city,
    state_name,
    population,
    density
FROM city_demographics
WHERE population IS NOT NULL  --MISSING VALUES FILTERED OUT
  AND density IS NOT NULL     --MISSING VALUES FILTERED OUT
ORDER BY population DESC, density DESC
LIMIT 25;

SELECT
    city,
    state_name,
    population,
    density,
    ROUND(population * density, 2) AS market_signal
-- THIS MARKET SIGNAL SHOWS BIGGER CITY | DENSER CITY | STRONGER INITAL EXPANSION SIGNAL

FROM city_demographics
WHERE population IS NOT NULL
  AND density IS NOT NULL
ORDER BY market_signal DESC
LIMIT 25;