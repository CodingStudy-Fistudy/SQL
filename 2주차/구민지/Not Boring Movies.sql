SELECT *
FROM CINEMA
WHERE (ID%2=1) AND description != 'boring'
ORDER BY RATING DESC;
