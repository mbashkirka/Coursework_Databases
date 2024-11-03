--
-- PostgreSQL database dump
--

-- Dumped from database version 12.16
-- Dumped by pg_dump version 12.16

DROP DATABASE IF EXISTS "m.bashkirov";
CREATE DATABASE "m.bashkirov" WITH ENCODING='UTF-8';

\c "m.bashkirov";

SET statement_timeout=0;
SET lock_timeout=0;
SET client_encoding='UTF8';
SET standard_conforming_strings=on;
SET check_function_bodies=false;
SET client_min_messages=warning;
SET default_tablespace='';
SET default_with_oids=false;

---
--- drop tables
---

DROP TABLE IF EXISTS concern_company;
DROP TABLE IF EXISTS car_brand;
DROP TABLE IF EXISTS car_model;
DROP TABLE IF EXISTS model_transmission;
DROP TABLE IF EXISTS transmission;

--
-- Name: concern_company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE concern_company(
    company_id smallint NOT NULL,
    company_name character varying(100) NOT NULL,
    year_foundation int,
    company_country character varying(100),
    employees int,
    profit_2021 int
);

--
-- Name: car_brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE car_brand(
    brand_id smallint NOT NULL,
    brand_name character varying(100) NOT NULL,
    company_id smallint NOT NULL,
    brand_country character varying(100),
    year_foundation int,
    founder character varying(100),
    car_sold_2021 int
);

--
-- Name: car_model; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE car_model(
    model_id smallint NOT NULL,
    model_name character varying(100) NOT NULL,
    brand_id smallint,
    year_creation int,
    car_sold int,
    car_class character varying(100),
    generation int
);

--
-- Name: model_transmission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE model_transmission(
    model_transmission_id smallint NOT NULL,
    model_id smallint NOT NULL,
    transmission_id smallint
);

--
-- Name: transmission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE transmission(
    transmission_id smallint NOT NULL,
    transmission_name character varying(100) NOT NULL,
    transmission_description text
);

--
-- Data for Name: concern_company; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO concern_company VALUES (1,'Daimler-Benz AG','1926','Германия','172425','23006');
INSERT INTO concern_company VALUES (2,'BMW AG','1916','Германия','118909','12382');
INSERT INTO concern_company VALUES (3,'Toyota Motor Corparation','1937','Япония','372817','24800');
INSERT INTO concern_company VALUES (4,'Gelly Holding Group','1986','Китай','128928','14700');
INSERT INTO concern_company VALUES (5,'Ford Motor Company','1903','США','183000','17910');
INSERT INTO concern_company VALUES (6,'Volkswagen AG','1937','Германия','672789','15428');
INSERT INTO concern_company VALUES (7,'General Motors','1908','США','157000','10019');
INSERT INTO concern_company VALUES (8,'Groupse PSA','1976','Франция','208780','3584');
INSERT INTO concern_company VALUES (9,'Hyundai Motor Group','1998','Республика Корея','200000','11000');
INSERT INTO concern_company VALUES (10,'Renault-Nissan-Mitsubishi Alliance','1999','Амстердам','450000','5700');

--
-- Data for Name: car_brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO car_brand VALUES (1,'Mercedes-Benz',1,'Германия','1926','Карл Бенц','2750000');
INSERT INTO car_brand VALUES (2,'BMW',2,'Германия','1916','Густав Отто','2213795');
INSERT INTO car_brand VALUES (3,'Rolls-Royce',2,'Великобритания','1904','Роллс','5500');
INSERT INTO car_brand VALUES (4,'Toyota',3,'Япония','1937','Киитиро Тойода','8327862');
INSERT INTO car_brand VALUES (5,'Lexus',3,'Япония','1989','Эйдзи Тойода','760012');
INSERT INTO car_brand VALUES (6,'Volvo',4,'Швеция','1927','Свен Густав Вингквист','247000'); 
INSERT INTO car_brand VALUES (7,'Gelly',4,'Китай','1997','Ли Шуфу','115000');
INSERT INTO car_brand VALUES (8,'Ford',5,'США','1903','Генри Форд','3942755');
INSERT INTO car_brand VALUES (9,'Audi',6,'Германия','1909','Август Хорьх','1536408');
INSERT INTO car_brand VALUES (10,'Skoda',6,'Чехия','1895','Эмиль Шкода','878200');
INSERT INTO car_brand VALUES (11,'Volkswagen',6,'Германия','1937','Фердинанд Порше','4741000');
INSERT INTO car_brand VALUES (12,'Porsche',6,'Германия','1931','Фердинанд Порше','301915');
INSERT INTO car_brand VALUES (13,'Chevrolet',7,'США','1911','Луи Шевроле','2586853');
INSERT INTO car_brand VALUES (14,'Cadillac',7,'США','1902','Генри Форд','371621');
INSERT INTO car_brand VALUES (15,'Citroen',8,'Франция','1919','Андре Ситроен','796868');
INSERT INTO car_brand VALUES (16,'Peugeot',8,'Франция','1810','Пежо','932000');
INSERT INTO car_brand VALUES (17,'Kia',9,'Республика Корея','1944','Ким Чхоль-хо','2777056');
INSERT INTO car_brand VALUES (18,'Hyundai',9,'Республика Корея','1967','Чон Чжуан-ён','3876000');
INSERT INTO car_brand VALUES (19,'Nissan',10,'Япония','1933','Ёсисуки Аикава','3876000');
INSERT INTO car_brand VALUES (20,'Renault',10,'Франция','1899','Луи Рено','1820000');
INSERT INTO car_brand VALUES (21,'Mitsubishi',10,'Япония','1870','Ивасаки Ятаро','801000');

--
-- Data for Name: car_model; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO car_model VALUES (1,'E-class',1,'1993','15000000','Бизнес седан','6');
INSERT INTO car_model VALUES (2,'C-class',1,'1993','7000000','Средний седан','5');
INSERT INTO car_model VALUES (3,'X5',2,'1999','2500000','Среднеразмерный кроссовер','4');
INSERT INTO car_model VALUES (4,'5-series',2,'1972','8000000','Бизнес седан','7');
INSERT INTO car_model VALUES (5,'Phantom',3,'1925','1200000','Люкс седан','8');
INSERT INTO car_model VALUES (6,'Corolla',4,'1966','40000000','Компактный седан','12');
INSERT INTO car_model VALUES (7,'RAV 4',4,'1994','10000000','Компактный кроссовер','5');
INSERT INTO car_model VALUES (8,'RX',5,'1998','1000000','Среднеразмерный кроссовер','5');
INSERT INTO car_model VALUES (9,'LX',5,'1995','600000','Полноразмерный внедорожник','4');
INSERT INTO car_model VALUES (10,'XC90',6,'2002','800000','Кроссовер','2');
INSERT INTO car_model VALUES (11,'Coolray',7,'2018','250000','Компактный кроссовер','1');
INSERT INTO car_model VALUES (12,'Focus',8,'1998','7000000','Компактный седан','4');
INSERT INTO car_model VALUES (13,'Explorer',8,'1990','4000000','Кроссовер','5');
INSERT INTO car_model VALUES (14,'A4',9,'1994','8000000','Премиум седан','9');
INSERT INTO car_model VALUES (15,'Q7',9,'2005','4000000','Среднеразмерный кроссовер','2');
INSERT INTO car_model VALUES (16,'Rapid',10,'1935','13000000','Компактный седан','6');
INSERT INTO car_model VALUES (17,'Octavia',10,'1959','6000000','Средний седан','5');
INSERT INTO car_model VALUES (18,'Polo',11,'1975','19000000','Компактный седан','7');
INSERT INTO car_model VALUES (19,'Taureg',11,'2002','4000000','Компактный кроссовер','3');
INSERT INTO car_model VALUES (20,'Cayenne',12,'2002','1000000','Среднеразмерный кроссовер','3');
INSERT INTO car_model VALUES (21,'Malibu',13,'1964','3000000','Средний седан','6');
INSERT INTO car_model VALUES (22,'Escalade',14,'1998','5000000','Полноразмерный внедорожник','4');
INSERT INTO car_model VALUES (23,'С4',15,'2004','11000000','Средний седан','3');
INSERT INTO car_model VALUES (24,'208',16,'2012','3000000','Хэтчбек','1');
INSERT INTO car_model VALUES (25,'Rio',17,'1999','16000000','Компактный седан','4');
INSERT INTO car_model VALUES (26,'Optima',17,'2000','1000000','Бизнес седан','4');
INSERT INTO car_model VALUES (27,'Solaris',18,'2011','20000000','Компактный седан','2');
INSERT INTO car_model VALUES (28,'Creta',18,'2014','1500000','Компактный кроссовер','2');
INSERT INTO car_model VALUES (29,'Qashqai',19,'2006','7500000','Компактный кроссовер','3');
INSERT INTO car_model VALUES (30,'Logan',20,'2004','20000000','Компактный седан','3');
INSERT INTO car_model VALUES (31,'Outlander',21,'2001','12000000','Среднеразмерный кроссовер','3');

--
-- Data for Name: transmission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO transmission VALUES (1,'МКПП','Механическая коробка передач: простая и надежная конструкция, высокая экономия, недорогое обслуживание, неудобство управления в условиях города');
INSERT INTO transmission VALUES (2,'АКПП','Автоматическая коробка передач: комфорт и удобство в управлении, плавность хода при переключении передач, высокая стоимость обслуживания и ремонта, большой расход топлива, низкий КПД');
INSERT INTO transmission VALUES (3,'Робот','Роботизированная коробка передач: высокий КПД, экономичный расход топлива, высокая динамика, малая надежность, высокая стоимость обслуживания и ремонта');
INSERT INTO transmission VALUES (4,'Вариатор','Вариаторная коробка передач: экономичный расход топлива, высокая динамика, плавное переключение передач, высокая стоимость обслуживания и ремонта');

--
-- Data for Name: model_transmission; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO model_transmission VALUES (1,1,2);
INSERT INTO model_transmission VALUES (2,2,1);
INSERT INTO model_transmission VALUES (3,2,2);
INSERT INTO model_transmission VALUES (4,3,1);
INSERT INTO model_transmission VALUES (5,3,2);
INSERT INTO model_transmission VALUES (6,3,3);
INSERT INTO model_transmission VALUES (7,4,2);
INSERT INTO model_transmission VALUES (8,4,4);
INSERT INTO model_transmission VALUES (9,5,2);
INSERT INTO model_transmission VALUES (10,6,1);
INSERT INTO model_transmission VALUES (11,6,2);
INSERT INTO model_transmission VALUES (12,6,3);
INSERT INTO model_transmission VALUES (13,6,4);
INSERT INTO model_transmission VALUES (14,7,1);
INSERT INTO model_transmission VALUES (15,7,2);
INSERT INTO model_transmission VALUES (16,7,4);
INSERT INTO model_transmission VALUES (17,8,2);
INSERT INTO model_transmission VALUES (18,8,3);
INSERT INTO model_transmission VALUES (19,9,2);
INSERT INTO model_transmission VALUES (20,10,2);
INSERT INTO model_transmission VALUES (21,10,3);
INSERT INTO model_transmission VALUES (22,11,1);
INSERT INTO model_transmission VALUES (23,11,2);
INSERT INTO model_transmission VALUES (24,12,4);
INSERT INTO model_transmission VALUES (25,13,1);
INSERT INTO model_transmission VALUES (26,14,2);
INSERT INTO model_transmission VALUES (27,15,1);
INSERT INTO model_transmission VALUES (28,15,2);
INSERT INTO model_transmission VALUES (29,15,3);
INSERT INTO model_transmission VALUES (30,16,1);
INSERT INTO model_transmission VALUES (31,17,1);
INSERT INTO model_transmission VALUES (32,17,3);
INSERT INTO model_transmission VALUES (33,18,2);
INSERT INTO model_transmission VALUES (34,18,4);
INSERT INTO model_transmission VALUES (35,19,1);
INSERT INTO model_transmission VALUES (36,20,4);
INSERT INTO model_transmission VALUES (37,21,1);
INSERT INTO model_transmission VALUES (38,21,2);
INSERT INTO model_transmission VALUES (39,22,3);
INSERT INTO model_transmission VALUES (40,23,1);
INSERT INTO model_transmission VALUES (41,24,1);
INSERT INTO model_transmission VALUES (42,25,2);
INSERT INTO model_transmission VALUES (43,26,2);
INSERT INTO model_transmission VALUES (44,26,4);
INSERT INTO model_transmission VALUES (45,27,2);
INSERT INTO model_transmission VALUES (46,27,3);
INSERT INTO model_transmission VALUES (47,28,3);
INSERT INTO model_transmission VALUES (48,29,1);
INSERT INTO model_transmission VALUES (49,29,2);
INSERT INTO model_transmission VALUES (50,30,2);
INSERT INTO model_transmission VALUES (51,31,1);
INSERT INTO model_transmission VALUES (52,31,4);

--
-- Name: pk_company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concern_company
    ADD CONSTRAINT pk_company PRIMARY KEY (company_id);

--
-- Name: pk_brand; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_brand
    ADD CONSTRAINT pk_brand PRIMARY KEY (brand_id);

--
-- Name: pk_model; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_model
    ADD CONSTRAINT pk_model PRIMARY KEY (model_id);

--
-- Name: pk_model_transmission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_transmission
    ADD CONSTRAINT pk_model_transmission PRIMARY KEY (model_transmission_id);

--
-- Name: pk_transmission; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transmission
    ADD CONSTRAINT pk_transmission PRIMARY KEY (transmission_id);

--
-- Name: company_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concern_company
    ADD CONSTRAINT company_name_unique_key UNIQUE (company_name);

--
-- Name: brand_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_brand
    ADD CONSTRAINT brand_name_unique_key UNIQUE (brand_name);

--
-- Name: model_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_model
    ADD CONSTRAINT model_name_unique_key UNIQUE (model_name);

--
-- Name: transmission_name_unique_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY transmission
    ADD CONSTRAINT transmission_name_unique_key UNIQUE (transmission_name);

--
-- Name: employees_check_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY concern_company
    ADD CONSTRAINT employees_check_key CHECK (employees>0);

--
-- Name: brand_sold_check_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_brand
    ADD CONSTRAINT brand_sold_check_key CHECK (car_sold_2021>0);

--
-- Name: car_sold_check_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_model
    ADD CONSTRAINT car_sold_check_key CHECK (car_sold>0);

--
-- Name: generation_check_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_model
    ADD CONSTRAINT generation_check_key CHECK (generation>0);

--
-- Name: car_brand fk_company_brand; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_brand
    ADD CONSTRAINT fk_company_brand FOREIGN KEY (company_id) REFERENCES concern_company(company_id);

--
-- Name: car_model fk_model_brand; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY car_model
    ADD CONSTRAINT fk_model_brand FOREIGN KEY (brand_id) REFERENCES car_brand(brand_id);

--
-- Name: model_transmission fk_model; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_transmission
    ADD CONSTRAINT fk_model FOREIGN KEY (model_id) REFERENCES car_model(model_id);

--
-- Name: model_transmission fk_transmission; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_transmission 
    ADD CONSTRAINT fk_transmission FOREIGN KEY (transmission_id) REFERENCES transmission(transmission_id);

--
-- PostgreSQL database dump complete
--