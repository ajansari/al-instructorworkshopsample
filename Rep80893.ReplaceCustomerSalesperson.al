report 80893 "Replace Customer Salesperson"
{
    ApplicationArea = All;
    Caption = 'Replace Customer Salesperson';
    UsageCategory = Tasks;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            begin
                if Customer."Salesperson Code" = '' then begin
                    Customer."Salesperson Code" := NewSalespersonCode;
                    Customer.Modify();
                end;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NewSalesperson; NewSalespersonCode)
                    {
                        ApplicationArea = All;
                        Caption = 'New Salesperson Code';
                        TableRelation = "Salesperson/Purchaser";
                        ToolTip = 'Specifies the salesperson code to assign to customers with blank salesperson codes.';
                    }
                }
            }
        }
    }

    trigger OnPostReport()
    begin
        Message('Process completed.');
    end;

    var
        NewSalespersonCode: Code[20];
}
