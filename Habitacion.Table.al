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
        Rec.SetRange("No.", recPaciente.NumeroHabitacion);
        if rec.FINDFIRST then
            Error('No se puede borrar la habitacion si esta relacionada a un paciente');
    end;

    trigger OnRename()
    begin

    end;

}