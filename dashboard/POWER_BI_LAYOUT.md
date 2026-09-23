# Power BI Dashboard Layout

## Page 1 — Data Quality Overview
Cards:
- Total Businesses
- Valid Records
- Records Requiring Review
- Average Data Quality Score

Charts:
- Review records by city
- Error type distribution
- Quality score by category

## Page 2 — Map Validation
Map:
- Latitude / Longitude
- Business name
- Validation status

Use a slicer for:
- City
- State
- Category
- Validation status

## Page 3 — Record Review
Table:
Business Name | City | State | PIN Code | Quality Score | Validation Status | Error Count

Conditional formatting:
Highlight records with Validation Status = REVIEW.
