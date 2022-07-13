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
        recDoc: Record Doctor;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin
        Rec.SetRange(rec.Codigo,recDoc.Especialidad);
        If Rec.FindFirst() then
            Error('No se puede borrar el registro mientras este relacionado con otra tabla');
    end;

    trigger OnRename()
    begin

    end;

}