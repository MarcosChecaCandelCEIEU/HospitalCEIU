table 50100 Paciente
{


    fields
    {
        field(1; DNI; Code[10])
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
        field(5; NumeroHabitacion; Code[5])
        {

        }
        field(6; Doctor; Code[20])
        {

        }

        field(7; Dieta; Code[10])
        {

        }
        field(8; Alta; Boolean)
        {

        }
        field(9; FechaEntrada; Date)
        {

        }
        field(10; FechaSalida; Date)
        {

        }
        field(11; Medicamentos; Boolean)
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
table 50125 Habitacion
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[5])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Planta; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "No. Camas"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Camas disponibles"; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK1; "No.")
        {
            Clustered = true;
        }
    }

    var
        recPaciente: Record Paciente;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        recPaciente.SetRange(recPaciente.NumeroHabitacion, Rec."No.");
        if recPaciente.FINDFIRST then
            Error('No se puede borrar la habitacion si esta relacionada a un paciente');
    end;

    trigger OnRename()
    begin

    end;

}

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