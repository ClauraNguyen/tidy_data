DROP table if exists ufo;
CREATE table ufo
(
	sighting_report varchar(1000)
	,description text
)
;

SELECT *
FROM ufo
-- change localpath to the directory where you saved the ufo .csv files

BULK 
INSERT ufo
FROM  'C:\Users\Admin\Downloads\Data Analysis\sql_book-master\Chapter 5_ Text Analysis\ufo1.csv'
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
FROM  'C:\Users\Admin\Downloads\Data Analysis\sql_book-master\Chapter 5_ Text Analysis\ufo2.csv'
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
FROM  'C:\Users\Admin\Downloads\Data Analysis\sql_book-master\Chapter 5_ Text Analysis\ufo3.csv'
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
FROM  'C:\Users\Admin\Downloads\Data Analysis\sql_book-master\Chapter 5_ Text Analysis\ufo4.csv'
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
FROM  'C:\Users\Admin\Downloads\Data Analysis\sql_book-master\Chapter 5_ Text Analysis\ufo5.csv'
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