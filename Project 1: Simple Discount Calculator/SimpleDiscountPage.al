page 50102 "Simple Discount Calculator"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Simple Discount Calculator';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(Quantity; QuantityVar)
                {
                    Caption = 'Quantity';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        CalculateTotal();
                    end;
                }
                field(UnitPrice; UnitPriceVar)
                {
                    Caption = 'Unit Price';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        CalculateTotal();
                    end;
                }
                field(TotalAmount; TotalAmountVar)
                {
                    Caption = 'Total Amount';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(DiscountAmount; DiscountAmountVar)
                {
                    Caption = 'Discount Amount';
                    ApplicationArea = All;
                    Editable = false;
                }
                field(FinalAmount; FinalAmountVar)
                {
                    Caption = 'Final Amount';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Calculate)
            {
                Caption = 'Calculate Discount';
                ApplicationArea = All;
                Image = Calculate;

                trigger OnAction()
                begin
                    CalculateDiscount();
                end;
            }
        }
    }

    var
        QuantityVar: Decimal;
        UnitPriceVar: Decimal;
        TotalAmountVar: Decimal;
        DiscountAmountVar: Decimal;
        FinalAmountVar: Decimal;

    local procedure CalculateTotal()
    begin
        TotalAmountVar := QuantityVar * UnitPriceVar;
    end;

    local procedure CalculateDiscount()
    var
        DiscCalc: Codeunit "Simple Discount Calculator";
    begin
        DiscountAmountVar := DiscCalc.CalculateDiscount(QuantityVar, UnitPriceVar);
        FinalAmountVar := TotalAmountVar - DiscountAmountVar;
    end;
}