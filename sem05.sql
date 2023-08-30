--Создание представления для автомобилей стоимостью до 25 000 долларов:
CREATE VIEW CheapCars AS
SELECT Name
FROM Cars
WHERE Cost < 25000;

--Изменение порога стоимости в существующем представлении:
ALTER VIEW CheapCars AS
SELECT Name
FROM Cars
WHERE Cost < 30000;

--Создание представления для автомобилей марки "Шкода" и "Ауди":
CREATE VIEW SkodaAudiCars AS
SELECT Name, Brand, Cost
FROM Cars
WHERE Brand IN ('Шкода', 'Ауди');

--Вывод названия и цены для всех анализов, продававшихся с 5 февраля 2020 года и в течение следующей недели:
CREATE VIEW AnalysisSales AS
SELECT a.an_name, a.an_price
FROM Analysis a
JOIN Orders o ON a.an_id = o.ord_an
WHERE o.ord_datetime BETWEEN '2020-02-05' AND DATEADD('WEEK', 1, '2020-02-05');

