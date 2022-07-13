page 50100 Paciente
{
    Caption = 'Paciente';
    PageType = List;
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


                }
                field(DNI; REC.DNI)
                {

                }
                field(Nombre; Rec.Nombre)
                {

                }
                field(Apellido1; Rec.Apellido1)
                {

                }
                field(Apellido2; Rec.Apellido2)
                {

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