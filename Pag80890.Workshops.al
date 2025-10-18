page 80890 Workshops
{
    ApplicationArea = All;
    Caption = 'Workshops';
    PageType = List;
    SourceTable = Workshop;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Workshop Card";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field("Product Code"; Rec."Product Code")
                {
                    ToolTip = 'Specifies the value of the Product Code field.', Comment = '%';
                }
            }
        }
    }
}
