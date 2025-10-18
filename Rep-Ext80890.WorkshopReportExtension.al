reportextension 80890 "Workshop Report Extension" extends "Workshop Report"
{
    dataset
    {
        add(Workshop)
        {
            column(WorkshopPrice; "Workshop Price ($)")
            {
                Caption = 'Workshop Price';
            }
        }
    }
    rendering
    {
        layout(AdditionalWordLayout)
        {
            Type = Word;
            Caption = 'Another Word Layout';
            Summary = 'A demonstration of Additional Word Layouts';
            LayoutFile = './reportlayouts/anotherwordlayout.docx';

        }
        layout(AnExcelLayout)
        {
            Type = Excel;
            Caption = 'An Excel Layout';
            Summary = 'An example of an Excel Layout';
            LayoutFile = './reportlayouts/anexcellayout.xlsx';
        }
    }
}
