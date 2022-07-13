page 50100 Paciente
{
    Caption = 'Paciente';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Paciente;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {
                    Editable = false;

                }
                field(DNI; REC.DNI)
                {
                    Editable = False;
                }
                field(Nombre; Rec.Nombre)
                {
                    Editable = false;
                }
                field(Apellido1; Rec.Apellido1)
                {
                    Editable = false;
                }
                field(Apellido2; Rec.Apellido2)
                {
                    Editable = false;
                }
                field(NumeroHabitacion; Rec.NumeroHabitacion)
                {

                }
                field(Doctor; Rec.Doctor)
                {

                }
                field(Dieta; Rec.Dieta)
                {

                }
                field(Alta; Rec.Alta)
                {

                }
                field(FechaEntrada; Rec.FechaEntrada)
                {
                    
                }
                field(FechaSalida; Rec.FechaSalida)
                {

                }
                field(Medicamentos; Rec.Medicamentos)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}