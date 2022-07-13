page 50101 Doctor
{
    Caption = 'Doctor';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Doctor;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(CodigoDoctor; Rec.CodigoDoctor)
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
                field(Especialidad; Rec.Especialidad)
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