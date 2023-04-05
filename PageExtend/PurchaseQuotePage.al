pageextension 50120 PurchaseQuoteEx extends "Purchase Quotes"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
        addfirst(processing)
        {
            action(PurchaseQuote)
            {
                ApplicationArea = All;
                Caption = 'Purchase Quote', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Report;
                RunObject = report "Purchase - Quote (XTR)_S";

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}