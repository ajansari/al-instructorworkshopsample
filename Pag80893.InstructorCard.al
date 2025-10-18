page 80893 "Instructor Card"
{
    ApplicationArea = All;
    Caption = 'Instructor Card';
    PageType = Card;
    SourceTable = Instructor;

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
                field("First Name"; Rec."First Name")
                {
                    ToolTip = 'Specifies the value of the First Name field.', Comment = '%';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ToolTip = 'Specifies the value of the Last Name field.', Comment = '%';
                }
                field(Credentials; Rec.Credentials)
                {
                    ToolTip = 'Specifies the value of the Credentials field.', Comment = '%';
                }
            }
            group(Affiliation)
            {
                Caption = 'Affiliation';
                field(Company; Rec.Company)
                {
                    ToolTip = 'Specifies the value of the Company field.', Comment = '%';
                }
                field("Job Title"; Rec."Job Title")
                {
                    ToolTip = 'Specifies the value of the Job Title field.', Comment = '%';
                }
            }
            group("Contact Information")
            {
                Caption = 'Contact Information';
                field("E-mail"; Rec."E-mail")
                {
                    ToolTip = 'Specifies the value of the E-mail field.', Comment = '%';
                }
                field(Phone; Rec.Phone)
                {
                    ToolTip = 'Specifies the value of the Phone field.', Comment = '%';
                }
            }
        }
    }
}
