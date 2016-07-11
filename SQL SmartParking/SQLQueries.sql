---- care este intervalul orar cu cei mai multi utilizatori ai parcarii (cand sunt cele mai multe masini)
SELECT DATEPART(hour,DataSosire) as Hour1,DATEPART(hour,DataSosire)+1 as Hour2,Count(*) as Cnt
FROM Vizita
GROUP BY DATEPART(hour,DataSosire),DATEPART(hour,DataSosire)
ORDER BY Count(*) DESC


--- incasarile obtinute de la clientii mall-ului prin utilizarea parcarii pe o luna, zi, an 
SELECT SUM((CASE WHEN Durata > 2 THEN (Durata-2)*2 ELSE 0 END)) [Incasari an 2016]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016

SELECT SUM((CASE WHEN Durata > 2 THEN (Durata-2)*2 ELSE 0 END)) [Incasari iulie 2016]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016
AND DATEPART(month,DataSosire) = 7

SELECT SUM((CASE WHEN Durata > 2 THEN (Durata-2)*2 ELSE 0 END)) [Incasari 5 iulie 2016]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016
AND DATEPART(month,DataSosire) = 7
AND DATEPART(day,DataSosire) = 5



--numar mediu de masini in fiecare ora in ziua de 5 iulie 2016
DECLARE @year INT
DECLARE @month INT
DECLARE @day INT
SET @year = 2016
SET @month = 7
SET @day = 5

SELECT s.[Hour], COUNT(*) AS Vizite
FROM (SELECT DATEPART(hour,DataSosire) AS Hour
	  FROM Vizita 
	  WHERE DATEPART(year,DataSosire) = @year
		AND DATEPART(month,DataSosire) = @month
		AND DATEPART(day,DataSosire) = @day) s
GROUP BY s.[Hour] 


--numar mediu de masini pe zi pe parcursul anului 2016
SELECT COUNT(*)/365.00
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016


--numar mediu de masini pe zi parcursul saptamanii 1-7 iulie 2016
DECLARE @d1 DATETIME
DECLARE @d2 DATETIME
SET @d1 = '2016-07-01 00:00:00.000'
SET @d2 = '2016-07-07 23:59:59.999'

SELECT COUNT(*)/7.00
FROM Vizita
WHERE DataSosire >= @d1 AND DataSosire <= @d2


------cel mai fidel client-------
SELECT m.ID,m.NumarInmatriculare,SUM(v.Durata) [TimpTotal],COUNT(*) as Vizite
FROM Vizita v
INNER JOIN Masina m
ON v.MasinaID = m.ID
GROUP BY m.ID,m.NumarInmatriculare
ORDER BY TimpTotal DESC


--intervalul mediu petrecut de clienti in parcare 
SELECT AVG(Durata)
FROM Vizita


--- care este a fost cea mai aglomerata zi din anul 2016 in ceea ce priveste parcarea
SELECT DATEPART(day,DataSosire) as Zi,DATEPART(month,DataSosire) as Luna, COUNT(*) [Numar masini parcate]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016
GROUP BY DATEPART(day,DataSosire),DATEPART(month,DataSosire)
ORDER BY COUNT(*) DESC


----- care este cea mai plina zi din saptamana 1-7 iulie 2016
DECLARE @d1 DATETIME
DECLARE @d2 DATETIME
SET @d1 = '2016-07-01 00:00:00.000'
SET @d2 = '2016-07-07 23:59:59.999'

SELECT DATENAME(dw,DataSosire),COUNT(*)
FROM Vizita
WHERE DataSosire >= @d1 AND DataSosire <= @d2
GROUP BY DATENAME(dw,DataSosire)
ORDER BY COUNT(*) DESC





------ care este intervalul orar cu cei mai multi utilizatori ai parcarii (cand sunt cele mai multe masini)
-----INTERSECTIE A INTERVALELOR (trebuie repetat pana ramane un singur interval)

--SELECT a.ID AS Interval1ID,b.ID AS Interval2ID,
--    (CASE WHEN a.DataSosire < b.DataSosire
--			THEN b.DataSosire
--			ELSE a.DataSosire END) AS OverlapStartTime,
--			(CASE WHEN a.DataPlecare < b.DataPlecare
--			THEN a.DataPlecare
--			ELSE b.DataPlecare END) AS OverlapEndTime,
--    a.MasinaID AS MasinaID1,
--    b.MasinaID AS MasinaID2
--FROM Vizita AS a
--INNER JOIN Vizita AS b ON
--    a.ID <> b.ID AND
--    --- a se termina inaintea inceperii lui b
--    a.DataPlecare>b.DataSosire AND
--    --- a incepe inaintea lui terminarii lui b
--    a.DataSosire<b.DataPlecare
----- elimina duplicatele
--WHERE a.DataSosire<b.DataSosir
