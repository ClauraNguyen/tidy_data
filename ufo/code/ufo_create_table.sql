/*
Name: ufo_creat_table
Description: import raw ufo dataset to SQL server to make further clean and transformation
Skills used: Create table and use BULK INSERT to import data
*/
DROP table if exists ufo;
CREATE table ufo
(
	sighting_report varchar(1000)
	,description text
)
;

-- change localpath to the directory where you saved the ufo .csv files

BULK 
INSERT ufo
FROM  'D:\Claura Nguyen\Data Analyst\project\tidy_data\ufo\raw\ufo1.csv'
WITH(CODEPAGE = '65001'
	,FIRSTROW = 2
	,FORMAT = 'csv'
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ','
	,DATAFILETYPE = 'char'
	--,ROWTERMINATOR = ':\r'
	,ROWTERMINATOR = '0x0a'
)

BULK 
INSERT ufo
FROM  'D:\Claura Nguyen\Data Analyst\project\tidy_data\ufo\raw\ufo2.csv'
WITH(CODEPAGE = '65001'
	,FIRSTROW = 2
	,FORMAT = 'csv'
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ','
	,DATAFILETYPE = 'char'
	--,ROWTERMINATOR = ':\r'
	,ROWTERMINATOR = '0x0a'
)
BULK 
INSERT ufo
FROM  'D:\Claura Nguyen\Data Analyst\project\tidy_data\ufo\raw\ufo3.csv'
WITH(CODEPAGE = '65001'
	,FIRSTROW = 2
	,FORMAT = 'csv'
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ','
	,DATAFILETYPE = 'char'
	--,ROWTERMINATOR = ':\r'
	,ROWTERMINATOR = '0x0a'
)
BULK 
INSERT ufo
FROM  'D:\Claura Nguyen\Data Analyst\project\tidy_data\ufo\raw\ufo4.csv'
WITH(CODEPAGE = '65001'
	,FIRSTROW = 2
	,FORMAT = 'csv'
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ','
	,DATAFILETYPE = 'char'
	--,ROWTERMINATOR = ':\r'
	,ROWTERMINATOR = '0x0a'
)
BULK 
INSERT ufo
FROM  'D:\Claura Nguyen\Data Analyst\project\tidy_data\ufo\raw\ufo5.csv'
WITH(CODEPAGE = '65001'
	,FIRSTROW = 2
	,FORMAT = 'csv'
	,FIELDQUOTE = '"'
	,FIELDTERMINATOR = ','
	,DATAFILETYPE = 'char'
	--,ROWTERMINATOR = ':\r'
	,ROWTERMINATOR = '0x0a'
)

SELECT *
FROM ufo