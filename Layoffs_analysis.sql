-- Explanatory analysis 

SELECT *
FROM layoffs_staging2
WHERE location LIKE 'São Paulo'
ORDER BY 4 DESC
;

SELECT *
FROM layoffs_staging2
WHERE percentage_laid_off = 1
ORDER BY total_laid_off DESC
;

SELECT *
FROM layoffs_staging2;

-- To know exactly how many entries by location
SELECT location, COUNT(*)
FROM layoffs_staging2
GROUP BY location
ORDER BY 1;

SELECT company, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY company
ORDER BY 2 DESC;

SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC;

SELECT YEAR(`date`), SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY YEAR(`date`)
ORDER BY 1 DESC;

SELECT *
FROM layoffs_staging2
;

SELECT company, location, SUM(total_laid_off)
FROM layoffs_staging2
WHERE location = 'Sao Paulo'
AND total_laid_off IS NOT NULL
GROUP BY company
ORDER BY 2 DESC;

SELECT country, SUM(total_laid_off)
FROM layoffs_staging2
GROUP BY country
ORDER BY 2 DESC
PARTITION BY datedéputés_an_2024
;