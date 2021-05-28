# Результатом запроса является информация о транзакциях, 
# сумма которых не менее 5000, 
# совершенных 10 января 2021 года 
# или совершенных пользователями с id, превышающими 1006.

SELECT * FROM transaction WHERE NOT ((date = ‘10/01/2021’ OR id > 1006) AND
amount >= 5000)