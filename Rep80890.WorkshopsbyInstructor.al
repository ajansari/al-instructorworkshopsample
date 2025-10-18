report 80890 "Workshops by Instructor"
{
    ApplicationArea = All;
    Caption = 'Workshops by Instructor';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = './reportlayouts/WorkshopsbyInstructor.docx';
    ExcelLayout = './reportlayouts/WorkshopsbyInstructor.xlsx';
    dataset
    {
        dataitem(Instructor; Instructor)
        {
            column(Code; "Code")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last Name")
            {
            }
            column(JobTitle; "Job Title")
            {
            }
            dataitem(Workshop; Workshop)
            {
                DataItemLink = "Instructor Code" = field(Code);
                column(WorkshopCode; Workshop."Code")
                {
                }
                column(WorkshopDesc; Workshop.Description)
                {
                }
                column(WorkshopProduct; Workshop."Product Code")
                {
                }
                column(WorkshopLength; Workshop."Workshop Length")
                {
                }
                column(WorkshopPrice; Workshop."Workshop Price ($)")
                {
                }
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
