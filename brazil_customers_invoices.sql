SELECT FirstName, LastName, InvoiceId, InvoiceDate, BillingCountry
FROM Invoice
INNER JOIN Customer 
    on Invoice.CustomerId = Customer.CustomerId
WHERE BillingCountry like "brazil";