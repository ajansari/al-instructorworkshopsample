report 80891 "Another Workshop Report"
{
    ApplicationArea = All;
    Caption = 'Workshops by Instructor';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = Word;
    WordLayout = './reportlayouts/AnotherReportLayout.docx';
    ExcelLayout = './reportlayouts/AnotherReportLayout.xlsx';
    dataset
    {
        dataitem(Instructor; Instructor)
        {
            column(Code; "Code")
            {
                Caption = 'Instructor Code';
            }
            column(FirstName; "First Name")
            {
                Caption = 'Instructor First Name';
            }
            column(LastName; "Last Name")
            {
                Caption = 'Instructor Last Name';
            }
            column(JobTitle; "Job Title")
            {
                Caption = 'Instructor Job Title';
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
