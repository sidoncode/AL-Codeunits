tableextension 50111 CustomerExt extends Customer
{
    fields
    {
        field(50112; "Customer Status"; Option)
        {
            OptionMembers = " ",Active,Overdue,Blocked;
            OptionCaption = ' ,Active,Overdue,Blocked';
            Caption = 'Customer Status';
        }
    }
}