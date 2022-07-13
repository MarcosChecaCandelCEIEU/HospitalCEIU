table 50101 Doctor
{


    fields
    {
        field(1; CodigoDoctor; Code[20])
        {


        }
        field(2; Nombre; Text[20])
        {

        }
        field(3; Apellido1; Text[20])
        {

        }
        field(4; Apellido2; Text[20])
        {

        }
        field(5; Especialidad; Code[20])
        {
            TableRelation = Especialidad.Codigo;
        }

    }

    keys
    {
        key(Key1; CodigoDoctor)
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