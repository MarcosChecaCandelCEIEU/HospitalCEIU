page 50126 Especialidad
{
    Caption = 'Especialidad';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Especialidad;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Codigo; rec.Codigo)
                {
                    ApplicationArea = All;

                }
                field(Nombre; Rec.Nombre)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}