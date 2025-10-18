page 80892 Instructors
{
    ApplicationArea = All;
    Caption = 'Instructors';
    PageType = List;
    SourceTable = Instructor;
    UsageCategory = Lists;
    Editable = false;
    CardPageId = "Instructor Card";

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
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
            }
        }
    }
}
