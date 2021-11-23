SELECT COUNT(Customer.CustomerId) Customer_Count,
        Employee.FirstName || " " || Employee.LastName as Employee_Full_Name
FROM Customer 
JOIN Employee 
    ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee_Full_Name;
