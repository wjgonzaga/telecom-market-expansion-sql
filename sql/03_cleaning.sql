-- Cleaning and transformation step
-- Moves staged city demographic data into the analytical table after basic filtering

-- Included to demonstrate the intended cleaning and transformation step from raw staging to analytical model

INSERT INTO city_demographics (
    city,
    state_id,
    state_name,
    county_name,
    latitude,
    longitude,
    population,
    density
)
SELECT
    TRIM(city) AS city,
    TRIM(state_id) AS state_id,
    TRIM(state_name) AS state_name,
    TRIM(county_name) AS county_name,
    latitude,
    longitude,
    population,
    density
FROM stg_city_demographics_raw
WHERE population IS NOT NULL
  AND density IS NOT NULL;