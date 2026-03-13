-- Staging table for raw U.S. city demographic data
-- This table mirrors the structure of the source CSV before cleaning and transformation

-- Included to demonstrate a production-style staging layer for future database implementation

CREATE TABLE stg_city_demographics_raw (
    city VARCHAR(100),
    state_id VARCHAR(10),
    state_name VARCHAR(100),
    county_name VARCHAR(100),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    population INT,
    density DECIMAL(10,2)
);