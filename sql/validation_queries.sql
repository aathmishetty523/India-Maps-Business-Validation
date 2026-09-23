-- Load validated_business_data.csv into a table named business_validation

-- 1. Records requiring review
SELECT *
FROM business_validation
WHERE validation_status = 'REVIEW';

-- 2. Average quality score
SELECT ROUND(AVG(data_quality_score), 2) AS avg_quality_score
FROM business_validation;

-- 3. Review records by city
SELECT city,
       COUNT(*) AS total_records,
       SUM(CASE WHEN validation_status='REVIEW' THEN 1 ELSE 0 END) AS review_records
FROM business_validation
GROUP BY city
ORDER BY review_records DESC;

-- 4. Most common validation issues
SELECT
  SUM(CASE WHEN invalid_pincode THEN 1 ELSE 0 END) AS invalid_pincode,
  SUM(CASE WHEN duplicate_business THEN 1 ELSE 0 END) AS duplicate_business,
  SUM(CASE WHEN missing_business_name THEN 1 ELSE 0 END) AS missing_name,
  SUM(CASE WHEN missing_category THEN 1 ELSE 0 END) AS missing_category,
  SUM(CASE WHEN missing_opening_hours THEN 1 ELSE 0 END) AS missing_hours
FROM business_validation;

-- 5. Category quality
SELECT category,
       COUNT(*) AS records,
       ROUND(AVG(data_quality_score),2) AS avg_quality_score
FROM business_validation
GROUP BY category
ORDER BY avg_quality_score ASC;
