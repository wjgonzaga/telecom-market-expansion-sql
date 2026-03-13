
-- Reusable analytical view with scaled and weighted opportunity scoring

CREATE VIEW vw_city_opportunity_base AS
SELECT
    city,
    state_name,
    population,
    density,
    ROUND(
        ((population / 100000.0) * 0.6) +
        ((density / 100.0) * 0.4),
        2
    ) AS opportunity_score
FROM city_demographics
WHERE population IS NOT NULL
  AND density IS NOT NULL;