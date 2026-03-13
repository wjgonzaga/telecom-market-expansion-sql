# Telecom Network Expansion Analytics

## Overview
This project analyzes U.S. city demographic data to identify markets with strong potential for telecom fiber network expansion.

The analysis uses SQL to evaluate cities by population and population density as proxies for customer demand and deployment efficiency.

## Business Problem
Telecom providers need to prioritize markets where infrastructure investment is more likely to generate strong returns. This project demonstrates a simple SQL-based approach to identifying high-opportunity markets using publicly available city-level data.

## Dataset
- US Cities Database
- Source: https://simplemaps.com/data/us-cities

## Project Structure
- `data/raw/uscities.csv`     - raw source dataset
- `sql/01_schema.sql`         - table definition
- `sql/05_analysis.sql`       - initial market analysis query
- `sql/06_market_scoring.sql` - market opportunity scoring query
- `docs/data_dictionary.md`   - dataset documentation

## Analysis Approach
1. Load city demographic data
2. Define relational schema
3. Analyze city population and density
4. Rank markets using a simple opportunity scoring model

## Scoring Logic
The MVP opportunity score is based on:

`Opportunity Score = 
( Population / 100,000 × 0.6 ) +
( Population Density / 100 × 0.4 )'

* Population and density are scaled and weighted to approximate both market demand and infrastructure deployment efficiency. Population is weighted more heavily to reflect the importance of total addressable market size.

This serves as a simple proxy for:
- market demand
- customer concentration
- relative infrastructure efficiency

## Key Insight
Cities with both high population and high density represent stronger candidates for fiber network expansion because they combine concentrated demand with potentially more efficient infrastructure deployment.

## Results Summary

The SQL analysis produced a ranked list of U.S. cities based on an opportunity score derived from population and population density. These variables serve as proxies for potential customer demand and infrastructure deployment efficiency.

The results highlight that large, densely populated metropolitan areas consistently rank highest in expansion potential. Cities such as New York, Los Angeles, Chicago, and Philadelphia emerge as strong candidates due to their combination of high population and concentrated geographic demand.

While this simplified model focuses on demographic demand indicators, the results demonstrate how SQL-based analytics can support early-stage telecom infrastructure planning by identifying markets with favorable demand characteristics.

Future iterations of the model could incorporate additional variables such as broadband availability, competitive provider presence, and median income levels to produce a more comprehensive market prioritization framework.

See `docs/sample_output.md` for an example ranked output table from the scoring model.

## Example output (top markets by opportunity score):

| Rank | City          | State | Population | Density | Opportunity 
| ---- | ------------- | ----- | ---------- | ------- | ------------ |
| 1    | New York      | NY    | 8,622,698  | 28,188  | 63.45        |
| 2    | Los Angeles   | CA    | 3,990,456  | 8,484   | 27.37        |
| 3    | Chicago       | IL    | 2,705,994  | 11,883  | 22.81        |
| 4    | Philadelphia  | PA    | 1,584,138  | 11,379  | 17.43        |
| 5    | San Francisco | CA    | 883,305    | 18,679  | 12.76        |
| 6    | Boston        | MA    | 694,583    | 13,841  | 9.72         |
| 7    | Washington    | DC    | 702,455    | 11,850  | 8.96         |
| 8    | Seattle       | WA    | 744,955    | 8,358   | 7.81         |
| 9    | Miami         | FL    | 470,914    | 13,468  | 8.22         |
| 10   | Atlanta       | GA    | 498,044    | 3,685   | 4.46         |

## Dashboard Visualization

![Telecom Expansion Dashboard](visuals/telecom_expansion_dashboard.png)


## Future Enhancements
- Load and execute analysis in PostgreSQL
- Add broadband availability data
- Add competition and income indicators