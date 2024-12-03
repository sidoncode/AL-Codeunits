page 50100 CustomerCreditValidationPage
{
    PageType = Card;
    SourceTable = Customer;
    Caption = 'Customer Credit Validation';

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(CustomerNo; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(CustomerName; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(CreditLimit; Rec."Credit Limit (LCY)")
                {
                    ApplicationArea = All;
                }
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ValidateCredit)
            {
                Caption = 'Validate Credit Limit';
                ApplicationArea = All;

                trigger OnAction()
                var
                    ValidateCredit: Codeunit 50102; // Updated to match your new Codeunit ID
                begin
                    if ValidateCredit.ValidateCreditLimit(Rec."No.") then
                        Message('Credit limit is valid for customer %1.', Rec."No.");
                end;
            }
        }
    }
}