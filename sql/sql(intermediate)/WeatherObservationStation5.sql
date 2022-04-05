SELECT city, LENGTH(city) AS minlen FROM station
ORDER BY minlen, city
LIMIT 1;
SELECT city, LENGTH(city) AS maxlen FROM station
ORDER BY maxlen DESC, city
LIMIT 1;