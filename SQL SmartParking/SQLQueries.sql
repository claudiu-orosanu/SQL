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
SELECT COUNT(*)/(7.00*24.00)
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
SELECT DATEPART(day,DataSosire) as Zi, COUNT(*) [Numar masini parcate]
FROM Vizita
WHERE DATEPART(year,DataSosire) = 2016
GROUP BY DATEPART(day,DataSosire)
ORDER BY COUNT(*) DESC

----- care este cea mai plina zi din saptamana 1-7 iulie 2016
SELECT DATENAME(dw,DataSosire),COUNT(*)
FROM Vizita
WHERE DataSosire BETWEEN '2016-07-01 00:00:00.000' AND '2016-07-07 23:59:59.999'
GROUP BY DATENAME(dw,DataSosire)
ORDER BY COUNT(*) DESC



