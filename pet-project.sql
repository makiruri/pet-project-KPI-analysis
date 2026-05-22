-- pet project /// анализ KPI

--  как использовать:
--  1. нужно открыть сайт sqliteonline.com
--  2. вставить весь файл и нажать Run (таблицы создадутся сразу)
--  3. затем выполнить запросы З1–З5 по одному

-- ================================================================
--  ЧАСТЬ 1   ДАННЫЕ // создаём таблицы и заполняем их данными

CREATE TABLE agents (agent_id INTEGER PRIMARY KEY, name TEXT NOT NULL, total_tickets INTEGER NOT NULL, avg_resolve_min REAL NOT NULL, -- среднее время закрытия тикета (в минутах)
    avg_first_resp_min REAL NOT NULL  -- среднее время первого ответа (в минутах));

INSERT INTO agents VALUES (1, 'Emma Clarke', 824, 6277.9, 1462.1);
INSERT INTO agents VALUES (2, 'Sophie Martin', 812, 5723.5, 1996.5);
INSERT INTO agents VALUES (3, 'Laura Bennett', 672, 5532.6, 1585.9);
INSERT INTO agents VALUES (4, 'Nina Hoffman', 585, 3809.8, 1330.2);
INSERT INTO agents VALUES (5, 'Daniel Meyer', 573, 4143.2, 952.2);
INSERT INTO agents VALUES (6, 'Anna Petrov', 568, 5762.7, 1430.4);
INSERT INTO agents VALUES (7, 'Olivia Stone', 519, 6850.5, 1036.8);
INSERT INTO agents VALUES (8, 'Maria Santos', 497, 6437.7, 1395.0);
INSERT INTO agents VALUES (9, 'Elena Vasquez', 494, 4732.0, 1333.4);
INSERT INTO agents VALUES (10, 'Julia Fischer', 464, 5695.1, 1633.9);
INSERT INTO agents VALUES (11, 'Eva Lindqvist', 458, 5688.9, 1157.6);
INSERT INTO agents VALUES (12, 'Alina Novak', 456, 7322.1, 1811.4);
INSERT INTO agents VALUES (13, 'Lena Becker', 435, 4602.9, 848.6);
INSERT INTO agents VALUES (14, 'Ivan Sokolov', 425, 7083.4, 1544.0);
INSERT INTO agents VALUES (15, 'Natasha Ivanova', 419, 4378.0, 1242.5);
INSERT INTO agents VALUES (16, 'Hana Blum', 413, 8546.1, 1887.3);
INSERT INTO agents VALUES (17, 'Angelika Bauer', 410, 5128.7, 1117.7);
INSERT INTO agents VALUES (18, 'Oksana Weiss', 401, 7239.5, 1472.7);
INSERT INTO agents VALUES (19, 'Nadia Richter', 397, 6772.8, 1535.5);
INSERT INTO agents VALUES (20, 'Alex Roth', 393, 6120.8, 1398.4);
INSERT INTO agents VALUES (21, 'Kirill Jensen', 391, 4691.8, 1195.5);
INSERT INTO agents VALUES (22, 'Tatiana Muller', 381, 5633.6, 1306.4);
INSERT INTO agents VALUES (23, 'Sofia Andersen', 380, 10384.8, 1783.1);
INSERT INTO agents VALUES (24, 'Stan Smirnov', 378, 6742.5, 1324.8);
INSERT INTO agents VALUES (25, 'Larissa Koch', 377, 8183.4, 2124.0);
INSERT INTO agents VALUES (26, 'Alexei Lehmann', 372, 4293.6, 697.3);
INSERT INTO agents VALUES (27, 'Elena Wagner', 368, 7357.7, 2119.0);
INSERT INTO agents VALUES (28, 'Viktor Braun', 365, 4550.1, 1247.6);
INSERT INTO agents VALUES (29, 'Evgenia Schmidt', 358, 6043.0, 1806.5);
INSERT INTO agents VALUES (30, 'Anton Schneider', 343, 5386.3, 1283.6);
INSERT INTO agents VALUES (31, 'Sandra Wolf', 340, 9088.9, 1764.0);
INSERT INTO agents VALUES (32, 'Alina Hart', 329, 3538.0, 1401.0);
INSERT INTO agents VALUES (33, 'Victoria Lane', 326, 8300.5, 1356.6);
INSERT INTO agents VALUES (34, 'Albina Moore', 325, 7528.0, 2440.9);
INSERT INTO agents VALUES (35, 'Alina Reed', 325, 8228.6, 981.6);
INSERT INTO agents VALUES (36, 'Natasha Fox', 324, 4706.0, 1729.0);
INSERT INTO agents VALUES (37, 'Katerina Shaw', 320, 6736.5, 1346.9);
INSERT INTO agents VALUES (38, 'Sofia Osman', 318, 7166.9, 2029.8);
INSERT INTO agents VALUES (39, 'Karina Young', 308, 6317.1, 1352.6);
INSERT INTO agents VALUES (40, 'Nikolai Burns', 307, 6924.0, 1198.8);
INSERT INTO agents VALUES (41, 'Anna Park', 300, 4685.4, 956.3);
INSERT INTO agents VALUES (42, 'Alina West', 294, 5555.9, 1039.4);
INSERT INTO agents VALUES (43, 'Julia Frost', 293, 9838.6, 2284.8);
INSERT INTO agents VALUES (44, 'Katerina Cross', 287, 13332.3, 1525.5);
INSERT INTO agents VALUES (45, 'Jana Storm', 278, 10667.5, 2272.1);
INSERT INTO agents VALUES (46, 'Diana Ross', 267, 5856.4, 1874.8);
INSERT INTO agents VALUES (47, 'Arina Hall', 261, 16431.8, 2694.8);
INSERT INTO agents VALUES (48, 'Sergei Black', 260, 7494.2, 1370.3);
INSERT INTO agents VALUES (49, 'Julia White', 246, 6516.4, 1675.8);
INSERT INTO agents VALUES (50, 'Elena Green', 241, 10009.4, 2783.1);
INSERT INTO agents VALUES (51, 'Natasha Blue', 237, 7480.7, 1314.8);
INSERT INTO agents VALUES (52, 'Diana Grey', 222, 8387.5, 2190.5);
INSERT INTO agents VALUES (53, 'Natasha Gold', 209, 10946.8, 1575.6);
INSERT INTO agents VALUES (54, 'Maria Silver', 205, 7018.9, 2303.4);
INSERT INTO agents VALUES (55, 'Sofia Star', 180, 8739.9, 736.4);
INSERT INTO agents VALUES (56, 'Sergei Moon', 159, 10456.2, 2188.2);
INSERT INTO agents VALUES (57, 'Vlad Sun', 145, 2791.4, 865.7);
INSERT INTO agents VALUES (58, 'Snejana Ray', 143, 8992.1, 2108.7);
INSERT INTO agents VALUES (59, 'Valeria Dawn', 137, 18490.5, 2144.1);
INSERT INTO agents VALUES (60, 'Ivan Lake', 135, 9313.5, 1484.2);
INSERT INTO agents VALUES (61, 'Anna River', 126, 22288.5, 2859.0);
INSERT INTO agents VALUES (62, 'Alena Stone', 126, 11448.7, 1532.1);
INSERT INTO agents VALUES (63, 'Angela Forest', 118, 9932.5, 2036.8);
INSERT INTO agents VALUES (64, 'Katerina Hill', 117, 1337.6, 1254.8);
INSERT INTO agents VALUES (65, 'Maria Cloud', 109, 19391.4, 2665.7);
INSERT INTO agents VALUES (66, 'Liza Vale', 106, 9964.1, 1659.7);
INSERT INTO agents VALUES (67, 'Regina Bay', 97, 7012.2, 2551.9);
INSERT INTO agents VALUES (68, 'Natasha Cliff', 95, 16194.4, 1859.0);
INSERT INTO agents VALUES (69, 'Andre Shore', 78, 4297.0, 1921.1);
INSERT INTO agents VALUES (70, 'Liza Brook', 74, 17177.9, 1784.6);
INSERT INTO agents VALUES (71, 'Maria Glen', 74, 7561.2, 2244.1);
INSERT INTO agents VALUES (72, 'Maria Marsh', 72, 7376.1, 3165.6);
INSERT INTO agents VALUES (73, 'Vika Crest', 56, 19591.4, 2084.4);
INSERT INTO agents VALUES (74, 'Alisa Ridge', 55, 39768.8, 7193.5);
INSERT INTO agents VALUES (75, 'Eugene Dale', 49, 17182.3, 3350.1);
INSERT INTO agents VALUES (76, 'Alexei Heath', 33, 5367.0, 1723.4);
INSERT INTO agents VALUES (78, 'Alena Bluff', 23, 6296.7, 2866.1);
INSERT INTO agents VALUES (79, 'Elisa Moor', 20, 5341.4, 716.9);
INSERT INTO agents VALUES (80, 'Dayana Fell', 13, 3555.3, 2143.5);
INSERT INTO agents VALUES (81, 'Kirill Ford', 7, 42440.2, 6490.0);
INSERT INTO agents VALUES (82, 'Natasha Weald', 6, 18451.8, 3904.2);
INSERT INTO agents VALUES (83, 'Olga Chase', 5, 85996.2, 4268.5);
INSERT INTO agents VALUES (84, 'Evgenia Hunt', 3, 5486.1, 521.8);
INSERT INTO agents VALUES (85, 'Natasha Field', 1, 7315.9, 9.5);
INSERT INTO agents VALUES (86, 'Maxim Grove', 1, 55215.2, 548.5);  -- ----------------------------------------------------------------

--  ТАБЛИЦА 2: sla_thresholds (нормативы SLA)
-- ----------------------------------------------------------------

CREATE TABLE sla_thresholds (metric TEXT PRIMARY KEY, target_min REAL NOT NULL, description TEXT);

INSERT INTO sla_thresholds VALUES
    ('first_response', 480, '8 часов — целевое время первого ответа клиенту'), ('resolution', 4320, '72 часа — целевое время полного закрытия тикета');  -- ================================================================

--  ЧАСТЬ 2 — ЗАПРОСЫ
-- ================================================================  -- ----------------------------------------------------------------
-- З1 — как тикеты распределены по команде?
--   ответ влияет на решения по найму, обучению и планированию
--   ресурсов.
--
-- SQL: COUNT, SUM, AVG, MIN, MAX
-- ----------------------------------------------------------------

SELECT
    COUNT(agent_id)              AS vsego_agentov, SUM(total_tickets)           AS vsego_tiketov, MIN(total_tickets)           AS min_tiketov, MAX(total_tickets)           AS max_tiketov, ROUND(AVG(total_tickets), 0) AS srednee_na_agenta
FROM agents;  -- ----------------------------------------------------------------

-- З2 —  кто из агентов работает с наибольшим объёмом? именно их
--   показатели определяют общую картину команды и на кого стоит
--   опираться при обучении и поддержке.
--
-- SQL: SELECT, ORDER BY, LIMIT
-- ----------------------------------------------------------------

SELECT
    name, total_tickets, ROUND(avg_resolve_min    / 60.0, 1) AS srednee_resheniye_chasov, ROUND(avg_first_resp_min / 60.0, 1) AS srednee_perviy_otvet_chasov
FROM agents
ORDER BY total_tickets DESC
LIMIT 10;  -- ----------------------------------------------------------------

-- З3 — кто решает тикеты быстрее всех?
--      (только агенты с не менее чем 100 тикетами)
--
-- SQL: WHERE, ORDER BY ASC
-- ----------------------------------------------------------------

SELECT
    name, total_tickets, ROUND(avg_resolve_min    / 60.0, 1) AS srednee_resheniye_chasov, ROUND(avg_first_resp_min / 60.0, 1) AS srednee_perviy_otvet_chasov
FROM agents
WHERE total_tickets >= 100
ORDER BY avg_resolve_min ASC;  -- ----------------------------------------------------------------

-- З4 — кто тратит больше всего времени на тикет?
--      (только агенты с не менее чем 50 тикетами)
--
-- SQL: WHERE, ORDER BY DESC
-- ----------------------------------------------------------------

SELECT
    name, total_tickets, ROUND(avg_resolve_min    / 60.0, 1) AS srednee_resheniye_chasov, ROUND(avg_first_resp_min / 60.0, 1) AS srednee_perviy_otvet_chasov
FROM agents
WHERE total_tickets >= 50
ORDER BY avg_resolve_min DESC;  -- ----------------------------------------------------------------

-- З5 — каждый ли сотрудник укладывается в норматив SLA?
--
-- SQL: JOIN, CASE WHEN
--
--   я использовала сокращения sr и sf (от «sla resolution» и «sla first») ----------------------------------------

SELECT
    a.name, a.total_tickets, ROUND(a.avg_resolve_min    / 60.0, 1) AS resheniye_chasov, ROUND(a.avg_first_resp_min / 60.0, 1) AS perviy_otvet_chasov, CASE
        WHEN a.avg_resolve_min <= sr.target_min THEN 'SLA выполнен'
        ELSE                                        'SLA нарушен'
    END AS status_resheniye, CASE
        WHEN a.avg_first_resp_min <= sf.target_min THEN 'В норме'
        ELSE                                           'Превышает'
    END AS status_perviy_otvet
FROM agents a
JOIN sla_thresholds sr ON sr.metric = 'resolution'
JOIN sla_thresholds sf ON sf.metric = 'first_response'
WHERE a.total_tickets >= 50
ORDER BY a.avg_resolve_min ASC;
