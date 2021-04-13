CREATE TABLE ebay_sales (
	type VARCHAR(255),
    name VARCHAR(255),
    color VARCHAR(255),
    hangTagAttached boolean,
    hangTagGeneration INT,
    tushTagYear INT,
    tushTagGeneration INT,
    tushTagCountry VARCHAR(255),
    authentic boolean,
	salePrice INT,
    auction boolean,
    mint boolean,
    ebayItemNumber VARCHAR(255),
    additionalNotes text
);

INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, auction, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'brown', 0, 1, 1993, 1, 'Canada', 0, 1400, 1, 0, '324558798339');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, auction, mint, ebayItemNumber)
VALUES ('new face employee teddy', 'teddy', 'purple', 1, 1995, 2, 'China', 0, 1300, 1, 0, '163925751875');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, auction, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 950, 1, 0, '303886511053');
SELECT * FROM ebay_sales;
