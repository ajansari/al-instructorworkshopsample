page 80891 "Workshop Card"
{
    ApplicationArea = All;
    Caption = 'Workshop Card';
    PageType = Card;
    SourceTable = Workshop;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("Instructor Code"; Rec."Instructor Code")
                {
                    ToolTip = 'Specifies the value of the Instructor Code field.', Comment = '%';
                }
                field("Product Code"; Rec."Product Code")
                {
                    ToolTip = 'Specifies the value of the Product Code field.', Comment = '%';
                }
                field("Workshop Length"; Rec."Workshop Length")
                {
                    ToolTip = 'Specifies the value of the Workshop Length field.', Comment = '%';
                }
                field("Workshop Price ($)"; Rec."Workshop Price ($)")
                {
                    ToolTip = 'Specifies the value of the Workshop Price field.', Comment = '%';
                }
            }
        }
    }
}
