WITH SalesByCountry AS (
    SELECT SUM(Invoice.Total) as Total_Sales,
    BillingCountry
FROM Invoice
GROUP BY BILLINGCOUNTRY
ORDER BY BillingCountry
)
SELECT BillingCountry, MAX(Total_Sales) 
FROM SalesByCountry;

