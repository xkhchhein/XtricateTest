pageextension 50121 SaleQuote extends "Sales Quotes"
{
    layout
    {
        // Add changes to page layout here
        moveafter("Sell-to Contact"; "Bill-to Name")
        //moveafter("Sell-to Contact"; "Ship-to Name")
        moveafter("Sell-to Contact"; "Sell-to Customer Name")
        modify("External Document No.")
        {
            Visible = false;
        }
        addafter("Sell-to Contact")
        {

        }
    }

    actions
    {
        // Add changes to page actions here
        addfirst(processing)
        {
            action(SaleQuote)
            {
                ApplicationArea = All;
                Caption = 'Sale Quote Report', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Report;
                RunObject = report SaleQuote;

                trigger OnAction()
                begin

                end;
            }
            action(SaleQuoteXTR)
            {
                ApplicationArea = All;
                Caption = 'SaleQuote XTR', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Report;
                RunObject = report "Sales - Quote (XTR)_S";

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
        Customer: Record Customer;
}