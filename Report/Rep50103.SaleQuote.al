report 50103 SaleQuote
{
    ApplicationArea = All;
    Caption = 'Sale Quote';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'SaleQuote.rdl';
    DefaultLayout = RDLC;
    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            RequestFilterFields = "Sell-to Customer No.";
            column(No; "No.") { }
            column(RequestedDeliveryDateS; Format("SalesHeader"."Requested Delivery Date", 0, 4))
            {
            }
            column(CompanyInfoAddress1; CompanyInfoAddress[1]) { }
            column(CompanyInfoAddress2; CompanyInfoAddress[2]) { }
            column(CompanyInfoAddress3; CompanyInfoAddress[3]) { }
            column(CompanyInfoAddress4; CompanyInfoAddress[4]) { }
            column(CompanyInfoAddress5; CompanyInfoAddress[5]) { }
            column(CompanyInfoAddress6; CompanyInfoAddress[6]) { }
            column(CompanyInfoAddress7; CompanyInfoAddress[7]) { }
            column(CompanyInfoAddress8; CompanyInfoAddress[8]) { }
            column(SaleQuoteTitle; SaleQuoteTitle) { }
            column(SaleToCus1; SaleToCus[1]) { }
            column(SaleToCus2; SaleToCus[2]) { }
            column(SaleToCus3; SaleToCus[3]) { }
            column(SaleToCus4; SaleToCus[4]) { }
            column(SaleToCus5; SaleToCus[5]) { }
            column(SaleToCus6; SaleToCus[6]) { }
            column(SaleToCus7; SaleToCus[7]) { }
            column(SaleToCus8; SaleToCus[8]) { }
            //column(GetSaleInfo;){}
            column(PhoneNo_COmpanyInfo; CompanyInfo."Phone No.") { }
            column(VAT_Registration_No_; CompanyInfo."VAT Registration No.") { }
            column(Email; CompanyInfo."E-Mail") { }
            column(DocumentDate; Format(SalesHeader."Document Date", 0, 4)) { }
            column(DueDate; Format(SalesHeader."Due Date", 0, 4)) { }
            column(ShipmentMethod; Format(SalesHeader."Shipment Method Code")) { }
            //column(SalePerson;Format(SalesHeader."Salesperson Code"")){}
            column(PIncludeVAT; Format(SalesHeader."Prices Including VAT")) { }
            //column(SalePerson; Format(SalePersons.Name)) { }

            dataitem(Cu; Customer)
            {
                DataItemLink = "No." = field("Sell-to Customer No.");
                column(Name; Name) { }
                column(Name_2; "Name 2") { }
                column(Address; Address) { }
                column(Country_Region_Code; "Country/Region Code") { }
                column(County; County) { }
                column(City; City) { }
                column(Post_Code; "Post Code") { }
                column(Contact; Contact) { }
                // dataitem("Salesperson/Purchaser"; "Salesperson/Purchaser")
                // {
                //     DataItemLink = "code" = field("Salesperson Code");
                //     DataItemLinkReference = SalesHeader;
                //     column(SalesPersonNames; Name) { }
                // }
            }


            dataitem("Sales Line"; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemLinkReference = SalesHeader;
                column(No_; "No.") { }
                column(Description; Description) { }
                column(Quantity; Quantity) { }
                column(Type; Type) { }
                column(Location_Code; "Location Code") { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(UOM; "Unit of Measure Code") { }
                column(Unit_Price; "Unit Price") { }
                column(Inv__Discount_Amount; "Inv. Discount Amount") { }
                column(Amount; Amount) { }
                column(VAT; "VAT %") { }
                column(Discount; "Line Discount %") { }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                //column(SalePersons; SalePersons.Name) { }
                column(Requested_Delivery_Date; "Requested Delivery Date") { }

            }


            trigger OnAfterGetRecord()

            begin
                GetSaleInfo(SalesHeader."Salesperson Code");
                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");
                if AddressLanguage <> '' then begin
                    CompanyInfo.get();
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
                        CompanyInfoAddress[8] := LocalAddress."Name/Description 2";
                        //CompanyInfoAddress[9] := LocalAddress."VAT Registration No.";
                        //CompanyInfoAddress[2]:=LocalAddress.Address;

                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.Company(CompanyInfoAddress, CompanyInfo);
                    end;
                    LocalAddress.Reset();
                    LocalAddress.SetRange(code, SalesHeader."Sell-to Customer No.");
                    LocalAddress.SetRange(Type, LocalAddress.Type::Customer);
                    LocalAddress.SetRange(Language, AddressLanguage);
                    if LocalAddress.Find('-') then begin
                        SaleToCus[1] := LocalAddress."Name/Description";
                        SaleToCus[2] := LocalAddress.Address;
                        SaleToCus[3] := LocalAddress."Address 2";
                        SaleToCus[4] := LocalAddress."County/District";
                        SaleToCus[5] := LocalAddress.Subdivision;
                        SaleToCus[6] := LocalAddress.Country;
                        SaleToCus[7] := LocalAddress."Post Code";
                        SaleToCus[8] := LocalAddress."Name/Description 2";
                        //CompanyInfoAddress[2]:=LocalAddress.Address;

                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.Customer(SaleToCus, Customer);

                    end;
                    /*
                    LocalAddress.Reset();
                    LocalAddress.SetRange(code, SalesHeader."Location Code");
                    LocalAddress.SetRange(Type, LocalAddress.Type::Location);
                    LocalAddress.SetRange(Language, AddressLanguage);
                    if LocalAddress.Find('-') then begin
                        SaleToCus[1] := LocalAddress."Name/Description";
                        SaleToCus[2] := LocalAddress.Address;
                        SaleToCus[3] := LocalAddress."Address 2";
                        SaleToCus[4] := LocalAddress."County/District";
                        SaleToCus[5] := LocalAddress.Subdivision;
                        SaleToCus[6] := LocalAddress.Country;
                        SaleToCus[7] := LocalAddress."Post Code";
                        SaleToCus[8] := LocalAddress."Name/Description 2";
                        //CompanyInfoAddress[2]:=LocalAddress.Address;

                    end else begin
                        if ShowDefaultAddrIfLocalAddressBlank = true then
                            FormatAddr.Company(CompanyInfoAddress, CompanyInfo);
                    end;*/

                end else begin
                    FormatAddr.Company(CompanyInfoAddress, CompanyInfo);
                    //FormatAddr.PurchHeaderShipTo(CompanyShiptoAddr, "Purchase Header")
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
                    field(SaleQuoteTitle; SaleQuoteTitle)
                    {
                        Caption = 'Report Type';
                        ApplicationArea = Basic, Suite;
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
        SaleName: Text[50];
        SaleQuoteTitle: Option "Sales Quote","Request for Proposal","Sale Request";
        MLLanguageCode: Code[20];
        NoOfCopies: Integer;
        SaleEmail: Text[50];
        VATAmountLine: Record "VAT Amount Line" temporary;
        Language: Codeunit Language;
        AddressLanguage: code[20];
        CompanyInfoAddress: array[15] of Text[20];
        SaleToCus: array[9] of Text[50];
        PaymentTerms: Record "Payment Terms";
        Customer: Record Customer;
        CompanyInfo: Record "Company Information";
        LocalAddress: Record "Local Name & Address";
        ShowDefaultAddrIfLocalAddressBlank: Boolean;
        FormatAddr: Codeunit "Format Address";
        ShowInternalInfo: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
    //SalePersons: Record "Salesperson/Purchaser";

    local procedure GetSaleInfo(salecode: Code[20])
        salePerson: Record "Salesperson/Purchaser";
    begin
        salePerson.Reset();
        salePerson.SetRange(code, salecode);
        if salePerson.Find('-') then begin
            SaleName := salePerson.Name;
            SaleEmail := salePerson."E-Mail";
        end;
    end;

    [Scope('OnPrem')]
    procedure IntializeRequest(NewNoOfCopies: Integer; NewShowInternalInfo: Boolean; NewArchiveDocument: Boolean; NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;
}
