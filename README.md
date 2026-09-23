# India Maps & Business Data Validation System

## Project objective
A portfolio project designed around map/search data-quality work: validate business records for **name, address/location, PIN code, duplicates, coordinates, category, and opening-hours completeness**.

The project is deliberately reproducible. It does not claim that a fabricated dataset is official map data. The included sample data is only for testing the validation pipeline.

## Why this project matches a Maps Evaluator/Data Analyst role
- Data validation and quality checks
- Online/location research workflow
- Indian geography and PIN-code checks
- Duplicate and consistency detection
- Structured rule-based evaluation
- SQL analysis
- Dashboard-ready quality metrics

## Tech stack
Python, Pandas, SQL, PostgreSQL/MySQL-compatible SQL, Excel/CSV, Power BI, OpenStreetMap/Overpass API.

## Project structure
```text
india_maps_business_validation/
├── data/
│   ├── raw/
│   └── processed/
├── notebooks/
├── src/
│   ├── fetch_osm.py
│   └── validate_business_data.py
├── sql/
│   └── validation_queries.sql
├── dashboard/
├── docs/
├── requirements.txt
└── README.md
```

## Validation rules
1. Required business name
2. Valid 6-digit Indian PIN code format
3. Duplicate business detection
4. Valid latitude/longitude ranges
5. City/state consistency checks where reference data is available
6. Category completeness
7. Opening-hours completeness
8. Overall data-quality score

## Run
```bash
pip install -r requirements.txt
python src/validate_business_data.py
```

The validator produces:
`data/processed/validated_business_data.csv`

## Optional OSM extraction
The OSM extractor uses the Overpass API to retrieve tagged businesses/amenities for a selected city. Keep queries small and respectful of public-server limits.

## Dashboard
Import `validated_business_data.csv` into Power BI and create:
- Total records
- Valid records
- Records requiring review
- Data quality %
- Error type distribution
- City-wise validation issues
- Category-wise validation issues
- Map of records requiring review

## Important portfolio note
Use official/reference data for final validation. The included sample CSV is a testing fixture, not a claim that the listed businesses or attributes are current official records.
