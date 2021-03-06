SELECT CONCAT(name, CONCAT('(', LEFT(occupation, 1), ')')) AS name
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(occupation), ' ', LOWER(occupation), 's.')
FROM occupations
GROUP BY occupation
ORDER BY COUNT(occupation), occupation;