codeunit 50100 "Simple Discount Calculator"
{
    procedure CalculateDiscount(Quantity: Decimal; UnitPrice: Decimal): Decimal
    var
        DiscountPercentage: Decimal;
        TotalAmount: Decimal;
    begin
        TotalAmount := Quantity * UnitPrice;

        // Simple discount rules
        if Quantity >= 100 then
            DiscountPercentage := 10
        else if Quantity >= 50 then
            DiscountPercentage := 5
        else if Quantity >= 20 then
            DiscountPercentage := 2;

        exit(TotalAmount * DiscountPercentage / 100);
    end;
}