/* Setup: Load the sample data from the .sql file and create the roles */ 

CREATE TABLE hotels01 (
	travelCode DECIMAL NOT NULL,
	userCode DECIMAL NOT NULL,
	hname VARCHAR NOT NULL,
	place VARCHAR NOT NULL,
	days DECIMAL NOT NULL,
	hprice DECIMAL NOT NULL,
	total DECIMAL NOT NULL,
	hdate DATE NOT NULL
);

CREATE TABLE users1 (
	usercode DECIMAL NOT NULL,
	company VARCHAR NOT NULL,
	name VARCHAR NOT NULL,
	gender VARCHAR NOT NULL,
	age DECIMAL NOT NULL
);

CREATE TABLE flights01 (
	travelCode DECIMAL NOT NULL,
	userCode DECIMAL NOT NULL,
	fCity VARCHAR NOT NULL,
	tCity VARCHAR NOT NULL,
	flightType VARCHAR NOT NULL,
	fprice DECIMAL NOT NULL,
	time DECIMAL NOT NULL,
	distance DECIMAL NOT NULL,
	agency VARCHAR NOT NULL,
	fdate DATE NOT NULL
);


DROP TABLE hotels01

-- load data - hotels01
INSERT INTO hotels01 VALUES (935, 8, 'Hotel BD', 'Natal (RN)', 3, 242.88, 728.64, '2021-11-25');
INSERT INTO hotels01 VALUES (2566, 22, 'Hotel CB', 'Rio de Janeiro (RJ)', 4, 165.99, 663.96, '2021-02-25');
INSERT INTO hotels01 VALUES (2849, 25, 'Hotel BP', 'Brasilia (DF)', 4, 247.62, 990.48, '2020-04-23');
INSERT INTO hotels01 VALUES (16640, 166, 'Hotel AF', 'Sao Paulo (SP)', 1, 139.1, 139.1, '2020-10-22');
INSERT INTO hotels01 VALUES (28198, 269, 'Hotel BP', 'Brasilia (DF)', 2, 247.62, 495.24, '2019-10-10');
INSERT INTO hotels01 VALUES (29243, 279, 'Hotel K', 'Salvador (BH)', 1, 263.41, 263.41, '2021-04-08');
INSERT INTO hotels01 VALUES (33291, 321, 'Hotel BD', 'Natal (RN)', 4, 242.88, 971.52, '2020-12-10');
INSERT INTO hotels01 VALUES (52201, 505, 'Hotel A', 'Florianopolis (SC)', 4, 313.02, 1252.08, '2022-08-18');
INSERT INTO hotels01 VALUES (55503, 541, 'Hotel AU', 'Recife (PE)', 2, 312.83, 625.66, '2021-08-19');
INSERT INTO hotels01 VALUES (56882, 553, 'Hotel BD', 'Natal (RN)', 4, 242.88, 971.52, '2021-11-18');
INSERT INTO hotels01 VALUES (59082, 574, 'Hotel AF', 'Sao Paulo (SP)', 4, 139.1, 556.4, '2020-09-10');
INSERT INTO hotels01 VALUES (61444, 600, 'Hotel Z', 'Aracaju (SE)', 2, 208.04, 416.08, '2020-04-16');
INSERT INTO hotels01 VALUES (64025, 623, 'Hotel BD', 'Natal (RN)', 2, 242.88, 485.76, '2019-10-31');
INSERT INTO hotels01 VALUES (64955, 632, 'Hotel K', 'Salvador (BH)', 2, 263.41, 526.82, '2023-02-09');
INSERT INTO hotels01 VALUES (66859, 649, 'Hotel BD', 'Natal (RN)', 1, 242.88, 242.88, '2020-03-19');
INSERT INTO hotels01 VALUES (70127, 678, 'Hotel CB', 'Rio de Janeiro (RJ)', 2, 165.99, 331.98, '2022-03-24');
INSERT INTO hotels01 VALUES (73166, 710, 'Hotel AU', 'Recife (PE)', 4, 312.83, 1251.32, '2022-03-17');
INSERT INTO hotels01 VALUES (76765, 746, 'Hotel BW', 'Campo Grande (MS)', 1, 60.39, 60.39, '2020-09-17');
INSERT INTO hotels01 VALUES (76846, 746, 'Hotel AU', 'Recife (PE)', 2, 312.83, 625.66, '2022-04-07');
INSERT INTO hotels01 VALUES (77818, 756, 'Hotel AU', 'Recife (PE)', 4, 312.83, 1251.32, '2021-06-24');
INSERT INTO hotels01 VALUES (79604, 775, 'Hotel CB', 'Rio de Janeiro (RJ)', 2, 165.99, 331.98, '2020-02-20');
INSERT INTO hotels01 VALUES (93063, 919, 'Hotel BD', 'Natal (RN)', 3, 242.88, 728.64, '2020-06-25');
INSERT INTO hotels01 VALUES (93857, 925, 'Hotel BD', 'Natal (RN)', 2, 242.88, 485.76, '2023-06-15');
INSERT INTO hotels01 VALUES (106237, 1055, 'Hotel K', 'Salvador (BH)', 2, 263.41, 526.82, '2019-09-26');
INSERT INTO hotels01 VALUES (108827, 1079, 'Hotel BP', 'Brasilia (DF)', 3, 247.62, 742.86, '2021-03-18');
INSERT INTO hotels01 VALUES (111428, 1104, 'Hotel BW', 'Campo Grande (MS)', 3, 60.39, 181.17, '2020-11-26');
INSERT INTO hotels01 VALUES (111634, 1105, 'Hotel BD', 'Natal (RN)', 2, 242.88, 485.76, '2021-01-21');
INSERT INTO hotels01 VALUES (116120, 1152, 'Hotel CB', 'Rio de Janeiro (RJ)', 2, 165.99, 331.98, '2020-04-30');
INSERT INTO hotels01 VALUES (118889, 1178, 'Hotel AF', 'Sao Paulo (SP)', 1, 139.1, 139.1, '2020-07-09');
INSERT INTO hotels01 VALUES (121578, 1205, 'Hotel CB', 'Rio de Janeiro (RJ)', 1, 165.99, 165.99, '2020-11-19');
INSERT INTO hotels01 VALUES (127409, 1257, 'Hotel K', 'Salvador (BH)', 3, 263.41, 790.23, '2021-08-12');


-- load data - flights01

INSERT INTO flights01 VALUES (92, 1, 'Brasilia (DF)', 'Recife (PE)', 'premium', 559.13, 0.63, 242.21, 'Rainbow', '2019-10-18');
INSERT INTO flights01 VALUES (4199, 41, 'Salvador (BH)', 'Brasilia (DF)', 'firstClass', 1040.84, 1.76, 676.56, 'Rainbow', '2021-12-11');
INSERT INTO flights01 VALUES (4204, 41, 'Campo Grande (MS)', 'Brasilia (DF)', 'economic', 517.82, 0.72, 277.70, 'Rainbow', '2022-01-14');
INSERT INTO flights01 VALUES (4905, 49, 'Recife (PE)', 'Sao Paulo (SP)', 'firstClass', 954.78, 1.26, 486.52, 'FlyingDrops', '2020-03-26');
INSERT INTO flights01 VALUES (5163, 52, 'Campo Grande (MS)', 'Recife (PE)', 'premium', 959.91, 1.39, 535.40, 'CloudFy', '2020-01-24');
INSERT INTO flights01 VALUES (6148, 61, 'Brasilia (DF)', 'Aracaju (SE)', 'premium', 987.07, 1.11, 425.98, 'CloudFy', '2021-06-28');
INSERT INTO flights01 VALUES (6350, 62, 'Recife (PE)', 'Brasilia (DF)', 'firstClass', 697.22, 0.63, 242.21, 'FlyingDrops', '2022-03-25');
INSERT INTO flights01 VALUES (6610, 64, 'Campo Grande (MS)', 'Aracaju (SE)', 'premium', 1215.45, 1.69, 650.10, 'CloudFy', '2021-06-27');
INSERT INTO flights01 VALUES (6670, 64, 'Aracaju (SE)', 'Campo Grande (MS)', 'economic', 743.54, 1.69, 650.10, 'Rainbow', '2022-08-18');
INSERT INTO flights01 VALUES (6681, 64, 'Florianopolis (SC)', 'Aracaju (SE)', 'economic', 819.41, 2.10, 808.85, 'Rainbow', '2022-11-04');
INSERT INTO flights01 VALUES (7913, 77, 'Natal (RN)', 'Brasilia (DF)', 'firstClass', 1192.62, 1.43, 550.69, 'FlyingDrops', '2019-10-25');
INSERT INTO flights01 VALUES (8238, 81, 'Natal (RN)', 'Brasilia (DF)', 'economic', 686.79, 1.43, 550.69, 'Rainbow', '2020-01-13');
INSERT INTO flights01 VALUES (8357, 82, 'Salvador (BH)', 'Brasilia (DF)', 'premium', 882.86, 1.76, 676.56, 'Rainbow', '2020-10-03');
INSERT INTO flights01 VALUES (8592, 83, 'Campo Grande (MS)', 'Aracaju (SE)', 'premium', 1146.95, 1.69, 650.10, 'Rainbow', '2021-07-03');
INSERT INTO flights01 VALUES (8804, 89, 'Campo Grande (MS)', 'Aracaju (SE)', 'economic', 877.56, 1.69, 650.10, 'Rainbow', '2019-12-30');
INSERT INTO flights01 VALUES (9621, 96, 'Aracaju (SE)', 'Natal (RN)', 'economic', 380.32, 0.46, 176.33, 'Rainbow', '2019-11-28');
INSERT INTO flights01 VALUES (10033, 101, 'Salvador (BH)', 'Aracaju (SE)', 'economic', 826.02, 2.16, 830.86, 'Rainbow', '2019-10-21');
INSERT INTO flights01 VALUES (10170, 103, 'Campo Grande (MS)', 'Recife (PE)', 'firstClass', 1185.95, 1.39, 535.40, 'Rainbow', '2020-11-21');
INSERT INTO flights01 VALUES (11604, 113, 'Aracaju (SE)', 'Campo Grande (MS)', 'premium', 1021.53, 1.69, 650.10, 'CloudFy', '2021-02-18');
INSERT INTO flights01 VALUES (12048, 117, 'Aracaju (SE)', 'Sao Paulo (SP)', 'premium', 588.14, 1.02, 392.76, 'Rainbow', '2021-08-19');
INSERT INTO flights01 VALUES (12436, 120, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'firstClass', 539.39, 0.48, 183.37, 'FlyingDrops', '2021-05-20');
INSERT INTO flights01 VALUES (12897, 126, 'Natal (RN)', 'Aracaju (SE)', 'economic', 361.68, 0.46, 176.33, 'CloudFy', '2021-11-20');
INSERT INTO flights01 VALUES (13485, 133, 'Sao Paulo (SP)', 'Brasilia (DF)', 'premium', 586.06, 0.67, 257.81, 'Rainbow', '2020-06-22');
INSERT INTO flights01 VALUES (13699, 135, 'Brasilia (DF)', 'Aracaju (SE)', 'premium', 965.62, 1.11, 425.98, 'Rainbow', '2019-11-28');
INSERT INTO flights01 VALUES (13738, 135, 'Salvador (BH)', 'Aracaju (SE)', 'premium', 1247.02, 2.16, 830.86, 'Rainbow', '2020-08-29');
INSERT INTO flights01 VALUES (13928, 138, 'Recife (PE)', 'Sao Paulo (SP)', 'economic', 513.06, 1.26, 486.52, 'CloudFy', '2020-02-20');
INSERT INTO flights01 VALUES (14291, 143, 'Natal (RN)', 'Aracaju (SE)', 'premium', 479.37, 0.46, 176.33, 'Rainbow', '2020-06-20');
INSERT INTO flights01 VALUES (15077, 149, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'firstClass', 586.04, 0.48, 183.37, 'Rainbow', '2022-08-18');
INSERT INTO flights01 VALUES (15667, 156, 'Brasilia (DF)', 'Aracaju (SE)', 'premium', 965.62, 1.11, 425.98, 'Rainbow', '2019-10-31');
INSERT INTO flights01 VALUES (15841, 157, 'Rio de Janeiro (RJ)', 'Recife (PE)', 'firstClass', 1664.01, 2.30, 885.57, 'CloudFy', '2020-09-05');
INSERT INTO flights01 VALUES (16517, 163, 'Recife (PE)', 'Aracaju (SE)', 'firstClass', 1166.10, 1.44, 555.74, 'CloudFy', '2020-11-26');
INSERT INTO flights01 VALUES (16551, 164, 'Aracaju (SE)', 'Brasilia (DF)', 'premium', 706.36, 1.11, 425.98, 'Rainbow', '2020-05-14');
INSERT INTO flights01 VALUES (16685, 166, 'Brasilia (DF)', 'Campo Grande (MS)', 'firstClass', 1009.71, 0.72, 277.70, 'FlyingDrops', '2021-09-02');
INSERT INTO flights01 VALUES (16707, 166, 'Rio de Janeiro (RJ)', 'Aracaju (SE)', 'premium', 1098.93, 1.55, 597.61, 'Rainbow', '2022-02-04');
INSERT INTO flights01 VALUES (16816, 168, 'Recife (PE)', 'Sao Paulo (SP)', 'premium', 657.87, 1.26, 486.52, 'CloudFy', '2021-04-15');
INSERT INTO flights01 VALUES (16967, 169, 'Brasilia (DF)', 'Aracaju (SE)', 'firstClass', 1214.82, 1.11, 425.98, 'Rainbow', '2020-11-14');
INSERT INTO flights01 VALUES (17634, 175, 'Brasilia (DF)', 'Salvador (BH)', 'firstClass', 1685.23, 1.76, 676.56, 'CloudFy', '2022-02-17');
INSERT INTO flights01 VALUES (18188, 180, 'Rio de Janeiro (RJ)', 'Brasilia (DF)', 'firstClass', 591.19, 0.48, 183.37, 'FlyingDrops', '2020-08-31');
INSERT INTO flights01 VALUES (18331, 181, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'firstClass', 649.64, 0.48, 183.37, 'CloudFy', '2020-11-12');
INSERT INTO flights01 VALUES (18419, 182, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1175.62, 1.76, 676.53, 'Rainbow', '2020-08-23');
INSERT INTO flights01 VALUES (19615, 191, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'premium', 457.95, 0.48, 183.37, 'CloudFy', '2021-07-29');
INSERT INTO flights01 VALUES (20074, 195, 'Recife (PE)', 'Rio de Janeiro (RJ)', 'firstClass', 1706.89, 2.30, 885.57, 'FlyingDrops', '2020-03-26');
INSERT INTO flights01 VALUES (20639, 203, 'Natal (RN)', 'Recife (PE)', 'firstClass', 806.91, 0.58, 222.67, 'Rainbow', '2021-01-08');
INSERT INTO flights01 VALUES (21437, 210, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'economic', 344.26, 0.48, 183.37, 'CloudFy', '2020-02-27');
INSERT INTO flights01 VALUES (23136, 227, 'Florianopolis (SC)', 'Recife (PE)', 'premium', 1013.40, 1.76, 676.53, 'Rainbow', '2020-01-13');
INSERT INTO flights01 VALUES (23367, 229, 'Recife (PE)', 'Aracaju (SE)', 'premium', 932.84, 1.44, 555.74, 'CloudFy', '2020-10-25');
INSERT INTO flights01 VALUES (23734, 232, 'Natal (RN)', 'Aracaju (SE)', 'economic', 361.68, 0.46, 176.33, 'CloudFy', '2019-10-04');
INSERT INTO flights01 VALUES (24426, 239, 'Aracaju (SE)', 'Salvador (BH)', 'premium', 1289.05, 2.16, 830.86, 'Rainbow', '2019-10-31');
INSERT INTO flights01 VALUES (24432, 239, 'Aracaju (SE)', 'Campo Grande (MS)', 'firstClass', 1387.89, 1.69, 650.10, 'Rainbow', '2019-12-12');
INSERT INTO flights01 VALUES (24576, 239, 'Rio de Janeiro (RJ)', 'Recife (PE)', 'premium', 1333.52, 2.30, 885.57, 'CloudFy', '2022-09-19');
INSERT INTO flights01 VALUES (24909, 242, 'Aracaju (SE)', 'Campo Grande (MS)', 'premium', 1021.53, 1.69, 650.10, 'CloudFy', '2020-02-06');
INSERT INTO flights01 VALUES (25303, 244, 'Recife (PE)', 'Rio de Janeiro (RJ)', 'firstClass', 1706.89, 2.30, 885.57, 'FlyingDrops', '2021-04-29');
INSERT INTO flights01 VALUES (25562, 247, 'Brasilia (DF)', 'Aracaju (SE)', 'firstClass', 1287.52, 1.11, 425.98, 'FlyingDrops', '2019-09-26');
INSERT INTO flights01 VALUES (25635, 247, 'Aracaju (SE)', 'Florianopolis (SC)', 'economic', 852.18, 2.10, 808.85, 'Rainbow', '2021-02-18');
INSERT INTO flights01 VALUES (26064, 250, 'Rio de Janeiro (RJ)', 'Recife (PE)', 'premium', 1306.26, 2.30, 885.57, 'Rainbow', '2021-12-24');
INSERT INTO flights01 VALUES (27232, 262, 'Brasilia (DF)', 'Recife (PE)', 'firstClass', 772.21, 0.63, 242.21, 'Rainbow', '2020-01-25');
INSERT INTO flights01 VALUES (28108, 268, 'Aracaju (SE)', 'Salvador (BH)', 'firstClass', 1723.71, 2.16, 830.86, 'Rainbow', '2021-07-29');
INSERT INTO flights01 VALUES (28297, 271, 'Natal (RN)', 'Recife (PE)', 'economic', 429.77, 0.58, 222.67, 'CloudFy', '2020-06-01');
INSERT INTO flights01 VALUES (28509, 273, 'Recife (PE)', 'Aracaju (SE)', 'economic', 684.88, 1.44, 555.74, 'CloudFy', '2020-03-27');
INSERT INTO flights01 VALUES (30026, 287, 'Aracaju (SE)', 'Brasilia (DF)', 'premium', 706.36, 1.11, 425.98, 'Rainbow', '2020-10-25');
INSERT INTO flights01 VALUES (30476, 290, 'Recife (PE)', 'Florianopolis (SC)', 'firstClass', 1371.83, 1.76, 676.53, 'Rainbow', '2020-11-19');
INSERT INTO flights01 VALUES (31311, 300, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1300.60, 1.76, 676.53, 'CloudFy', '2020-09-04');
INSERT INTO flights01 VALUES (31786, 305, 'Recife (PE)', 'Florianopolis (SC)', 'firstClass', 1434.38, 1.76, 676.53, 'FlyingDrops', '2020-02-27');
INSERT INTO flights01 VALUES (32195, 308, 'Aracaju (SE)', 'Recife (PE)', 'firstClass', 1119.47, 1.44, 555.74, 'Rainbow', '2022-01-27');
INSERT INTO flights01 VALUES (32429, 312, 'Rio de Janeiro (RJ)', 'Aracaju (SE)', 'economic', 796.42, 1.55, 597.61, 'CloudFy', '2020-09-07');
INSERT INTO flights01 VALUES (33162, 319, 'Rio de Janeiro (RJ)', 'Aracaju (SE)', 'firstClass', 1381.55, 1.55, 597.61, 'FlyingDrops', '2022-10-24');
INSERT INTO flights01 VALUES (33326, 321, 'Natal (RN)', 'Aracaju (SE)', 'firstClass', 611.59, 0.46, 176.33, 'FlyingDrops', '2021-08-14');
INSERT INTO flights01 VALUES (34108, 326, 'Recife (PE)', 'Campo Grande (MS)', 'economic', 615.59, 1.39, 535.40, 'Rainbow', '2022-06-16');
INSERT INTO flights01 VALUES (36608, 349, 'Salvador (BH)', 'Aracaju (SE)', 'firstClass', 1531.92, 2.16, 830.86, 'CloudFy', '2021-05-01');
INSERT INTO flights01 VALUES (38722, 371, 'Salvador (BH)', 'Recife (PE)', 'firstClass', 1440.25, 2.05, 788.55, 'Rainbow', '2021-12-10');
INSERT INTO flights01 VALUES (38771, 371, 'Sao Paulo (SP)', 'Recife (PE)', 'economic', 829.91, 1.26, 486.52, 'CloudFy', '2022-11-20');
INSERT INTO flights01 VALUES (38946, 372, 'Brasilia (DF)', 'Natal (RN)', 'firstClass', 1434.91, 1.43, 550.69, 'Rainbow', '2022-10-20');
INSERT INTO flights01 VALUES (39292, 379, 'Aracaju (SE)', 'Brasilia (DF)', 'premium', 755.62, 1.11, 425.98, 'CloudFy', '2020-06-25');
INSERT INTO flights01 VALUES (39699, 384, 'Campo Grande (MS)', 'Recife (PE)', 'premium', 991.22, 1.39, 535.40, 'Rainbow', '2020-02-29');
INSERT INTO flights01 VALUES (40248, 389, 'Brasilia (DF)', 'Recife (PE)', 'premium', 559.13, 0.63, 242.21, 'Rainbow', '2020-05-08');
INSERT INTO flights01 VALUES (40622, 391, 'Brasilia (DF)', 'Rio de Janeiro (RJ)', 'premium', 457.95, 0.48, 183.37, 'CloudFy', '2020-01-16');
INSERT INTO flights01 VALUES (41325, 401, 'Brasilia (DF)', 'Salvador (BH)', 'firstClass', 1665.24, 1.76, 676.56, 'Rainbow', '2019-10-10');
INSERT INTO flights01 VALUES (41718, 407, 'Recife (PE)', 'Rio de Janeiro (RJ)', 'firstClass', 1706.89, 2.30, 885.57, 'FlyingDrops', '2020-07-30');
INSERT INTO flights01 VALUES (43719, 429, 'Brasilia (DF)', 'Natal (RN)', 'premium', 1067.30, 1.43, 550.69, 'CloudFy', '2019-12-05');
INSERT INTO flights01 VALUES (43862, 430, 'Natal (RN)', 'Aracaju (SE)', 'economic', 361.68, 0.46, 176.33, 'CloudFy', '2021-03-19');
INSERT INTO flights01 VALUES (43976, 430, 'Aracaju (SE)', 'Brasilia (DF)', 'economic', 548.62, 1.11, 425.98, 'Rainbow', '2023-05-28');
INSERT INTO flights01 VALUES (46188, 450, 'Recife (PE)', 'Brasilia (DF)', 'firstClass', 709.25, 0.63, 242.21, 'CloudFy', '2020-01-16');
INSERT INTO flights01 VALUES (46853, 455, 'Campo Grande (MS)', 'Natal (RN)', 'premium', 541.59, 0.65, 250.68, 'Rainbow', '2020-03-12');
INSERT INTO flights01 VALUES (46951, 455, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'economic', 367.22, 0.44, 168.22, 'Rainbow', '2022-01-31');
INSERT INTO flights01 VALUES (47120, 457, 'Campo Grande (MS)', 'Florianopolis (SC)', 'firstClass', 1341.21, 1.49, 573.81, 'Rainbow', '2019-11-28');
INSERT INTO flights01 VALUES (47268, 459, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'firstClass', 668.19, 0.44, 168.22, 'FlyingDrops', '2020-02-15');
INSERT INTO flights01 VALUES (47509, 461, 'Campo Grande (MS)', 'Aracaju (SE)', 'firstClass', 1473.41, 1.69, 650.10, 'FlyingDrops', '2020-04-23');
INSERT INTO flights01 VALUES (47703, 462, 'Campo Grande (MS)', 'Sao Paulo (SP)', 'firstClass', 644.16, 0.44, 168.22, 'Rainbow', '2020-06-11');
INSERT INTO flights01 VALUES (47831, 462, 'Recife (PE)', 'Campo Grande (MS)', 'economic', 615.59, 1.39, 535.40, 'Rainbow', '2022-11-27');
INSERT INTO flights01 VALUES (48130, 469, 'Campo Grande (MS)', 'Florianopolis (SC)', 'firstClass', 1310.32, 1.49, 573.81, 'FlyingDrops', '2021-04-22');
INSERT INTO flights01 VALUES (48351, 472, 'Campo Grande (MS)', 'Aracaju (SE)', 'firstClass', 1473.41, 1.69, 650.10, 'FlyingDrops', '2021-05-13');
INSERT INTO flights01 VALUES (48372, 474, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'economic', 367.22, 0.44, 168.22, 'Rainbow', '2019-12-30');
INSERT INTO flights01 VALUES (49057, 482, 'Salvador (BH)', 'Campo Grande (MS)', 'firstClass', 980.40, 1.36, 522.34, 'FlyingDrops', '2019-11-08');
INSERT INTO flights01 VALUES (49335, 483, 'Rio de Janeiro (RJ)', 'Campo Grande (MS)', 'firstClass', 1566.26, 2.09, 806.48, 'FlyingDrops', '2021-11-05');
INSERT INTO flights01 VALUES (49619, 485, 'Brasilia (DF)', 'Campo Grande (MS)', 'economic', 583.60, 0.72, 277.70, 'CloudFy', '2021-11-06');
INSERT INTO flights01 VALUES (49838, 486, 'Aracaju (SE)', 'Campo Grande (MS)', 'economic', 743.54, 1.69, 650.10, 'Rainbow', '2023-01-27');
INSERT INTO flights01 VALUES (50410, 491, 'Salvador (BH)', 'Campo Grande (MS)', 'firstClass', 980.40, 1.36, 522.34, 'FlyingDrops', '2020-08-30');
INSERT INTO flights01 VALUES (50914, 496, 'Campo Grande (MS)', 'Natal (RN)', 'premium', 541.59, 0.65, 250.68, 'Rainbow', '2020-02-13');
INSERT INTO flights01 VALUES (52175, 505, 'Campo Grande (MS)', 'Florianopolis (SC)', 'premium', 1031.59, 1.49, 573.81, 'CloudFy', '2022-02-17');
INSERT INTO flights01 VALUES (52268, 507, 'Campo Grande (MS)', 'Salvador (BH)', 'firstClass', 1114.75, 1.36, 522.34, 'Rainbow', '2020-06-25');
INSERT INTO flights01 VALUES (52336, 507, 'Campo Grande (MS)', 'Natal (RN)', 'premium', 652.47, 0.65, 250.68, 'CloudFy', '2021-10-14');
INSERT INTO flights01 VALUES (52509, 509, 'Campo Grande (MS)', 'Rio de Janeiro (RJ)', 'premium', 1328.88, 2.09, 806.48, 'Rainbow', '2022-01-06');
INSERT INTO flights01 VALUES (52585, 510, 'Brasilia (DF)', 'Campo Grande (MS)', 'firstClass', 1096.58, 0.72, 277.70, 'CloudFy', '2020-10-19');
INSERT INTO flights01 VALUES (52618, 510, 'Natal (RN)', 'Campo Grande (MS)', 'premium', 660.25, 0.65, 250.68, 'Rainbow', '2021-06-06');
INSERT INTO flights01 VALUES (53042, 513, 'Campo Grande (MS)', 'Natal (RN)', 'firstClass', 778.01, 0.65, 250.68, 'Rainbow', '2020-09-24');
INSERT INTO flights01 VALUES (53086, 514, 'Brasilia (DF)', 'Campo Grande (MS)', 'firstClass', 1009.71, 0.72, 277.70, 'FlyingDrops', '2020-04-17');
INSERT INTO flights01 VALUES (53151, 514, 'Campo Grande (MS)', 'Brasilia (DF)', 'premium', 691.99, 0.72, 277.70, 'Rainbow', '2021-07-15');
INSERT INTO flights01 VALUES (54063, 523, 'Campo Grande (MS)', 'Florianopolis (SC)', 'premium', 1030.13, 1.49, 573.81, 'Rainbow', '2020-09-17');
INSERT INTO flights01 VALUES (55266, 540, 'Aracaju (SE)', 'Campo Grande (MS)', 'firstClass', 1387.89, 1.69, 650.10, 'Rainbow', '2020-03-20');
INSERT INTO flights01 VALUES (55475, 541, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'premium', 438.74, 0.44, 168.22, 'Rainbow', '2021-02-08');
INSERT INTO flights01 VALUES (55753, 544, 'Natal (RN)', 'Campo Grande (MS)', 'firstClass', 979.56, 0.65, 250.68, 'FlyingDrops', '2019-12-15');
INSERT INTO flights01 VALUES (56583, 552, 'Salvador (BH)', 'Campo Grande (MS)', 'premium', 684.85, 1.36, 522.34, 'CloudFy', '2019-12-07');
INSERT INTO flights01 VALUES (56878, 553, 'Natal (RN)', 'Campo Grande (MS)', 'firstClass', 979.56, 0.65, 250.68, 'FlyingDrops', '2021-10-22');
INSERT INTO flights01 VALUES (56993, 554, 'Campo Grande (MS)', 'Rio de Janeiro (RJ)', 'firstClass', 1614.70, 2.09, 806.48, 'CloudFy', '2020-08-20');
INSERT INTO flights01 VALUES (57012, 554, 'Campo Grande (MS)', 'Recife (PE)', 'economic', 659.43, 1.39, 535.40, 'CloudFy', '2020-12-31');
INSERT INTO flights01 VALUES (57753, 562, 'Rio de Janeiro (RJ)', 'Campo Grande (MS)', 'economic', 849.52, 2.09, 806.48, 'Rainbow', '2021-02-20');
INSERT INTO flights01 VALUES (59011, 573, 'Recife (PE)', 'Campo Grande (MS)', 'firstClass', 1110.76, 1.39, 535.40, 'CloudFy', '2023-01-02');
INSERT INTO flights01 VALUES (59751, 580, 'Natal (RN)', 'Campo Grande (MS)', 'economic', 546.04, 0.65, 250.68, 'CloudFy', '2020-05-02');
INSERT INTO flights01 VALUES (59782, 580, 'Salvador (BH)', 'Campo Grande (MS)', 'premium', 774.52, 1.36, 522.34, 'Rainbow', '2020-12-04');
INSERT INTO flights01 VALUES (59816, 580, 'Aracaju (SE)', 'Campo Grande (MS)', 'firstClass', 1376.09, 1.69, 650.10, 'FlyingDrops', '2021-08-02');
INSERT INTO flights01 VALUES (59984, 581, 'Florianopolis (SC)', 'Campo Grande (MS)', 'premium', 714.86, 1.49, 573.81, 'Rainbow', '2021-08-09');
INSERT INTO flights01 VALUES (60325, 584, 'Campo Grande (MS)', 'Sao Paulo (SP)', 'premium', 536.98, 0.44, 168.22, 'CloudFy', '2019-10-17');
INSERT INTO flights01 VALUES (60700, 586, 'Natal (RN)', 'Campo Grande (MS)', 'premium', 748.52, 0.65, 250.68, 'CloudFy', '2022-02-21');
INSERT INTO flights01 VALUES (60783, 587, 'Rio de Janeiro (RJ)', 'Campo Grande (MS)', 'premium', 1139.93, 2.09, 806.48, 'CloudFy', '2021-01-31');
INSERT INTO flights01 VALUES (61109, 595, 'Florianopolis (SC)', 'Campo Grande (MS)', 'premium', 714.86, 1.49, 573.81, 'Rainbow', '2019-10-11');
INSERT INTO flights01 VALUES (61146, 596, 'Salvador (BH)', 'Campo Grande (MS)', 'firstClass', 904.66, 1.36, 522.34, 'CloudFy', '2020-06-01');
INSERT INTO flights01 VALUES (61548, 601, 'Campo Grande (MS)', 'Aracaju (SE)', 'firstClass', 1581.80, 1.69, 650.10, 'CloudFy', '2021-04-22');
INSERT INTO flights01 VALUES (61558, 601, 'Campo Grande (MS)', 'Sao Paulo (SP)', 'economic', 375.51, 0.44, 168.22, 'CloudFy', '2021-07-01');
INSERT INTO flights01 VALUES (61650, 601, 'Campo Grande (MS)', 'Rio de Janeiro (RJ)', 'firstClass', 1614.70, 2.09, 806.48, 'CloudFy', '2023-04-06');
INSERT INTO flights01 VALUES (63781, 620, 'Campo Grande (MS)', 'Brasilia (DF)', 'firstClass', 847.83, 0.72, 277.70, 'FlyingDrops', '2020-04-09');
INSERT INTO flights01 VALUES (64465, 627, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'firstClass', 595.09, 0.44, 168.22, 'Rainbow', '2020-09-19');
INSERT INTO flights01 VALUES (64535, 629, 'Campo Grande (MS)', 'Recife (PE)', 'economic', 659.43, 1.39, 535.40, 'CloudFy', '2020-08-13');
INSERT INTO flights01 VALUES (64891, 632, 'Campo Grande (MS)', 'Recife (PE)', 'firstClass', 1262.23, 1.39, 535.40, 'FlyingDrops', '2021-11-18');
INSERT INTO flights01 VALUES (65823, 640, 'Campo Grande (MS)', 'Salvador (BH)', 'premium', 834.61, 1.36, 522.34, 'Rainbow', '2020-06-18');
INSERT INTO flights01 VALUES (66465, 645, 'Sao Paulo (SP)', 'Campo Grande (MS)', 'economic', 367.22, 0.44, 168.22, 'Rainbow', '2021-03-28');
INSERT INTO flights01 VALUES (66978, 650, 'Natal (RN)', 'Recife (PE)', 'premium', 563.23, 0.58, 222.67, 'CloudFy', '2021-12-23');
INSERT INTO flights01 VALUES (67048, 650, 'Brasilia (DF)', 'Sao Paulo (SP)', 'premium', 698.10, 0.67, 257.81, 'CloudFy', '2023-04-28');
INSERT INTO flights01 VALUES (67129, 651, 'Sao Paulo (SP)', 'Natal (RN)', 'premium', 719.91, 0.85, 327.55, 'CloudFy', '2021-04-01');
INSERT INTO flights01 VALUES (67133, 651, 'Sao Paulo (SP)', 'Salvador (BH)', 'firstClass', 1306.80, 1.04, 401.66, 'CloudFy', '2021-04-29');
INSERT INTO flights01 VALUES (67167, 651, 'Sao Paulo (SP)', 'Salvador (BH)', 'firstClass', 1427.22, 1.04, 401.66, 'FlyingDrops', '2021-12-23');
INSERT INTO flights01 VALUES (68487, 663, 'Rio de Janeiro (RJ)', 'Natal (RN)', 'firstClass', 1194.15, 1.55, 595.03, 'Rainbow', '2020-08-22');
INSERT INTO flights01 VALUES (68878, 666, 'Aracaju (SE)', 'Brasilia (DF)', 'firstClass', 957.68, 1.11, 425.98, 'CloudFy', '2022-01-27');
INSERT INTO flights01 VALUES (68880, 666, 'Aracaju (SE)', 'Rio de Janeiro (RJ)', 'premium', 930.12, 1.55, 597.61, 'Rainbow', '2022-02-10');
INSERT INTO flights01 VALUES (69496, 673, 'Natal (RN)', 'Aracaju (SE)', 'firstClass', 576.66, 0.46, 176.33, 'CloudFy', '2021-09-23');
INSERT INTO flights01 VALUES (70334, 683, 'Campo Grande (MS)', 'Aracaju (SE)', 'firstClass', 1473.41, 1.69, 650.10, 'FlyingDrops', '2019-09-27');
INSERT INTO flights01 VALUES (71132, 689, 'Salvador (BH)', 'Natal (RN)', 'premium', 970.32, 1.85, 710.57, 'CloudFy', '2021-05-08');
INSERT INTO flights01 VALUES (71429, 693, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1315.27, 1.84, 709.37, 'CloudFy', '2021-04-09');
INSERT INTO flights01 VALUES (71433, 693, 'Sao Paulo (SP)', 'Aracaju (SE)', 'firstClass', 1186.15, 1.02, 392.76, 'CloudFy', '2021-05-09');
INSERT INTO flights01 VALUES (71473, 693, 'Natal (RN)', 'Salvador (BH)', 'economic', 922.87, 1.85, 710.57, 'CloudFy', '2022-02-10');
INSERT INTO flights01 VALUES (71564, 694, 'Salvador (BH)', 'Sao Paulo (SP)', 'firstClass', 676.46, 1.04, 401.66, 'FlyingDrops', '2020-06-01');
INSERT INTO flights01 VALUES (71569, 694, 'Recife (PE)', 'Aracaju (SE)', 'premium', 932.84, 1.44, 555.74, 'CloudFy', '2020-07-04');
INSERT INTO flights01 VALUES (73430, 712, 'Sao Paulo (SP)', 'Brasilia (DF)', 'firstClass', 742.94, 0.67, 257.81, 'CloudFy', '2021-04-08');
INSERT INTO flights01 VALUES (73746, 715, 'Aracaju (SE)', 'Sao Paulo (SP)', 'firstClass', 752.27, 1.02, 392.76, 'Rainbow', '2020-07-27');
INSERT INTO flights01 VALUES (74475, 723, 'Aracaju (SE)', 'Recife (PE)', 'premium', 875.41, 1.44, 555.74, 'Rainbow', '2020-04-30');
INSERT INTO flights01 VALUES (75667, 737, 'Aracaju (SE)', 'Natal (RN)', 'firstClass', 549.96, 0.46, 176.33, 'Rainbow', '2020-08-13');
INSERT INTO flights01 VALUES (76482, 744, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 554.87, 1.46, 562.14, 'CloudFy', '2021-04-25');
INSERT INTO flights01 VALUES (76682, 745, 'Aracaju (SE)', 'Natal (RN)', 'firstClass', 577.71, 0.46, 176.33, 'FlyingDrops', '2021-06-17');
INSERT INTO flights01 VALUES (76756, 746, 'Aracaju (SE)', 'Florianopolis (SC)', 'premium', 1132.81, 2.10, 808.85, 'Rainbow', '2020-07-16');
INSERT INTO flights01 VALUES (77489, 752, 'Natal (RN)', 'Sao Paulo (SP)', 'firstClass', 1148.78, 0.85, 327.55, 'Rainbow', '2022-12-09');
INSERT INTO flights01 VALUES (78328, 760, 'Salvador (BH)', 'Natal (RN)', 'firstClass', 1195.57, 1.85, 710.57, 'Rainbow', '2021-09-25');
INSERT INTO flights01 VALUES (78721, 765, 'Brasilia (DF)', 'Aracaju (SE)', 'firstClass', 1287.52, 1.11, 425.98, 'FlyingDrops', '2019-11-16');
INSERT INTO flights01 VALUES (79885, 776, 'Recife (PE)', 'Aracaju (SE)', 'economic', 684.88, 1.44, 555.74, 'CloudFy', '2022-07-10');
INSERT INTO flights01 VALUES (80120, 779, 'Sao Paulo (SP)', 'Salvador (BH)', 'premium', 1118.61, 1.04, 401.66, 'CloudFy', '2022-09-29');
INSERT INTO flights01 VALUES (80153, 780, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'economic', 426.91, 1.46, 562.14, 'CloudFy', '2019-11-11');
INSERT INTO flights01 VALUES (80885, 787, 'Sao Paulo (SP)', 'Salvador (BH)', 'economic', 793.27, 1.04, 401.66, 'CloudFy', '2021-01-21');
INSERT INTO flights01 VALUES (80968, 788, 'Sao Paulo (SP)', 'Recife (PE)', 'premium', 1145.72, 1.26, 486.52, 'Rainbow', '2020-09-17');
INSERT INTO flights01 VALUES (81606, 794, 'Sao Paulo (SP)', 'Natal (RN)', 'premium', 719.91, 0.85, 327.55, 'CloudFy', '2020-12-26');
INSERT INTO flights01 VALUES (81641, 794, 'Natal (RN)', 'Florianopolis (SC)', 'premium', 1165.99, 1.84, 709.37, 'CloudFy', '2021-08-26');
INSERT INTO flights01 VALUES (81926, 797, 'Campo Grande (MS)', 'Sao Paulo (SP)', 'economic', 375.51, 0.44, 168.22, 'CloudFy', '2020-08-29');
INSERT INTO flights01 VALUES (81927, 797, 'Sao Paulo (SP)', 'Aracaju (SE)', 'firstClass', 1186.15, 1.02, 392.76, 'CloudFy', '2020-09-06');
INSERT INTO flights01 VALUES (82519, 803, 'Natal (RN)', 'Sao Paulo (SP)', 'firstClass', 1148.78, 0.85, 327.55, 'Rainbow', '2020-08-15');
INSERT INTO flights01 VALUES (83385, 814, 'Florianopolis (SC)', 'Natal (RN)', 'economic', 726.95, 1.84, 709.37, 'CloudFy', '2021-10-24');
INSERT INTO flights01 VALUES (83535, 816, 'Rio de Janeiro (RJ)', 'Sao Paulo (SP)', 'economic', 446.75, 0.86, 331.89, 'CloudFy', '2020-08-16');
INSERT INTO flights01 VALUES (83717, 820, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'firstClass', 1718.28, 1.46, 562.14, 'Rainbow', '2021-07-01');
INSERT INTO flights01 VALUES (84418, 829, 'Sao Paulo (SP)', 'Brasilia (DF)', 'firstClass', 824.31, 0.67, 257.81, 'Rainbow', '2019-12-26');
INSERT INTO flights01 VALUES (84570, 831, 'Sao Paulo (SP)', 'Recife (PE)', 'economic', 829.91, 1.26, 486.52, 'CloudFy', '2019-11-07');
INSERT INTO flights01 VALUES (85468, 840, 'Natal (RN)', 'Brasilia (DF)', 'firstClass', 1300.53, 1.43, 550.69, 'CloudFy', '2019-10-10');
INSERT INTO flights01 VALUES (85793, 846, 'Brasilia (DF)', 'Aracaju (SE)', 'firstClass', 1287.52, 1.11, 425.98, 'FlyingDrops', '2021-05-21');
INSERT INTO flights01 VALUES (87262, 860, 'Aracaju (SE)', 'Recife (PE)', 'economic', 602.49, 1.44, 555.74, 'Rainbow', '2021-02-04');
INSERT INTO flights01 VALUES (88505, 874, 'Brasilia (DF)', 'Natal (RN)', 'premium', 1107.52, 1.43, 550.69, 'Rainbow', '2020-01-25');
INSERT INTO flights01 VALUES (89065, 879, 'Campo Grande (MS)', 'Natal (RN)', 'economic', 411.05, 0.65, 250.68, 'Rainbow', '2021-12-20');
INSERT INTO flights01 VALUES (89679, 885, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'firstClass', 961.99, 1.21, 466.30, 'FlyingDrops', '2019-11-03');
INSERT INTO flights01 VALUES (89853, 887, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'firstClass', 1684.14, 1.46, 562.14, 'CloudFy', '2020-03-27');
INSERT INTO flights01 VALUES (90071, 888, 'Campo Grande (MS)', 'Florianopolis (SC)', 'firstClass', 1446.34, 1.49, 573.81, 'CloudFy', '2022-07-25');
INSERT INTO flights01 VALUES (90155, 890, 'Salvador (BH)', 'Florianopolis (SC)', 'economic', 899.60, 2.44, 937.77, 'Rainbow', '2019-11-11');
INSERT INTO flights01 VALUES (90862, 897, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 577.76, 1.46, 562.14, 'Rainbow', '2021-02-25');
INSERT INTO flights01 VALUES (90981, 898, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'economic', 519.10, 1.21, 466.30, 'Rainbow', '2020-06-26');
INSERT INTO flights01 VALUES (91066, 898, 'Florianopolis (SC)', 'Campo Grande (MS)', 'firstClass', 949.58, 1.49, 573.81, 'CloudFy', '2022-02-10');
INSERT INTO flights01 VALUES (91144, 899, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1315.27, 1.84, 709.37, 'CloudFy', '2019-12-26');
INSERT INTO flights01 VALUES (91717, 905, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'firstClass', 585.77, 1.21, 466.30, 'CloudFy', '2022-05-26');
INSERT INTO flights01 VALUES (91934, 907, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'economic', 427.00, 1.46, 562.14, 'Rainbow', '2020-03-12');
INSERT INTO flights01 VALUES (92085, 908, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1348.79, 1.84, 709.37, 'FlyingDrops', '2022-03-03');
INSERT INTO flights01 VALUES (92499, 914, 'Salvador (BH)', 'Florianopolis (SC)', 'firstClass', 1654.09, 2.44, 937.77, 'Rainbow', '2019-10-18');
INSERT INTO flights01 VALUES (93103, 919, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'premium', 1370.17, 1.46, 562.14, 'CloudFy', '2021-04-04');
INSERT INTO flights01 VALUES (93125, 919, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'premium', 672.66, 1.21, 466.30, 'Rainbow', '2021-09-04');
INSERT INTO flights01 VALUES (93185, 919, 'Aracaju (SE)', 'Florianopolis (SC)', 'premium', 1132.81, 2.10, 808.85, 'Rainbow', '2022-10-31');
INSERT INTO flights01 VALUES (93288, 920, 'Recife (PE)', 'Florianopolis (SC)', 'economic', 761.20, 1.76, 676.53, 'CloudFy', '2021-06-27');
INSERT INTO flights01 VALUES (93999, 929, 'Florianopolis (SC)', 'Brasilia (DF)', 'premium', 885.37, 1.66, 637.56, 'CloudFy', '2020-03-12');
INSERT INTO flights01 VALUES (94838, 936, 'Campo Grande (MS)', 'Florianopolis (SC)', 'firstClass', 1310.32, 1.49, 573.81, 'FlyingDrops', '2021-12-24');
INSERT INTO flights01 VALUES (94889, 936, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1175.62, 1.76, 676.53, 'Rainbow', '2022-12-15');
INSERT INTO flights01 VALUES (96944, 958, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1300.60, 1.76, 676.53, 'CloudFy', '2021-07-29');
INSERT INTO flights01 VALUES (97241, 961, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 554.87, 1.46, 562.14, 'CloudFy', '2020-10-29');
INSERT INTO flights01 VALUES (97541, 965, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'economic', 947.95, 1.46, 562.14, 'CloudFy', '2019-11-02');
INSERT INTO flights01 VALUES (97753, 967, 'Salvador (BH)', 'Florianopolis (SC)', 'economic', 899.60, 2.44, 937.77, 'Rainbow', '2021-06-12');
INSERT INTO flights01 VALUES (98111, 973, 'Florianopolis (SC)', 'Recife (PE)', 'economic', 674.52, 1.76, 676.53, 'CloudFy', '2019-12-05');
INSERT INTO flights01 VALUES (98250, 973, 'Brasilia (DF)', 'Florianopolis (SC)', 'firstClass', 1569.65, 1.66, 637.56, 'FlyingDrops', '2022-08-06');
INSERT INTO flights01 VALUES (98570, 975, 'Natal (RN)', 'Florianopolis (SC)', 'firstClass', 1554.92, 1.84, 709.37, 'Rainbow', '2023-02-24');
INSERT INTO flights01 VALUES (98763, 977, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'firstClass', 738.80, 1.46, 562.14, 'Rainbow', '2022-06-02');
INSERT INTO flights01 VALUES (98828, 978, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 554.87, 1.46, 562.14, 'CloudFy', '2020-07-30');
INSERT INTO flights01 VALUES (98962, 980, 'Florianopolis (SC)', 'Campo Grande (MS)', 'firstClass', 857.32, 1.49, 573.81, 'Rainbow', '2021-02-04');
INSERT INTO flights01 VALUES (99177, 982, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'firstClass', 1718.28, 1.46, 562.14, 'Rainbow', '2019-11-24');
INSERT INTO flights01 VALUES (99572, 989, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'economic', 317.08, 1.21, 466.30, 'Rainbow', '2020-05-28');
INSERT INTO flights01 VALUES (100111, 993, 'Aracaju (SE)', 'Florianopolis (SC)', 'economic', 869.13, 2.10, 808.85, 'CloudFy', '2021-10-25');
INSERT INTO flights01 VALUES (100529, 1000, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'firstClass', 1666.23, 1.46, 562.14, 'FlyingDrops', '2020-05-23');
INSERT INTO flights01 VALUES (100581, 1001, 'Florianopolis (SC)', 'Natal (RN)', 'premium', 1128.51, 1.84, 709.37, 'CloudFy', '2020-03-19');
INSERT INTO flights01 VALUES (101050, 1003, 'Aracaju (SE)', 'Florianopolis (SC)', 'economic', 852.18, 2.10, 808.85, 'Rainbow', '2022-07-03');
INSERT INTO flights01 VALUES (101336, 1005, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 481.42, 1.21, 466.30, 'Rainbow', '2020-08-06');
INSERT INTO flights01 VALUES (101562, 1007, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'economic', 313.62, 1.21, 466.30, 'CloudFy', '2020-09-17');
INSERT INTO flights01 VALUES (102524, 1017, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'economic', 947.95, 1.46, 562.14, 'CloudFy', '2020-08-22');
INSERT INTO flights01 VALUES (102533, 1017, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'premium', 1370.17, 1.46, 562.14, 'CloudFy', '2020-10-23');
INSERT INTO flights01 VALUES (102938, 1022, 'Florianopolis (SC)', 'Salvador (BH)', 'firstClass', 1630.75, 2.44, 937.77, 'Rainbow', '2021-03-25');
INSERT INTO flights01 VALUES (103183, 1024, 'Florianopolis (SC)', 'Aracaju (SE)', 'economic', 819.41, 2.10, 808.85, 'Rainbow', '2021-10-21');
INSERT INTO flights01 VALUES (103824, 1029, 'Natal (RN)', 'Florianopolis (SC)', 'firstClass', 1570.02, 1.84, 709.37, 'CloudFy', '2021-07-26');
INSERT INTO flights01 VALUES (104057, 1032, 'Florianopolis (SC)', 'Natal (RN)', 'economic', 726.95, 1.84, 709.37, 'CloudFy', '2020-04-30');
INSERT INTO flights01 VALUES (104207, 1033, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1300.60, 1.76, 676.53, 'CloudFy', '2021-05-13');
INSERT INTO flights01 VALUES (104236, 1033, 'Recife (PE)', 'Florianopolis (SC)', 'premium', 1074.75, 1.76, 676.53, 'CloudFy', '2021-12-06');
INSERT INTO flights01 VALUES (104445, 1036, 'Florianopolis (SC)', 'Brasilia (DF)', 'firstClass', 1127.36, 1.66, 637.56, 'CloudFy', '2021-03-04');
INSERT INTO flights01 VALUES (106322, 1056, 'Florianopolis (SC)', 'Recife (PE)', 'economic', 695.30, 1.76, 676.53, 'Rainbow', '2020-12-31');
INSERT INTO flights01 VALUES (107537, 1066, 'Campo Grande (MS)', 'Florianopolis (SC)', 'economic', 764.53, 1.49, 573.81, 'Rainbow', '2022-09-16');
INSERT INTO flights01 VALUES (109084, 1082, 'Florianopolis (SC)', 'Salvador (BH)', 'firstClass', 1640.80, 2.44, 937.77, 'CloudFy', '2020-01-09');
INSERT INTO flights01 VALUES (109207, 1083, 'Florianopolis (SC)', 'Recife (PE)', 'premium', 918.66, 1.76, 676.53, 'CloudFy', '2020-06-04');
INSERT INTO flights01 VALUES (109281, 1083, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 469.92, 1.21, 466.30, 'CloudFy', '2021-11-04');
INSERT INTO flights01 VALUES (109592, 1086, 'Natal (RN)', 'Florianopolis (SC)', 'economic', 873.07, 1.84, 709.37, 'CloudFy', '2021-02-13');
INSERT INTO flights01 VALUES (110030, 1090, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'premium', 672.66, 1.21, 466.30, 'Rainbow', '2020-11-15');
INSERT INTO flights01 VALUES (111292, 1103, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'premium', 672.66, 1.21, 466.30, 'Rainbow', '2020-12-05');
INSERT INTO flights01 VALUES (111699, 1105, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 481.42, 1.21, 466.30, 'Rainbow', '2022-04-21');
INSERT INTO flights01 VALUES (112083, 1111, 'Recife (PE)', 'Florianopolis (SC)', 'economic', 803.39, 1.76, 676.53, 'Rainbow', '2019-12-21');
INSERT INTO flights01 VALUES (112305, 1112, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'firstClass', 762.89, 1.46, 562.14, 'FlyingDrops', '2021-10-07');
INSERT INTO flights01 VALUES (113031, 1121, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'premium', 672.66, 1.21, 466.30, 'Rainbow', '2021-06-20');
INSERT INTO flights01 VALUES (114045, 1135, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'firstClass', 693.51, 1.46, 562.14, 'CloudFy', '2020-07-30');
INSERT INTO flights01 VALUES (114452, 1139, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'economic', 519.10, 1.21, 466.30, 'Rainbow', '2019-10-18');
INSERT INTO flights01 VALUES (114807, 1141, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'economic', 427.00, 1.46, 562.14, 'Rainbow', '2021-03-04');
INSERT INTO flights01 VALUES (115763, 1149, 'Florianopolis (SC)', 'Salvador (BH)', 'economic', 898.67, 2.44, 937.77, 'CloudFy', '2022-03-31');
INSERT INTO flights01 VALUES (115814, 1150, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1292.29, 1.76, 676.53, 'FlyingDrops', '2020-01-09');
INSERT INTO flights01 VALUES (116008, 1151, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 577.76, 1.46, 562.14, 'Rainbow', '2019-12-26');
INSERT INTO flights01 VALUES (116037, 1151, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1348.79, 1.84, 709.37, 'FlyingDrops', '2020-07-16');
INSERT INTO flights01 VALUES (116297, 1153, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 469.92, 1.21, 466.30, 'CloudFy', '2022-06-30');
INSERT INTO flights01 VALUES (116363, 1154, 'Florianopolis (SC)', 'Natal (RN)', 'economic', 726.95, 1.84, 709.37, 'CloudFy', '2020-09-17');
INSERT INTO flights01 VALUES (118713, 1176, 'Recife (PE)', 'Florianopolis (SC)', 'economic', 761.20, 1.76, 676.53, 'CloudFy', '2021-06-04');
INSERT INTO flights01 VALUES (118850, 1178, 'Florianopolis (SC)', 'Salvador (BH)', 'firstClass', 1630.75, 2.44, 937.77, 'Rainbow', '2019-10-10');
INSERT INTO flights01 VALUES (119057, 1180, 'Florianopolis (SC)', 'Natal (RN)', 'premium', 1128.51, 1.84, 709.37, 'CloudFy', '2020-04-02');
INSERT INTO flights01 VALUES (119071, 1180, 'Florianopolis (SC)', 'Natal (RN)', 'economic', 726.95, 1.84, 709.37, 'CloudFy', '2020-07-09');
INSERT INTO flights01 VALUES (119895, 1189, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1385.49, 1.84, 709.37, 'Rainbow', '2020-08-20');
INSERT INTO flights01 VALUES (120064, 1191, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'firstClass', 738.80, 1.46, 562.14, 'Rainbow', '2020-10-01');
INSERT INTO flights01 VALUES (120300, 1193, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 481.42, 1.21, 466.30, 'Rainbow', '2022-01-27');
INSERT INTO flights01 VALUES (120430, 1195, 'Salvador (BH)', 'Florianopolis (SC)', 'premium', 1336.68, 2.44, 937.77, 'Rainbow', '2020-01-13');
INSERT INTO flights01 VALUES (120692, 1196, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'firstClass', 875.65, 1.21, 466.30, 'CloudFy', '2022-12-10');
INSERT INTO flights01 VALUES (121250, 1203, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'premium', 469.92, 1.21, 466.30, 'CloudFy', '2020-05-14');
INSERT INTO flights01 VALUES (121397, 1204, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'economic', 519.10, 1.21, 466.30, 'Rainbow', '2019-11-18');
INSERT INTO flights01 VALUES (123176, 1220, 'Aracaju (SE)', 'Florianopolis (SC)', 'premium', 1174.97, 2.10, 808.85, 'CloudFy', '2021-10-29');
INSERT INTO flights01 VALUES (123459, 1222, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'firstClass', 762.89, 1.46, 562.14, 'FlyingDrops', '2021-06-03');
INSERT INTO flights01 VALUES (123577, 1223, 'Florianopolis (SC)', 'Brasilia (DF)', 'economic', 636.51, 1.66, 637.56, 'CloudFy', '2019-12-05');
INSERT INTO flights01 VALUES (123646, 1223, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1385.49, 1.84, 709.37, 'Rainbow', '2021-04-01');
INSERT INTO flights01 VALUES (124047, 1226, 'Aracaju (SE)', 'Florianopolis (SC)', 'premium', 1174.97, 2.10, 808.85, 'CloudFy', '2021-05-10');
INSERT INTO flights01 VALUES (124747, 1231, 'Florianopolis (SC)', 'Natal (RN)', 'firstClass', 1385.49, 1.84, 709.37, 'Rainbow', '2022-06-02');
INSERT INTO flights01 VALUES (124805, 1232, 'Florianopolis (SC)', 'Brasilia (DF)', 'firstClass', 1097.17, 1.66, 637.56, 'FlyingDrops', '2020-01-23');
INSERT INTO flights01 VALUES (125196, 1235, 'Recife (PE)', 'Florianopolis (SC)', 'economic', 803.39, 1.76, 676.53, 'Rainbow', '2022-01-31');
INSERT INTO flights01 VALUES (125318, 1236, 'Florianopolis (SC)', 'Brasilia (DF)', 'economic', 636.51, 1.66, 637.56, 'CloudFy', '2021-10-14');
INSERT INTO flights01 VALUES (125651, 1240, 'Aracaju (SE)', 'Florianopolis (SC)', 'firstClass', 1499.93, 2.10, 808.85, 'FlyingDrops', '2020-10-05');
INSERT INTO flights01 VALUES (125725, 1242, 'Florianopolis (SC)', 'Brasilia (DF)', 'firstClass', 1127.36, 1.66, 637.56, 'CloudFy', '2019-11-14');
INSERT INTO flights01 VALUES (126176, 1248, 'Florianopolis (SC)', 'Aracaju (SE)', 'premium', 1248.70, 2.10, 808.85, 'Rainbow', '2022-08-25');
INSERT INTO flights01 VALUES (126320, 1249, 'Recife (PE)', 'Florianopolis (SC)', 'firstClass', 1354.53, 1.76, 676.53, 'CloudFy', '2022-04-29');
INSERT INTO flights01 VALUES (126965, 1254, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'economic', 908.17, 1.46, 562.14, 'Rainbow', '2022-02-06');
INSERT INTO flights01 VALUES (127070, 1255, 'Natal (RN)', 'Florianopolis (SC)', 'economic', 884.40, 1.84, 709.37, 'Rainbow', '2021-06-18');
INSERT INTO flights01 VALUES (127692, 1259, 'Florianopolis (SC)', 'Natal (RN)', 'premium', 1114.55, 1.84, 709.37, 'Rainbow', '2022-02-10');
INSERT INTO flights01 VALUES (129260, 1272, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'economic', 947.95, 1.46, 562.14, 'CloudFy', '2021-07-23');
INSERT INTO flights01 VALUES (129511, 1276, 'Aracaju (SE)', 'Florianopolis (SC)', 'economic', 869.13, 2.10, 808.85, 'CloudFy', '2019-12-27');
INSERT INTO flights01 VALUES (129591, 1277, 'Florianopolis (SC)', 'Campo Grande (MS)', 'premium', 714.86, 1.49, 573.81, 'Rainbow', '2021-01-07');
INSERT INTO flights01 VALUES (129728, 1278, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'premium', 672.66, 1.21, 466.30, 'Rainbow', '2022-01-07');
INSERT INTO flights01 VALUES (129768, 1279, 'Florianopolis (SC)', 'Sao Paulo (SP)', 'premium', 554.87, 1.46, 562.14, 'CloudFy', '2019-10-24');
INSERT INTO flights01 VALUES (129806, 1279, 'Brasilia (DF)', 'Florianopolis (SC)', 'firstClass', 1576.97, 1.66, 637.56, 'Rainbow', '2020-07-17');
INSERT INTO flights01 VALUES (130384, 1282, 'Recife (PE)', 'Florianopolis (SC)', 'premium', 1074.75, 1.76, 676.53, 'CloudFy', '2021-10-10');
INSERT INTO flights01 VALUES (130529, 1283, 'Florianopolis (SC)', 'Brasilia (DF)', 'firstClass', 1127.36, 1.66, 637.56, 'CloudFy', '2021-12-02');
INSERT INTO flights01 VALUES (130838, 1287, 'Rio de Janeiro (RJ)', 'Florianopolis (SC)', 'economic', 533.69, 1.21, 466.30, 'CloudFy', '2020-07-12');
INSERT INTO flights01 VALUES (130895, 1288, 'Brasilia (DF)', 'Florianopolis (SC)', 'firstClass', 1576.97, 1.66, 637.56, 'Rainbow', '2020-08-24');
INSERT INTO flights01 VALUES (131071, 1289, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'firstClass', 624.89, 1.21, 466.30, 'FlyingDrops', '2020-12-17');
INSERT INTO flights01 VALUES (131694, 1296, 'Florianopolis (SC)', 'Rio de Janeiro (RJ)', 'economic', 317.08, 1.21, 466.30, 'Rainbow', '2020-01-30');
INSERT INTO flights01 VALUES (133024, 1311, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1175.62, 1.76, 676.53, 'Rainbow', '2020-10-29');
INSERT INTO flights01 VALUES (133676, 1316, 'Recife (PE)', 'Florianopolis (SC)', 'firstClass', 1434.38, 1.76, 676.53, 'FlyingDrops', '2021-10-09');
INSERT INTO flights01 VALUES (134233, 1321, 'Salvador (BH)', 'Florianopolis (SC)', 'firstClass', 1654.09, 2.44, 937.77, 'Rainbow', '2020-06-14');
INSERT INTO flights01 VALUES (134520, 1323, 'Florianopolis (SC)', 'Campo Grande (MS)', 'premium', 697.65, 1.49, 573.81, 'CloudFy', '2020-09-10');
INSERT INTO flights01 VALUES (134799, 1324, 'Florianopolis (SC)', 'Recife (PE)', 'firstClass', 1292.29, 1.76, 676.53, 'FlyingDrops', '2022-03-24');
INSERT INTO flights01 VALUES (135793, 1335, 'Sao Paulo (SP)', 'Florianopolis (SC)', 'firstClass', 1666.23, 1.46, 562.14, 'FlyingDrops', '2022-04-08');


-- load data - users1

INSERT INTO users1 VALUES (131, '4You', 'Terry Conteras', 'female', 25);
INSERT INTO users1 VALUES (252, '4You', 'Justin Lanosga', 'none', 47);
INSERT INTO users1 VALUES (343, '4You', 'Eric Fuller', 'male', 47);
INSERT INTO users1 VALUES (375, '4You', 'Jerome Sanchez', 'none', 56);
INSERT INTO users1 VALUES (390, '4You', 'Ervin Janke', 'none', 55);
INSERT INTO users1 VALUES (478, 'Monsters CYA', 'Jerry Pickle', 'none', 62);
INSERT INTO users1 VALUES (726, 'Wonka Company', 'David Bowers', 'male', 34);
INSERT INTO users1 VALUES (839, 'Wonka Company', 'Ben Brummer', 'male', 55);
INSERT INTO users1 VALUES (852, 'Wonka Company', 'Kaitlyn Wood', 'female', 57);
INSERT INTO users1 VALUES (908, 'Acme Factory', 'Mary Worley', 'female', 56);
INSERT INTO users1 VALUES (937, 'Acme Factory', 'Marc Wiliams', 'none', 32);
INSERT INTO users1 VALUES (1084, 'Acme Factory', 'Gregory Clay', 'male', 59);
INSERT INTO users1 VALUES (1198, 'Umbrella LTDA', 'Donnie Ames', 'none', 57);
INSERT INTO users1 VALUES (1329, 'Umbrella LTDA', 'Alva Johnson', 'male', 59);

/* Create Roles */
CREATE ROLE ana;
CREATE ROLE ben;
CREATE ROLE cara;
CREATE ROLE dan;

/* A1: Give ana read access to all three tables */
GRANT USAGE ON SCHEMA in_class_3 TO ana;
GRANT SELECT on in_class_3.flights01, in_class_3.hotels01, in_class_3.users1 to ana;

SET ROLE ana;
SELECT current_user;

SELECT * from in_class_3.hotels01;
DELETE FROM hotels01 WHERE travelcode = 0;

RESET ROLE;

/* A2: Give ben permission to update ONLY the hprice column of hotels01, and nothing else */
GRANT USAGE ON SCHEMA in_class_3 TO ben;
GRANT SELECT (travelcode, hprice) ON in_class_3.hotels01 TO ben;
GRANT UPDATE (hprice) ON in_class_3.hotels01 to ben;

SET ROLE ben;
SELECT current_user;

SET search_path TO in_class_3;

SELECT travelcode, hprice from in_class_3.hotels01;

UPDATE in_class_3.hotels01 SET hprice = hprice * 1.10 WHERE travelcode = 0;

RESET ROLE;

/* B1: Create a view `agency_flights` that shows only the flights of the agency 'FlyingDrops'.
Grant cara SELECT on the view only. 
As cara, verify that she can query the view but not flights 01 */

CREATE VIEW agency_flights as (
	select *
	from flights01
	where agency = 'FlyingDrops'
);

GRANT USAGE ON SCHEMA in_class_3 TO cara;
GRANT SELECT ON agency_flights to cara;

SET ROLE cara;
SELECT current_user;
SET search_path TO in_class_3;

SELECT * from agency_flights;

SELECT * from flights01;

RESET ROLE;

/* B2: Customer names are sensitive. 
Create a view users_public that exposes usercode, company, gender, age but not name.
*/

CREATE VIEW users_public as (
	select usercode, company, gender, age
	from users1
);

GRANT USAGE ON SCHEMA in_class_3 TO ana;
GRANT SELECT ON users_public TO ana;
REVOKE SELECT ON users1 from ana;

SET ROLE ana;
SELECT current_user;
SET search_path to in_class_3;

SELECT * from users_public;
SELECT * from users1;
