page 50102 Dietas
{
    Caption = 'Dietas';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Dietas;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Codigo; Rec.Codigo)
                {


                }
                field(Nombre; Rec.Nombre)
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