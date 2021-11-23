with ESalesSum as (
    SELECT Employee.FirstName || " " || Employee.LastName as Full_Name,
        Sum(Invoice.total) as Total_Sales
    From Employee 
        join Customer on Customer.SupportRepId = Employee.EmployeeId
        join Invoice on Invoice.CustomerId = Customer.CustomerId
    Where strftime('%Y', Invoice.InvoiceDate) = "2009"
    GROUP BY Full_Name
)
Select Full_Name
FROM ESalesSum
Where TotalSales = (
        Select Max(Total_Sales)
        FROM ESalesSum
    )