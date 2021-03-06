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
            TableRelation = Habitacion."No.";
        }
        field(7; Doctor; Code[20])
        {
            TableRelation = Doctor.CodigoDoctor;
        }

        field(8; Dieta; Option)
        {
            InitValue = Nada;
            OptionMembers = Desayuno,Comida,Cena,Nada;
            OptionCaption = 'Desayuno''Comida''Cena''Nada';
        }
        field(9; Alta; Boolean)
        {
            InitValue = false;
        }
        field(10; FechaEntrada; Date)
        {
            Editable = false;
        }
        field(11; FechaSalida; Date)
        {
            Editable = false;
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
        FechaEntrada := WorkDate();
    end;

    trigger OnModify()
    begin
        if Confirm('¿Estas seguro que quieres modificar la informacion del paciente?') then begin
            if Alta then
                FechaSalida := WorkDate();
            Modify();
        end
        else
            exit;
    end;

    trigger OnDelete()
    begin
        if not Alta then Error('No se puede eliminar a un paciente si no tiene el alta');

    end;

    trigger OnRename()
    begin

    end;

}