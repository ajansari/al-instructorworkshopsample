report 80895 "Customer Name 2 Update"
{
    ApplicationArea = All;
    Caption = 'Customer Name 2 Update';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    dataset
    {
        dataitem(Customer; Customer)
        {
            trigger OnAfterGetRecord()
            begin
                If Customer."Name 2" = '' then begin
                    Customer."Name 2" := Name2Value;
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
                group(UserInputValues)
                {
                    Caption = 'User Inout Values';
                    field(Name2Value; Name2Value)
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
            }
        }
    }
    trigger OnPostReport()
    begin
        Message('Customers have been updated.');
    end;

    var
        Name2Value: Text[50];
}
