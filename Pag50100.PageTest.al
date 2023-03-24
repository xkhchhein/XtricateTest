page 50100 PageTest
{
    ApplicationArea = All;
    Caption = 'PageTest';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = Documents;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s address. This address will appear on all sales documents for the customer.';
                }
                field("Collection Method"; Rec."Collection Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collection Method field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s city.';
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(Report)
            {
                ApplicationArea = All;
                Caption = 'Caption', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Report;

                trigger OnAction()
                var
                    report_s: Report QoutePurchaseReportTest;
                begin
                    report_s.Run();
                end;
            }
        }
    }
}
