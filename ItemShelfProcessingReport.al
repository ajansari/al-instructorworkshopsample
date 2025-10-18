report 80896 "Add Shelf to Item"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Item; Item)
        {
            trigger OnAfterGetRecord()
            begin
                If Item."Shelf No." = '' then begin
                    Item."Shelf No." := ShelfNo;
                    Item.Modify();
                end;
            end;
        }
    }

    requestpage
    {
        AboutTitle = 'Teaching tip title';
        AboutText = 'Teaching tip content';
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(ShelfNo; ShelfNo)
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }
    trigger OnPostReport()
    begin
        Message('Items Populated with Shelf Code');
    end;

    var
        ShelfNo: Code[10];
}