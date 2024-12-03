// Codeunit Definition
codeunit 50102 ValidateCustomerCredit
{
    procedure ValidateCreditLimit(CustomerNo: Code[20]): Boolean
    var
        Customer: Record Customer;
    begin
        if Customer.Get(CustomerNo) then begin
            if Customer."Credit Limit (LCY)" < Customer.Balance then
                Error('Customer %1 has exceeded the credit limit.', CustomerNo);
            exit(true);
        end;
        exit(false);
    end;
}