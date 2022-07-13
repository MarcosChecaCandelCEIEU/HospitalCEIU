table 50102 Dietas
{


    fields
    {
        field(1; Codigo; Code[3])
        {


        }
        field(2; Nombre; Text[20])
        {

        }
    }

    keys
    {
        key(Key1; Codigo)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin


    end;

    trigger OnRename()
    begin

    end;

}