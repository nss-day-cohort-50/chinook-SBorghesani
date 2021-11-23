SELECT Employee.FirstName || " " || Employee.LastName as Full_Name,
    COUNT(Invoice.InvoiceId) invoice_count
FROM Employee 
    JOIN Customer on Customer.SupportRepId = Employee.EmployeeId
    JOIN Invoice on Invoice.CustomerId = Customer.CustomerId
GROUP BY Full_Name;

