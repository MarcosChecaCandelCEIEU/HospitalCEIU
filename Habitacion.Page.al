page 50125 Habitacion
{
    Caption = 'Habitacion';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = Habitacion;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Planta; Rec.Planta)
                {
                    ApplicationArea = All;
                }
                field("No. Camas"; Rec."No. Camas")
                {
                    ApplicationArea = All;
                }
                field("Camas disponibles"; Rec."Camas disponibles")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}