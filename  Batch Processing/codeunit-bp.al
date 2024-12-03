codeunit 50109 "Simple Batch Process"
{
    trigger OnRun()
    begin
        UpdateCreditLimits();
    end;

    local procedure UpdateCreditLimits()
    var
        Customer: Record Customer;
        Counter: Integer;
    begin
        Counter := 0;

        if Customer.FindSet() then
            repeat
                // Set credit limit to 5000 for customers with no limit
                if Customer."Credit Limit (LCY)" = 0 then begin
                    Customer."Credit Limit (LCY)" := 5000;
                    Customer.Modify();
                    Counter += 1;
                end;
            until Customer.Next() = 0;

        Message('Updated credit limit for %1 customers.', Counter);
    end;
}