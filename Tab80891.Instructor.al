table 80891 Instructor
{
    Caption = 'Instructor';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
        }
        field(3; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
        }
        field(4; "E-mail"; Text[80])
        {
            Caption = 'E-mail';
        }
        field(5; Phone; Text[20])
        {
            Caption = 'Phone';
        }
        field(6; Credentials; Text[80])
        {
            Caption = 'Credentials';
        }
        field(7; Company; Text[80])
        {
            Caption = 'Company';
        }
        field(8; "Job Title"; Text[50])
        {
            Caption = 'Job Title';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Code", "First Name", "Last Name")
        {
        }
    }
}