report 80894 "Workshop Report"
{
    ApplicationArea = All;
    Caption = 'Workshop Report';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = './reportlayouts/FixedLayout.docx';
    dataset
    {
        dataitem(Workshop; Workshop)
        {
            column(Description; Description)
            {
                Caption = 'Workshop Description';
            }
            column(ProductCode; "Product Code")
            {
            }
            column(InstructorCode; "Instructor Code")
            {
            }
            column(WorkshopLength; "Workshop Length")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
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
}
