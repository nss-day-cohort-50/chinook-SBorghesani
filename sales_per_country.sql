SELECT SUM(Invoice.Total) as Total_Sales,
    BillingCountry
FROM Invoice
GROUP BY BILLINGCOUNTRY
ORDER BY BillingCountry;

