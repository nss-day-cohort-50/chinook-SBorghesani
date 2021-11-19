

-- Both Years 
SELECT COUNT(InvoiceId)
FROM Invoice 
WHERE InvoiceDate between "2009-0-0" and "2009-12-31"
    OR InvoiceDate between "2011-0-0" and '2011-12-31';


--Individual 2009

SELECT COUNT(InvoiceId)
FROM Invoice 
WHERE InvoiceDate between "2009-0-0" and "2009-12-31";

--Individual 2011

SELECT COUNT(InvoiceId)
FROM Invoice 
WHERE InvoiceDate between "2011-0-0" and '2011-12-31';
