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
        recPaciente: Record Paciente;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        Rec.SetRange(Rec.Codigo,recPaciente.Dieta);
        If Rec.FindFirst() then
            Error('No se puede borrar el registro mientras este relacionado con otra tabla');
    end;

    trigger OnRename()
    begin

    end;

}