SET @doc=0, @prof=0, @singer=0, @actor=0;

SELECT MIN(Doctor), MIN(Professor), MIN(Singer), MIN(Actor)
FROM (
    SELECT
        CASE 
            WHEN occupation = 'Doctor' THEN (@doc:=@doc+1)
            WHEN occupation = 'Professor' THEN (@prof:=@prof+1)
            WHEN occupation = 'Singer' THEN (@singer:=@singer+1)
            WHEN occupation = 'Actor' THEN (@actor:=@actor+1)
        END AS RowNum,
        CASE WHEN occupation = 'Doctor' THEN name END AS Doctor,
        CASE WHEN occupation = 'Professor' THEN name END AS Professor,
        CASE WHEN occupation = 'Singer' THEN name END AS Singer,
        CASE WHEN occupation = 'Actor' THEN name END AS Actor
    FROM occupations
    ORDER BY name
    ) AS Temp
GROUP BY RowNum;