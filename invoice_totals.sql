SELECT e.FirstName as SalesAgentFirst, e.LastName as SalesAgentSecond, c.LastName, c.FirstName, InvoiceId, Total 
FROM Invoice
JOIN Customer c
    on Invoice.CustomerId = c.CustomerId
JOIN Employee e
    ON c.SupportRepId = e.EmployeeId;
