
-- Final market ranking using the reusable scored view

SELECT
    city,
    state_name,
    population,
    density,
    opportunity_score
FROM vw_city_opportunity_base
ORDER BY opportunity_score DESC
LIMIT 25;