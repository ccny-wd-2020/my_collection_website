CREATE TABLE ebay_sales (
	id INT AUTO_INCREMENT PRIMARY KEY,
	type VARCHAR(255),
    name VARCHAR(255),
    color VARCHAR(255),
    hangTagAttached boolean,
    hangTagGeneration INT,
    hangTagCountry VARCHAR(255),
    tushTagYear INT,
    tushTagGeneration INT,
    tushTagCountry VARCHAR(255),
    authentic boolean,
    salePrice INT,
    saleDate VARCHAR(255),
    auction boolean,
    bestOfferAccepted boolean,
    mint boolean,
    ebayItemNumber VARCHAR(255),
    additionalNotes text
);

INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 1, 1993, 1, 'Canada', 0, 1400, 'Apr 6, 2021', 1, 0, 0, '324558798339');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face employee teddy', 'teddy', 'violet', 1, 1995, 2, 'China', 0, 1300, 'Mar 30, 2021', 1, 1, 0, '163925751875');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 950, 'Mar 8, 2021', 1, 0, 0, '303886511053');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 1, 1993, 1, 'China', 0, 745, 'Apr 8, 2021', 0, 1, 0, '303952060291');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 0, 2, 1993, 1, 'China', 0, 710, 'Feb 7, 2021', 0, 1, 0, '303864453615');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 1, 1995, 2, 'China', 0, 711, 'Feb 8, 2021', 0, 1, 1, '373446676966', 'final sale price doesnt make sense');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 650, 'Mar 10, 2021', 1, 0, 0, '203278616881');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, hangTagCountry, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 2, 'UK', 1993, 1, 'China', 0, 600, 'Jan 19, 2021', 1, 0, 0, '164631121376');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 0, 2, 1993, 1, 'China', 0, 600, 'Mar 11, 2021', 1, 1, 1, '265077645172');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 520, 'Mar 23, 2021', 1, 1, 0, '384040501735');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, hangTagCountry, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 0, 2, 'UK', 1993, 1, 'China', 0, 490, 'Mar 18, 2021', 1, 0, 0, '143981662810');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'violet', 0, 3, 1993, 1, 'China', 0, 490, 'Apr 7, 2021', 1, 0, 0, '324541415271');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 0, 2, 1993, 1, 'China', 0, 455, 'Mar 10, 2021', 1, 0, 0, '324511646492');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, hangTagCountry, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 0, 2, 'UK',1993, 1, 'China', 0, 450, 'Mar 11, 2021', 1, 1, 0, '143974044876');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'teal', 0, 2, 1993, 1, 'China', 0, 453, 'Mar 5, 2021', 0, 1, 0, '203290350520');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 425, 'Mar 30, 2021', 0, 1, 0, '303940487983');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'violet', 0, 2, 1993, 1, 'China', 0, 420, 'Mar 21, 2021', 0, 1, 1, '363327338890');

SELECT * FROM ebay_sales;
