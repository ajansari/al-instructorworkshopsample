table 80890 Workshop
{
    Caption = 'Workshop';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = "Instructor".Code;
        }
        field(4; "Product Code"; Enum Product)
        {
            Caption = 'Product Code';
        }
        field(5; "Workshop Price ($)"; Integer)
        {
            Caption = 'Workshop Price ($)';
        }
        field(6; "Workshop Length"; DateFormula)
        {
            Caption = 'Workshop Length';
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
}
