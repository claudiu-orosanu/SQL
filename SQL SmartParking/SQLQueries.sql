---- care este intervalul orar cu cei mai multi utilizatori ai parcarii (cand sunt cele mai multe masini)
SELECT DATEPART(hour,DataSosire) as Hour,Count(*) as Cnt
FROM Vizita
GROUP BY DATEPART(hour,DataSosire)
ORDER BY Count(*) DESC


--- incasarile obtinute de la clientii mall-ului prin utilizarea parcarii pe o luna, zi, an 
SELECT SUM((Durata-2)*2) [Incasari an 2016]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016

SELECT SUM((Durata-2)*2) [Incasari iulie 2016]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016
AND DATEPART(month,DataSosire) = 7

SELECT SUM((Durata-2)*2) [Incasari 5 iulie 2016]
FROM Vizita
WHERE DataSosire BETWEEN '2016-07-05 00:00:00.00' AND '2016-07-05 23:59:59.999'



--numar mediu de masini pe ora in ziua de 5 iulie 2016
SELECT COUNT(*)/24.00
FROM Vizita
WHERE DataSosire BETWEEN '2016-07-05 00:00:00.000' AND '2016-07-05 23:59:59.999'

--numar mediu de masini pe zi pe parcursul anului 2016
SELECT COUNT(*)/365.00
FROM Vizita
WHERE DataSosire BETWEEN '2016-01-01 00:00:00.000' AND '2016-12-31 23:59:59.999'

--numar mediu de masini pe zi parcursul saptamanii 1-7 iulie 2016
SELECT COUNT(*)/7.00
FROM Vizita
WHERE DataSosire BETWEEN '2016-07-01 00:00:00.000' AND '2016-07-07 23:59:59.999'

--cel mai fidel client
SELECT MasinaID,COUNT(*) as Vizite
FROM Vizita
GROUP BY MasinaID
ORDER BY COUNT(*) DESC

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
SELECT DATENAME(dw,DataSosire),COUNT(*)
FROM Vizita
WHERE DataSosire BETWEEN '2016-07-01 00:00:00.000' AND '2016-07-07 23:59:59.999'
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
