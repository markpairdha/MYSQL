# Write your MySQL query statement below
SELECT Scores.Score,COUNT(Util.Score) as Rank
FROM Scores,(SELECT DISTINCT Scores.Score FROM Scores) Util
WHERE Util.Score >= Scores.Score
GROUP BY Scores.Id
ORDER BY Scores.Score DESC
