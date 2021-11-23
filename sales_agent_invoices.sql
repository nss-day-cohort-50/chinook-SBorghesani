SELECT Employee.FirstName || " " || Employee.LastName as SalesAgent, InvoiceId
FROM Invoice
INNER JOIN Customer 
    on Invoice.CustomerId = Customer.CustomerId
INNER JOIN Employee
    ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.LastName;