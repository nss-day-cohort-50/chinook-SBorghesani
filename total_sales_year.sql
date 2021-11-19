--TOTAL BOTH
SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-0-0" and "2009-12-31"
    or InvoiceDate BETWEEN "2011-0-0" AND '2011-12-31';

--2009

SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate BETWEEN "2009-0-0" and "2009-12-31";

--2011
SELECT SUM(Total)
FROM Invoice
Where InvoiceDate BETWEEN "2011-0-0" AND '2011-12-31';