page 50101 "Credit Limit Update"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Update Customer Credit Limits';

    layout
    {
        area(Content)
        {
            group(Information)
            {
                Caption = 'Credit Limit Update';
                InstructionalText = 'Click Process to set credit limit to 5000 for customers with no limit.';
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Process)
            {
                Caption = 'Update Credit Limits';
                ApplicationArea = All;
                Image = Process;
                Promoted = true;

                trigger OnAction()
                var
                    BatchProcess: Codeunit "Simple Batch Process";
                begin
                    if Confirm('Update credit limits for customers?') then
                        BatchProcess.Run();
                end;
            }
        }
    }
}