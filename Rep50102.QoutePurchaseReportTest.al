report 50102 QoutePurchaseReportTest
{
    ApplicationArea = All;
    Caption = 'QoutePurchaseReport';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'QoutePurchaseReportTest.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            column(CompanyShiptoAddr1; CompanyShiptoAddr[1]) { }
            column(CompanyShiptoAddr2; CompanyShiptoAddr[2]) { }
            column(CompanyShiptoAddr3; CompanyShiptoAddr[3]) { }
            column(CompanyShiptoAddr4; CompanyShiptoAddr[4]) { }
            column(CompanyShiptoAddr5; CompanyShiptoAddr[5]) { }
            column(CompanyShiptoAddr6; CompanyShiptoAddr[6]) { }
            column(CompanyShiptoAddr7; CompanyShiptoAddr[7]) { }
            column(CompanyShiptoAddr8; CompanyShiptoAddr[8]) { }
            column(CompanyInfoAddress1; CompanyInfoAddress[1]) { }
            column(CompanyInfoAddress2; CompanyInfoAddress[2]) { }
            column(CompanyInfoAddress3; CompanyInfoAddress[3]) { }
            column(CompanyInfoAddress4; CompanyInfoAddress[4]) { }
            column(CompanyInfoAddress5; CompanyInfoAddress[5]) { }
            column(CompanyInfoAddress6; CompanyInfoAddress[6]) { }
            column(CompanyInfoAddress7; CompanyInfoAddress[7]) { }
            column(CompanyInfoAddress8; CompanyInfoAddress[8]) { }
            column(BuyFromAddress1; BuyFromAddress[1]) { }
            column(BuyFromAddress2; BuyFromAddress[2]) { }
            column(BuyFromAddress3; BuyFromAddress[3]) { }
            column(BuyFromAddress4; BuyFromAddress[4]) { }
            column(BuyFromAddress5; BuyFromAddress[5]) { }
            column(BuyFromAddress6; BuyFromAddress[6]) { }
            column(BuyFromAddress7; BuyFromAddress[7]) { }
            column(BuyFromAddress8; BuyFromAddress[8]) { }
            column(purchaseQuote; purchaseQuote) { }
            column(phone_no; phone_no) { }
            column(email; email) { }
            column(vatRgistration_noPH; vatRgistration_no) { }
            column(buy_from; buy_from) { }
            column(ship_to; ship_to) { }
            column(document_date; document_date) { }
            column(requested_reciept_date; requested_reciept_date) { }
            column(due_date; due_date) { }
            column(vendor_order_no; vendor_order_no) { }
            column(purchaser; purchaser) { }
            column(purchaser_email; purchaser_email) { }
            dataitem(CopyLoop; "Integer")
            {
                column(PhoneNoCompanyInfo; CompanyInfo."Phone No.")
                {
                }
                column(vatRgistration_no; vatRgistration_no) { }
            }
            trigger OnAfterGetRecord()
            begin
                GetPurchaserInfo("Purchase Header"."Purchaser Code");//get purchaser information 
                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");
                if AddressLanguage <> '' then begin  ///if language blank
                    CompanyInfo.Get();
                    LocalAddress.Reset();
                    LocalAddress.SetRange("Original Name/Description", CompanyInfo.Name);
                    LocalAddress.SetRange(Type, LocalAddress.Type::"Company Information");
                    LocalAddress.SetRange(Language, AddressLanguage);
                    if LocalAddress.Find('-') then begin
                        CompanyInfoAddress[1] := LocalAddress."Name/Description";
                        CompanyInfoAddress[2] := LocalAddress.Address;
                        CompanyInfoAddress[3] := LocalAddress."Address 2";
                        CompanyInfoAddress[4] := LocalAddress."County/District";
                        CompanyInfoAddress[5] := LocalAddress.Subdivision;
                        CompanyInfoAddress[6] := LocalAddress.Country;
                        CompanyInfoAddress[7] := LocalAddress."Post Code";
                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.Company(CompanyInfoAddress, CompanyInfo);
                    end;
                    LocalAddress.Reset();
                    LocalAddress.SetRange(Code, "Purchase Header"."Buy-from Vendor No.");
                    LocalAddress.SetRange(Type, LocalAddress.Type::Vendor);
                    LocalAddress.SetRange(Language, AddressLanguage);
                    if LocalAddress.Find('-') then begin
                        BuyFromAddress[1] := LocalAddress."Name/Description";
                        BuyFromAddress[2] := LocalAddress.Address;
                        BuyFromAddress[3] := LocalAddress."Address 2";
                        BuyFromAddress[4] := LocalAddress."County/District";
                        BuyFromAddress[5] := LocalAddress.Subdivision;
                        BuyFromAddress[6] := LocalAddress.Country;
                        BuyFromAddress[7] := LocalAddress."Post Code";
                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.PurchHeaderBuyFrom(BuyFromAddress, "Purchase Header");
                    end;
                    LocalAddress.Reset();
                    LocalAddress.SetRange(Code, "Purchase Header"."Location Code");
                    LocalAddress.SetRange(Type, LocalAddress.Type::Location);
                    LocalAddress.SetRange(Language, AddressLanguage);
                    if LocalAddress.Find('-') then begin
                        CompanyShiptoAddr[1] := LocalAddress."Name/Description";
                        CompanyShiptoAddr[2] := LocalAddress.Address;
                        CompanyShiptoAddr[3] := LocalAddress."Address 2";
                        CompanyShiptoAddr[4] := LocalAddress."County/District";
                        CompanyShiptoAddr[5] := LocalAddress.Subdivision;
                        CompanyShiptoAddr[6] := LocalAddress.Country;
                        CompanyShiptoAddr[7] := LocalAddress."Post Code";
                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.PurchHeaderShipTo(CompanyShiptoAddr, "Purchase Header")
                    end;
                end;
            end;
        }

    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'No. of Copies';
                    }
                    field(PurchaseQuoteTitle; PurchaseQuoteTitle)
                    {
                        Caption = 'Report Type';
                        ApplicationArea = Basic, Suite;
                    }
                    field(PicturePerPage; PicturePerPage)
                    {
                        Caption = 'Picture Per Page';
                        Visible = true;
                        ApplicationArea = all;
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Show Internal Information';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Archive Document';

                        trigger OnValidate()
                        begin
                            if not ArchiveDocument then
                                LogInteraction := false;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        trigger OnValidate()
                        begin
                            if LogInteraction then
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                    field(AddressLanguage; AddressLanguage)
                    {
                        ApplicationArea = All;
                        Caption = 'Address Language';
                        TableRelation = Language;
                    }
                    field(MLLanguageCode; MLLanguageCode)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Field Caption Language Code';
                        TableRelation = Language.Code;
                    }
                    field(ShowDefaultAddrIfLocalAddressBlank; ShowDefaultAddrIfLocalAddressBlank)
                    {
                        ApplicationArea = All;
                        Caption = 'Show default address if local address is blank';
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }


    var
        CompanyInfo: Record "Company Information";
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        Language: Codeunit Language;
        NoOfCopies: Integer;
        MLLanguageCode: Code[20];
        LogInteractionEnable: Boolean;
        PicturePerPage: Option "Default","1","4","9";
        ShowInternalInfo: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        PurchaseQuoteTitle: Option "Purchase Quote","Request for Proposal","Purchase Request";
        CompanyShiptoAddr: array[8] of text[120];
        BuyFromAddress: array[8] of text[120];
        ShowDefaultAddrIfLocalAddressBlank: Boolean;
        FormatAddr: Codeunit "Format Address";
        LocalAddress: Record "Local Name & Address";
        AddressLanguage: Code[20];
        PurchaserEmail: Text;
        PurchaserName: Text;
        purchaseQuote: Label 'Purchase Quote';
        email: Label 'E-mail:';
        phone_no: Label 'Phone No:';
        vatRgistration_no: Label 'VAT Registration No:';
        buy_from: Label 'Buy-From:';
        DocumentDateCaptionTranslated: Text;
        ship_to: Label 'Ship-To:';
        document_date: Label 'Document Date:';
        requested_reciept_date: Label 'Requested Reciept Date:';
        due_date: Label 'Due Date';
        vendor_order_no: Label 'Vendor Order No:';
        purchaser: Label 'Purchaser:';
        purchaser_email: Label 'Purchaser Email:';
        CompanyInfoAddress: array[8] of Text[100];
        ExpectedRecepteDateCaptionTranslated: Text;
        DueDateCaptionTranslated: Text;
        VendorOrderNoCaptionTranslated: Text;
        PurchaserCaptionTranslated: Text;
        CompInfoNameCaptionTranslated: Text;
        CompInfoBankNameCaptionTranslated: Text;
        CompInfoBankAccNoCaptionTranslated: Text;
        CompanyInfoSwiftCodeCaptionTranslated: Text;
        LanguageCaption: Record "Document ML Field Caption";
        //Line caption translate
        [InDataSet]
        NoCaptionTranslated: Text;

        Item: Record Item;

    [Scope('OnPrem')]
    procedure IntializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;

    local procedure HeaderCaptionTranslate(LanguageCode: Code[20])
    begin

        LanguageCaption.SetRange(LanguageCaption."Language Code", LanguageCode);
        LanguageCaption.SetRange(LanguageCaption."Table ID", 38);
        if LanguageCaption.Find('-') then begin
            repeat
                //===========Purchase Header Translated=========================
                if LanguageCaption."Field ID" = 99 then begin //Invoice Date
                    DocumentDateCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 21 then begin
                    ExpectedRecepteDateCaptionTranslated := LanguageCaption."Language Caption";
                end;
                if LanguageCaption."Field ID" = 24 then begin
                    DueDateCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 66 then begin
                    VendorOrderNoCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 43 then begin
                    PurchaserCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
            until LanguageCaption.Next = 0;
        end;
        DefaultCaptionTranslate();
    end;

    local procedure DefaultCaptionTranslate()
    begin
        //Default Header
        if DocumentDateCaptionTranslated = '' then begin
            DocumentDateCaptionTranslated := "Purchase Header".FieldCaption("Document Date") + ':';
        end;
        if PurchaserCaptionTranslated = '' then begin
            PurchaserCaptionTranslated := 'Purchaser:';
        end;
        if VendorOrderNoCaptionTranslated = '' then begin
            VendorOrderNoCaptionTranslated := "Purchase Header".FieldCaption("Vendor Order No.") + ':';
        end;
        if ExpectedRecepteDateCaptionTranslated = '' then begin
            ExpectedRecepteDateCaptionTranslated := "Purchase Header".FieldCaption("Expected Receipt Date") + ':';
        end;
        if DueDateCaptionTranslated = '' then begin
            DueDateCaptionTranslated := "Purchase Header".FieldCaption("Due Date") + ':';
        end;

        // Line translate

        // if NoCaptionTranslated = '' then begin
        //     NoCaptionTranslated := "Purchase Line".FieldCaption("No.") + ':';
        // end;
        // if LineDescriptionCaptionTranslated = '' then begin
        //     LineDescriptionCaptionTranslated := "Purchase Line".FieldCaption(Description) + ':';
        // end;
        // if QTYCaptionTranslated = '' then begin
        //     QTYCaptionTranslated := "Purchase Line".FieldCaption(Quantity) + ':';
        // end;
        // if UnitCostCaptiontranslated = '' then begin
        //     UnitCostCaptiontranslated := "Purchase Line".FieldCaption("Unit Cost") + ':';
        // end;
        // if LineDiscountCaptionTranslated = '' then begin
        //     LineDiscountCaptionTranslated := "Purchase Line".FieldCaption("Line Discount %") + ':';
        //     ;
        // end;
        // if VATIdentifierCaptionTranslated = '' then begin
        //     VATIdentifierCaptionTranslated := "Purchase Line".FieldCaption("VAT %") + ':';
        //     ;
        // end;
        // if LineAmountCaptionTranslated = '' then begin
        //     LineAmountCaptionTranslated := "Purchase Line".FieldCaption(Amount);
        // end;

    end;

    local procedure GetPurchaserInfo(PurchaseCode: code[24])
        SalesPerPurchaser: Record "Salesperson/Purchaser";
    begin
        SalesPerPurchaser.Reset();
        SalesPerPurchaser.SetRange(Code, PurchaseCode);
        if SalesPerPurchaser.Find('-') then begin
            PurchaserEmail := SalesPerPurchaser."E-Mail";
            PurchaserName := SalesPerPurchaser.Name;
        end;

    end;
}
