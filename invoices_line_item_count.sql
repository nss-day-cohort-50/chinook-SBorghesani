SELECT Invoice.InvoiceId invoice_id, COUNT(InvoiceLine.InvoiceLineId) line_item_count FROM Invoice
JOIN InvoiceLine
    ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY invoice_id;

