table 50100 Paciente
{


    fields
    {
        field(1; Codigo; Code[10])
        {

        }
        field(2; DNI; Code[9])
        {

        }
        field(3; Nombre; Text[20])
        {

        }
        field(4; Apellido1; Text[20])
        {

        }
        field(5; Apellido2; Text[20])
        {

        }
        field(6; NumeroHabitacion; Code[5])
        {

        }
        field(7; Doctor; Code[20])
        {

        }

        field(8; Dieta; Code[10])
        {

        }
        field(9; Alta; Boolean)
        {

        }
        field(10; FechaEntrada; Date)
        {

        }
        field(11; FechaSalida; Date)
        {

        }
        field(12; Medicamentos; Boolean)
        {

        }
    }

    keys
    {
        key(Key1; DNI)
        {
            Clustered = true;
        }
    }

    var


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