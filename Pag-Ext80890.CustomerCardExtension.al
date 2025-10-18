pageextension 80890 CustomerAMExt extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field(Name2; rec."Name 2")
            {
                ApplicationArea = All;
            }
            field(AccountManager; rec."Account Manager")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var

}