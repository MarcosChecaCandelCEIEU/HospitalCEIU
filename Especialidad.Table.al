table 50126 Especialidad
{


    fields
    {
        field(1; Codigo; Code[10])
        {


        }

        field(2; Nombre; Text[50])
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