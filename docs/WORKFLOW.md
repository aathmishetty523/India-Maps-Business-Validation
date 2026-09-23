# Project Workflow

1. Collect business/location records from a public map-data source.
2. Standardize text fields.
3. Validate required attributes.
4. Validate Indian PIN-code format.
5. Detect duplicate business records.
6. Validate coordinate ranges.
7. Flag missing category/opening-hours information.
8. Calculate a record-level data-quality score.
9. Export review-ready records.
10. Analyze the results with SQL.
11. Build a Power BI dashboard.
12. Manually research flagged records before deciding whether they should be corrected.

The last step is important: a validation flag means "review required"; it does not automatically prove that the source record is wrong.
