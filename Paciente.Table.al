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
            TableRelation = Habitacion."No.";
        }
        field(6; Doctor; Code[20])
        {
            TableRelation = Doctor.CodigoDoctor;
        }

        field(7; Dieta; Code[10])
        {
            TableRelation = Dietas.Codigo;
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
        if Confirm('¿Estas seguro que quieres modificar la informacion del paciente?') then
            Modify()
        Else
            exit;

    end;

    trigger OnDelete()
    begin
        
    end;

    trigger OnRename()
    begin

    end;

}