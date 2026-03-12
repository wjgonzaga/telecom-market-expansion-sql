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
- `data/raw/uscities.csv` - raw source dataset
- `sql/01_schema.sql` - table definition
- `sql/05_analysis.sql` - initial market analysis query
- `sql/06_market_scoring.sql` - market opportunity scoring query
- `docs/data_dictionary.md` - dataset documentation

## Analysis Approach
1. Load city demographic data
2. Define relational schema
3. Analyze city population and density
4. Rank markets using a simple opportunity scoring model

## Scoring Logic
The MVP opportunity score is based on:

`population × density`

This serves as a simple proxy for:
- market demand
- customer concentration
- relative infrastructure efficiency

## Key Insight
Cities with both high population and high density represent stronger candidates for fiber network expansion because they combine concentrated demand with potentially more efficient infrastructure deployment.

## Future Enhancements
- Load and execute analysis in PostgreSQL
- Add broadband availability data
- Add competition and income indicators
- Build a Power BI dashboard for market visualization