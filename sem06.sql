--функции для форматирования количества секунд в формат "дни часы минуты секунды":
CREATE FUNCTION FormatSeconds(seconds INT) RETURNS VARCHAR(100)
BEGIN
    DECLARE days INT;
    DECLARE hours INT;
    DECLARE minutes INT;
    DECLARE formatted VARCHAR(100);

    SET days = seconds / (24 * 3600);
    SET seconds = seconds % (24 * 3600);
    SET hours = seconds / 3600;
    SET seconds = seconds % 3600;
    SET minutes = seconds / 60;
    SET seconds = seconds % 60;

    SET formatted = CONCAT(days, ' days ', hours, ' hours ', minutes, ' minutes ', seconds, ' seconds ');

    RETURN formatted;
END;

--вывести только четные числа от 1 до 10
SELECT num
FROM (SELECT 1 AS num UNION SELECT 2 UNION SELECT 3 UNION SELECT 4 UNION SELECT 5 UNION SELECT 6 UNION SELECT 7 UNION SELECT 8 UNION SELECT 9 UNION SELECT 10) AS numbers
WHERE num % 2 = 0;
