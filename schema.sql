CREATE TABLE ebay_sales (
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
    ebayItemNumber VARCHAR(255) UNIQUE NOT NULL PRIMARY KEY,
    additionalNotes text
);

INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 1, 1993, 1, 'Canada', 0, 1400, 'Apr 6, 2021', 1, 0, 0, '324558798339');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 1, 1995, 2, 'China', 0, 1300, 'Mar 30, 2021', 1, 1, 0, '163925751875', 'employee teddy');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 950, 'Mar 8, 2021', 1, 0, 0, '303886511053');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'brown', 0, 1, 1993, 1, 'China', 0, 745, 'Apr 8, 2021', 0, 1, 0, '303952060291');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 0, 2, 1993, 1, 'China', 0, 710, 'Feb 7, 2021', 0, 1, 0, '303864453615');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 1, 1995, 2, 'China', 0, 711, 'Feb 8, 2021', 0, 1, 1, '373446676966', 'employee teddy');
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
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 0, 3, 1993, 1, 'China', 0, 420, 'Mar 23, 2021', 1, 0, 0, '384040501740');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'violet', 0, 2, 1993, 1, 'China', 0, 405, 'Mar 20, 2021', 0, 1, 0, '303919919364');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 0, 3, 1993, 1, 'China', 0, 395, 'Apr 7, 2021', 0, 1, 1, '303950632915', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 0, 2, 1993, 1, 'China', 0, 405, 'Mar 18, 2021', 0, 1, 0, '174677727882');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 0, 3, 1993, 1, 'China', 0, 389, 'Mar 30, 2021', 1, 0, 0, '324520941787');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'jade', 0, 3, 1993, 1, 'China', 0, 385, 'Apr 5, 2021', 0, 1, 1, '303948313613', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('old face teddy', 'teddy', 'violet', 0, 1, 1993, 1, 'China', 0, 375, 'Jan 25, 2021', 0, 1, 1, '174604874789');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'magenta', 0, 3, 1993, 1, 'China', 0, 385, 'Apr 5, 2021', 0, 0, 1, '303948371252', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 375, 'Apr 11, 2021', 1, 0, 1, '303955553292', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 0, 2, 1993, 1, 'China', 0, 340, 'Feb 13, 2021', 0, 1, 0, '303878524140');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('old face teddy', 'teddy', 'jade', 0, 2, 1993, 1, 'China', 0, 345, 'Mar 30, 2021', 0, 1, 1, '313468958376', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('old face teddy', 'teddy', 'violet', 0, 2, 1993, 1, 'China', 0, 300, 'Jan 28, 2021', 1, 0, 1, '114468714492', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 300, 'Jan 22, 2021', 1, 0, 1, '163925574033', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'jade', 0, 3, 1993, 1, 'China', 0, 300, 'Apr 10, 2021', 1, 0, 1, '303954871986', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 270, 'Mar 15, 2021', 1, 0, 1, '265087395194', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'violet', 0, 3, 1993, 1, 'China', 0, 250, 'Mar 2, 2021', 1, 0, 0, '224340042077');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 0, 2, 1993, 1, 'China', 0, 250, 'Jan 28, 2021', 1, 0, 1, '162045215934');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 0, 3, 1993, 1, 'China', 0, 245, 'Mar 16, 2021', 0, 0, 1, '114726393930');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 1, 225, 'Mar 10, 2021', 1, 0, 0, '313148340441', 'looks like a fake through the eyes and the tush tag is one of the closer authentic looking ones but it still looks fake');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 3, 1993, 1, 'China', 0, 210, 'Jan 25, 2021', 1, 0, 1, '202811732321');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'teal', 0, 2, 1993, 1, 'China', 1, 200, 'Mar 16, 2021', 1, 0, 0, '193805074753', 'looks like a fake through the eyes and the tush tag is one of the closer authentic looking ones but it still looks fake');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 0, 3, 1993, 1, 'China', 1, 200, 'Mar 30, 2021', 1, 0, 1, '265105538088', 'employee teddy. near mint. price tag on hang tag.');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 160, 'Mar 10, 2021', 1, 0, 1, '254339687089');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'magenta', 0, 2, 1993, 1, 'China', 0, 151, 'Jan 21, 2021', 0, 1, 1, '393096348043', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, hangTagCountry, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'violet', 0, 2, 'German/Korean', 1993, 1, 'China', 0, 150, 'Mar 01, 2021', 0, 1, 1, '402706385248', 'not authenticated, but tag is very near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 139, 'Mar 10, 2021', 1, 0, 1, '224137822333');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 1, 1993, 1, 'China', 0, 115, 'Jan 26, 2021', 1, 0, 1, '202648448400');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 1, 1993, 1, 'China', 0, 100, 'Jan 26, 2021', 1, 0, 1, '164287443495');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 100, 'Feb 12, 2021', 1, 0, 1, '265050612354');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'brown', 0, 2, 1993, 1, 'China', 0, 100, 'Feb 26, 2021', 1, 0, 1, '143959465430', 'near mint. a little crease.');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 96, 'Jan 26, 2021', 0, 1, 1, '324454726132');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'cranberry', 0, 2, 1993, 1, 'China', 0, 300, 'Apr 27, 2021', 1, 0, 1, '124695651697', 'near mint');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 60, 'Apr 11, 2021', 1, 0, 1, '333951298979');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'magenta', 1, 1993, 1, 'China', 0, 60, 'Apr 11, 2021', 1, 0, 1, '333951299622');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 1, 1993, 1, 'China', 0, 100, 'Apr 16, 2021', 1, 0, 1, '264286272257');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 85, 'Mar 27, 2021', 1, 0, 1, '264286256010');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 1, 1993, 1, 'China', 0, 92, 'Mar 9, 2021', 1, 0, 1, '383962257783');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, hangTagGeneration, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber, additionalNotes)
VALUES ('new face teddy', 'teddy', 'brown', 0, 3, 1993, 1, 'China', 0, 80, 'Mar 15, 2021', 1, 0, 1, '114726795086', 'near mint. Price Tag');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 83, 'Apr 16, 2021', 1, 0, 1, '384040501722');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 1, 1993, 1, 'China', 0, 83, 'Feb 03, 2021', 1, 0, 1, '303833718693');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 80, 'Feb 09, 2021', 1, 0, 1, '303833729081');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'jade', 1, 1993, 1, 'China', 0, 70, 'Feb 19, 2021', 1, 0, 1, '203171850540');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'teal', 1, 1993, 1, 'China', 0, 69, 'Mar 19, 2021', 1, 0, 1, '114652772131');
INSERT INTO ebay_sales (type, name, color, hangTagAttached, tushTagYear, tushTagGeneration, tushTagCountry, authentic, salePrice, saleDate, auction, bestOfferAccepted, mint, ebayItemNumber)
VALUES ('new face teddy', 'teddy', 'cranberry', 1, 1993, 1, 'China', 0, 72, 'Feb 05, 2021', 1, 0, 1, '383379007829');
SELECT * FROM ebay_sales;
