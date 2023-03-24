report 50119 "Purchase - Quote (XTR)_S"
{
    // #XTR15.00, 15-06-2010, Added report "Purchase - Quote (XTR)" for multi-language printing support.
    // #XTR15.00, 15-06-2010, Added barcode printing support.
    DefaultLayout = RDLC;
    RDLCLayout = 'PurchaseQuoteXTR.rdl';
    Caption = 'Purchase - Quote (XTR)';

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Purchase Quote';
            column(RequestedRcptDateCaption; RequestedRcptDateCaption) { }
            column(Requested_Receipt_Date; "Requested Receipt Date") { }
            column(Expected_Receipt_Date; "Expected Receipt Date") { }
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
            column(PurchaserEmailCaption; PurchaserEmailCaption) { }
            column(PurchaserEmail; PurchaserEmail) { }
            column(PurchaserName; PurchaserName) { }
            column(DocumentType_PurchHdr; "Document Type")
            {
            }
            column(No_PurchHdr; "No.")
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EmailIdCaption; EmailIdCaptionLbl)
            {
            }
            column(DocDateCaption; DocDateCaptionLbl)
            {
            }
            column(VendorOrderNo; "Purchase Header"."Vendor Order No.")
            {
            }
            column(VendorOrderNoCap; "Purchase Header".FieldCaption("Purchase Header"."Vendor Order No."))
            {
            }
            column(LCYCode; GLSetup."LCY Code")
            {
            }
            column(CurrencyCode; "Purchase Header"."Currency Code")
            {
            }
            column(ShowVATIdentifierDetail; ShowVATIdentifierDetail)
            {
            }
            column(PurchaseQuoteTitle; PurchaseQuoteTitle)
            {
            }
            column(BuyFromVendorCaption; BuyFromVendor)
            {
            }
            column(DueDate_PurchHdr; Format("Purchase Header"."Due Date", 0, 4))
            {
            }
            column(DueDate_PurchHdrCap; "Purchase Header".FieldCaption("Purchase Header"."Due Date"))
            {
            }
            column(UOMCaption; UOMCaption)
            {
            }
            column(UnitPriceCaption; UnitPrice)
            {
            }
            column(ExpctReceiptDt_PurchHdr; Format("Purchase Header"."Expected Receipt Date", 0, 4))
            {
            }
            column(ExpctReceiptDt_PurchHdrCap; "Purchase Header".FieldCaption("Purchase Header"."Expected Receipt Date"))
            {
            }
            column(ShowCommercialTaxIncluse; ShowCommercialTaxIncluse)
            {
            }
            column(CommercialTaxIncluseCap; CommercialTaxIncluseCap)
            {
            }
            column(AlwaysShowVAT; AlwaysShowVAT)
            {
            }
            column(PriceIncludeCommercialTax; PriceIncludeCommercialTax)
            {
            }
            column(ArchivedVersionsNo; "Purchase Header"."No. of Archived Versions")
            {
            }
            column(BarcodeImage; CompanyInfo.Picture)
            {
            }
            column(PrintBarcode; PrintBarcode)
            {
            }
            column(DocumentDateCaptionTranslated; DocumentDateCaptionTranslated)
            {
            }
            column(ExpectedRecepteDateCaptionTranslated; ExpectedRecepteDateCaptionTranslated)
            {
            }
            column(DueDateCaptionTranslated; DueDateCaptionTranslated)
            {
            }
            column(VendorOrderNoCaptionTranslated; VendorOrderNoCaptionTranslated)
            {
            }
            column(PurchaserCaptionTranslated; PurchaserCaptionTranslated)
            {
            }
            column(CompInfoNameCaptionTranslated; CompInfoNameCaptionTranslated)
            {
            }
            column(CompInfoBankNameCaptionTranslated; CompInfoBankNameCaptionTranslated)
            {
            }
            column(CompInfoBankAccNoCaptionTranslated; CompInfoBankAccNoCaptionTranslated)
            {
            }
            column(CompanyInfoSwiftCodeCaptionTranslated; CompanyInfoSwiftCodeCaptionTranslated)
            {
            }
            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CompanyInfo2Picture; CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture; CompanyInfo.Picture)
                    {
                    }
                    column(CompanyInfo1Picture; CompanyInfo1.Picture)
                    {
                    }
                    column(PurchCopyText; StrSubstNo(Text002, CopyText))
                    {
                    }
                    column(VendAddr1; VendAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(VendAddr2; VendAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(VendAddr3; VendAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(VendAddr4; VendAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(VendAddr5; VendAddr[5])
                    {
                    }
                    column(PhoneNoCompanyInfo; CompanyInfo."Phone No.")
                    {
                    }
                    column(VendAddr6; VendAddr[6])
                    {
                    }
                    column(FaxNoCompanyInfo; CompanyInfo."Fax No.")
                    {
                    }
                    column(VATRegNoCompanyInfo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(GiroNoCompanyInfo; CompanyInfo."Giro No.")
                    {
                    }
                    column(EMailCompanyInfo; CompanyInfo."E-Mail")
                    {
                    }
                    column(HomePageCompanyInfo; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoName; CompanyInfo.Name)
                    {
                    }
                    column(BankNameCompanyInfo; CompanyInfo."Bank Name")
                    {
                    }
                    column(BankAccNoCompanyInfo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfoBankBranchNo; CompanyInfo."Bank Branch No.")
                    {
                    }
                    column(CompanyInfoSwiftCode; CompanyInfo."SWIFT Code")
                    {
                    }
                    column(PaytoVendorNo_PurchHdr; "Purchase Header"."Pay-to Vendor No.")
                    {
                    }
                    column(DocumentDate_PurchHdr; Format("Purchase Header"."Document Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegsNo_PurchHdr; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(PurchaserText; PurchaserText)
                    {
                    }
                    column(SalesPurchPersonName; SalesPurchPerson.Name)
                    {
                    }
                    column(No1_PurchHdr; "Purchase Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_PurchHdr; "Purchase Header"."Your Reference")
                    {
                    }
                    column(VendAddr7; VendAddr[7])
                    {
                    }
                    column(VendAddr8; VendAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(OutpuNo; OutputNo)
                    {
                    }
                    column(ABN_PurchHdr; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(ABNDivPartNo_PurchHdr; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(PhoneNoCaption; PhoneNoCaptionLbl)
                    {
                    }
                    column(FaxNoCaption; FaxNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption; VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption; GiroNoCaptionLbl)
                    {
                    }
                    column(BankCaption; BankCaptionLbl)
                    {
                    }
                    column(BankAccNoCaption; BankAccNoCaptionLbl)
                    {
                    }
                    column(ExpectedDateCaption; ExpectedDateCaptionLbl)
                    {
                    }
                    column(QuoteNoCaption; QuoteNoCaptionLbl)
                    {
                    }
                    column(DivPartNoCaption; DivPartNoCaptionLbl)
                    {
                    }
                    column(ABNCaption; ABNCaptionLbl)
                    {
                    }
                    column(PaytoVendorNo_PurchHdrCaption; "Purchase Header".FieldCaption("Pay-to Vendor No."))
                    {
                    }
                    column(ShipToAddr1_Header; ShipToAddr[1])
                    {
                    }
                    column(ShipToAddr2_Header; ShipToAddr[2])
                    {
                    }
                    column(ShipToAddr3_Header; ShipToAddr[3])
                    {
                    }
                    column(ShipToAddr4_Header; ShipToAddr[4])
                    {
                    }
                    column(ShipToAddr5_Header; ShipToAddr[5])
                    {
                    }
                    column(ShipToAddr6_Header; ShipToAddr[6])
                    {
                    }
                    column(ShipToAddr7_Header; ShipToAddr[7])
                    {
                    }
                    column(ShipToAddr8_Header; ShipToAddr[8])
                    {
                    }
                    column(ShiptoAddrCaption_Header; ShiptoAddrCaptionLbl)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_IntegerLine; DimensionLoop1.Number)
                        {
                        }
                        column(HdrDimsCaption; HdrDimsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FindFirst then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until DimSetEntry1.Next = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break;
                        end;
                    }
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.Break;
                        end;
                    }
                    dataitem(RoundLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(LogInteraction; LogInteraction)
                        {
                        }
                        column(Type_PurchLine; Format("Purchase Line".Type, 0, 2))
                        {
                        }
                        column(Description_PurchLine; "Purchase Line".Description)
                        {
                            IncludeCaption = false;
                        }
                        column(Quantity_PurchLine; "Purchase Line".Quantity)
                        {
                            IncludeCaption = false;
                        }
                        column(UnitofMeasure_PurchLine; "Purchase Line"."Unit of Measure Code")
                        {
                            IncludeCaption = false;
                        }
                        column(ExpctReceiptDt_PurchLine; Format("Purchase Line"."Expected Receipt Date", 0, 4))
                        {
                        }
                        column(No_PurchLine; "Purchase Line"."No.")
                        {
                        }
                        column(VendorItemNo_PurchLine; "Purchase Line"."Vendor Item No.")
                        {
                        }
                        column(ExpectedDate1Caption; ExpectedDate1CaptionLbl)
                        {
                        }
                        column(OurNoCaption; OurNoCaptionLbl)
                        {
                        }
                        column(ItemNoCaption; ItemNoCaptionLbl)
                        {
                        }
                        column(UOM_PurchLineCaption; 'UOM')
                        {
                        }
                        column(Description_PurchLineCaption; "Purchase Line".FieldCaption(Description))
                        {
                        }
                        column(Quantity_PurchLineCaption; "Purchase Line".FieldCaption(Quantity))
                        {
                        }
                        column(DirectUnitCode; "Purchase Line"."Direct Unit Cost")
                        {
                        }
                        column(DirectUnitCodeCaption; "Purchase Line".FieldCaption("Purchase Line"."Direct Unit Cost"))
                        {
                        }
                        //LinecaptionTranslated
                        column(NoCaptionTranslated; NoCaptionTranslated) { }
                        column(LineDescriptionCaptionTranslated; LineDescriptionCaptionTranslated) { }
                        column(QTYCaptionTranslated; QTYCaptionTranslated) { }
                        column(UnitCostCaptiontranslated; UnitCostCaptiontranslated) { }
                        column(LineDiscountCaptionTranslated; LineDiscountCaptionTranslated) { }
                        column(VATIdentifierCaptionTranslated; VATIdentifierCaptionTranslated) { }
                        column(LineAmountCaptionTranslated; LineAmountCaptionTranslated) { }
                        column(Total; GrandTotal)
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(Number1_IntegerLine; DimensionLoop2.Number)
                            {
                            }
                            column(LineDimsCaption; LineDimsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                    if not DimSetEntry2.FindSet then
                                        CurrReport.Break;
                                end else
                                    if not Continue then
                                        CurrReport.Break;

                                Clear(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := StrSubstNo('%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1; %2 - %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until (DimSetEntry2.Next = 0);
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break;
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then
                                PurchLine.Find('-')
                            else
                                PurchLine.Next;
                            "Purchase Line" := PurchLine;

                            DimSetEntry2.SetRange("Dimension Set ID", "Purchase Line"."Dimension Set ID");

                            //XTR15.00 +
                            GrandTotal := "Purchase Line".Quantity * "Purchase Line"."Direct Unit Cost";
                            //XTR15.00 +
                        end;

                        trigger OnPostDataItem()
                        var
                            PictureAppendix: Report "Picture Appendix";
                        begin
                            PurchLine.DeleteAll;
                            //picture appendix
                            IF PicturePerPage <> PicturePerPage::Default THEN BEGIN
                                PictureAppendix.SetData("Purchase Header", PicturePerPage);
                                PictureAppendix.RUNMODAL;
                            END;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := PurchLine.Find('+');
                            while MoreLines and (PurchLine.Description = '') and (PurchLine."Description 2" = '') and
                                  (PurchLine."No." = '') and (PurchLine.Quantity = 0) and
                                  (PurchLine.Amount = 0)
                            do
                                MoreLines := PurchLine.Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break;
                            PurchLine.SetRange("Line No.", 0, PurchLine."Line No.");
                            SetRange(Number, 1, PurchLine.Count);
                        end;
                    }
                    dataitem(Total1; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(ShipmentMethodDesc; ShipmentMethod.Description)
                        {
                        }
                        column(ShpMethodCaption; ShpMethodCaptionLbl)
                        {
                        }
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(BuyfromVendorNo_PurchHdr; "Purchase Header"."Buy-from Vendor No.")
                        {
                        }
                        column(BuyfromVendorNo_PurchHdrCaption; "Purchase Header".FieldCaption("Buy-from Vendor No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if "Purchase Header"."Buy-from Vendor No." = "Purchase Header"."Pay-to Vendor No." then
                                CurrReport.Break;
                        end;
                    }
                    dataitem(Total3; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddrCaption; ShiptoAddrCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if ("Purchase Header"."Sell-to Customer No." = '') and (ShipToAddr[1] = '') then
                                CurrReport.Break;
                        end;
                    }
                    column(CommentStringTranslation_DocumentMLCommentString; '')
                    {
                    }


                }

                trigger OnAfterGetRecord()
                begin
                    Clear(PurchLine);
                    Clear(PurchPost);
                    PurchLine.DeleteAll;
                    PurchPost.GetPurchLines("Purchase Header", PurchLine, 0);

                    if Number > 1 then begin
                        CopyText := Text001;
                        OutputNo += 1;
                    end;
#pragma warning disable AL0667
                    CurrReport.PageNo := 1;
#pragma warning restore AL0667
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.Preview then
                        PurchCountPrinted.Run("Purchase Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := Abs(NoOfCopies) + 1;
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            var
                GCode: Code[30];
            begin
                GetPurchaserInfo("Purchase Header"."Purchaser Code");//get purchaser information 
                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");
                if AddressLanguage <> '' then begin
                    CompanyInfo.Get();//get CompanyInfo
                    LocalAddress.Reset();//reset filter
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
                end else begin
                    /*
                    CompanyInfo.Get;
                    CompanyAddr[1] := CompanyInfo.Name;
                    CompanyAddr[2] := CompanyInfo.Address;
                    CompanyAddr[3] := CompanyInfo."Address 2";
                    CompanyAddr[4] := CompanyInfo.County;
                    CompanyAddr[5] := CompanyInfo.City + ', ' + CompanyInfo."Post Code";
                    if CompanyInfo."Country/Region Code" = '' then
                        GCode := "Purchase Header"."Pay-to Country/Region Code"
                    else
                        GCode := CompanyInfo."Country/Region Code";
                    CompanyAddr[6] := GetCountryRegion(GCode);

                    CompanyInfo.Get;
                    CompanyInfoAddress[1] := CompanyInfo.Name;
                    CompanyInfoAddress[2] := CompanyInfo.Address;
                    CompanyInfoAddress[3] := CompanyInfo."Address 2";
                    CompanyInfoAddress[4] := CompanyInfo.County;
                    CompanyInfoAddress[5] := CompanyInfo.City + ', ' + CompanyInfo."Post Code";
                    if CompanyInfo."Country/Region Code" = '' then
                        GCode := "Purchase Header"."Pay-to Country/Region Code"
                    else
                        GCode := CompanyInfo."Country/Region Code";
                    CompanyInfoAddress[6] := GetCountryRegion(GCode);
                    */
                    //restore address default
                    FormatAddr.Company(CompanyInfoAddress, CompanyInfo);
                    FormatAddr.PurchHeaderBuyFrom(BuyFromAddress, "Purchase Header");
                    FormatAddr.PurchHeaderShipTo(CompanyShiptoAddr, "Purchase Header")

                end;// if address language is not select, show default
                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");

                if "Purchaser Code" = '' then begin
                    SalesPurchPerson.Init;
                    PurchaserText := '';
                end else begin
                    SalesPurchPerson.Get("Purchaser Code");
                    PurchaserText := Text000
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldCaption("Your Reference");
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FieldCaption("VAT Registration No.");

                //XTR15.00 +
                Vendor.Get("Buy-from Vendor No.");
                FormatAddr.PurchHeaderPayTo(VendAddr, "Purchase Header");
                if "Shipment Method Code" = '' then
                    ShipmentMethod.Init
                else begin
                    ShipmentMethod.Get("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                end;

                FormatAddr.PurchHeaderShipTo(ShipToAddr, "Purchase Header");

                if not CurrReport.Preview then begin
                    if ArchiveDocument then
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);

                    if LogInteraction then begin
                        CalcFields("No. of Archived Versions");
                        SegManagement.LogDocument(
                          11, "No.", "Doc. No. Occurrence", "No. of Archived Versions", DATABASE::Vendor, "Pay-to Vendor No.",
                          "Purchaser Code", '', "Posting Description", '');
                    end;
                end;

            end;

            trigger OnPreDataItem()
            begin
                HeaderCaptionTranslate(MLLanguageCode);
                FooterCaptionTranslate(MLLanguageCode);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(content)
            {
                group(Options)
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
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage()
        begin
            // ArchiveDocument := PurchSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(11) <> '';

            LogInteractionEnable := LogInteraction;
        end;

        trigger OnAfterGetRecord()
        begin

        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        PurchSetup.Get;
        CompanyInfo.Get;
        SalesSetup.Get;
        //XKH Add Company Logo
        CompanyInfo.SETAUTOCALCFIELDS(Picture);
        CompanyInfo.GET;
        //XKH Add Company Logo 
        case SalesSetup."Logo Position on Documents" of
            SalesSetup."Logo Position on Documents"::"No Logo":
                ;
            SalesSetup."Logo Position on Documents"::Left:
                begin
                    CompanyInfo3.Get;
                    CompanyInfo3.CalcFields(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Center:
                begin
                    CompanyInfo1.Get;
                    CompanyInfo1.CalcFields(Picture);
                end;
            SalesSetup."Logo Position on Documents"::Right:
                begin
                    CompanyInfo2.Get;
                    CompanyInfo2.CalcFields(Picture);
                end;
        end;
    end;

    var
        RequestedRcptDateCaption: Label 'Requested Receipt Date:';
        PurchaserEmailCaption: Label 'Purchaser Email:';
        PurchaserName: Text;
        PurchaserEmail: Text;
        ReportPrintingTitle: Text;
        Text000: Label 'Purchaser:';
        Text001: Label ' Copy';
        Text002: Label 'Purchase Quote';
        Text003: Label 'Page %1';
        Item: Record Item;
        FA: Record "Fixed Asset";
        ShipmentMethod: Record "Shipment Method";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        PurchSetup: Record "Purchases & Payables Setup";
        PurchCountPrinted: Codeunit "Purch.Header-Printed";
        PurchPost: Codeunit "Purch.-Post";
        SegManagement: Codeunit SegManagement;
        ArchiveManagement: Codeunit ArchiveManagement;
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        FormatAddr: Codeunit "Format Address";
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        OutputNo: Integer;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        PhoneNoCaptionLbl: Label 'Phone No.';
        FaxNoCaptionLbl: Label 'Fax No.';
        VATRegNoCaptionLbl: Label 'VAT Reg. No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankCaptionLbl: Label 'Bank';
        BankAccNoCaptionLbl: Label 'Account No.';
        ExpectedDateCaptionLbl: Label 'Expected Date';
        QuoteNoCaptionLbl: Label 'Quote No.';
        DivPartNoCaptionLbl: Label 'Div. Part No.';
        ABNCaptionLbl: Label 'ABN';
        HdrDimsCaptionLbl: Label 'Header Dimensions';
        ExpectedDate1CaptionLbl: Label 'Expected Date';
        OurNoCaptionLbl: Label 'Our No.';
        ItemNoCaptionLbl: Label 'No.';
        LineDimsCaptionLbl: Label 'Line Dimensions';
        ShpMethodCaptionLbl: Label 'Shipment Method';
        ShiptoAddrCaptionLbl: Label 'Ship-to';
        HomePageCaptionLbl: Label 'HomePage';
        EmailIdCaptionLbl: Label 'E-Mail';
        DocDateCaptionLbl: Label 'DocumentDate';
        "---XTR---": Integer;
        ShowVATIdentifierDetail: Boolean;
        GLSetup: Record "General Ledger Setup";
        PurchaseQuoteTitle: Option "Purchase Quote","Request for Proposal","Purchase Request";
        BuyFromVendor: Label 'Buy-from';
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        UOMCaption: Label 'UOM';
        UnitPrice: Label 'Unit Price';
        ShowCommercialTaxIncluse: Boolean;
        AlwaysShowVAT: Boolean;
        VATPercentCaption: Label 'VAT %';
        CommercialTaxIncluseCap: Label '(VAT Included)';
        PriceIncludeCommercialTax: Label 'Price Include VAT';
        CommericalTaxAmountCap: Label 'VAT Amount';
        GrandTotal: Decimal;
        PrintBarcode: Boolean;
        TranslateCaption: Text[30];
        //HeaderCaptionTranslated
        DocumentDateCaptionTranslated: Text;
        ExpectedRecepteDateCaptionTranslated: Text;
        DueDateCaptionTranslated: Text;
        VendorOrderNoCaptionTranslated: Text;
        PurchaserCaptionTranslated: Text;
        CompInfoNameCaptionTranslated: Text;
        CompInfoBankNameCaptionTranslated: Text;
        CompInfoBankAccNoCaptionTranslated: Text;
        CompanyInfoSwiftCodeCaptionTranslated: Text;
        //Line caption translate
        [InDataSet]
        NoCaptionTranslated: Text;
        [InDataSet]
        LineDescriptionCaptionTranslated: Text;
        [InDataSet]
        UOMCaptionTranslated: Text;
        [InDataSet]
        QTYCaptionTranslated: Text;
        [InDataSet]
        UnitCostCaptiontranslated: Text;
        [InDataSet]
        LineDiscountCaptionTranslated: Text;
        [InDataSet]
        VATIdentifierCaptionTranslated: Text;
        [InDataSet]
        LineAmountCaptionTranslated: Text;
        CompanyAddrLanguage: Text;
        AddrLanguage: Text;
        Vendor: Record Vendor;
        LocalAddress: Record "Local Name & Address";

        LanguageCaption: Record "Document ML Field Caption";
        XTRSetup: Record "XTR Enhancement Pack Setup";
        //picture appedix
        PicturePerPage: Option "Default","1","4","9";
        //ML field language code
        MLLanguageCode: Code[20];
        CompanyInfoAddress: array[8] of Text[100];
        CompanyShiptoAddr: array[8] of text[120];
        BuyFromAddress: array[8] of text[120];
        ShowDefaultAddrIfLocalAddressBlank: Boolean;
        AddressLanguage: Code[20];

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

    local procedure FooterCaptionTranslate(LanguageCode: Code[20])
    begin

        LanguageCaption.SetRange(LanguageCaption."Language Code", LanguageCode);
        LanguageCaption.SetRange(LanguageCaption."Table ID", 79);
        if LanguageCaption.Find('-') then begin
            repeat
                //===========Company Information Translated=========================
                if LanguageCaption."Field ID" = 2 then begin
                    CompInfoNameCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 12 then begin
                    CompInfoBankNameCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 14 then begin
                    CompInfoBankAccNoCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 39 then begin
                    CompanyInfoSwiftCodeCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
            until LanguageCaption.Next = 0;
        end;
        //XTR15.00 -
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

        if NoCaptionTranslated = '' then begin
            NoCaptionTranslated := "Purchase Line".FieldCaption("No.") + ':';
        end;
        if LineDescriptionCaptionTranslated = '' then begin
            LineDescriptionCaptionTranslated := "Purchase Line".FieldCaption(Description) + ':';
        end;
        if QTYCaptionTranslated = '' then begin
            QTYCaptionTranslated := "Purchase Line".FieldCaption(Quantity) + ':';
        end;
        if UnitCostCaptiontranslated = '' then begin
            UnitCostCaptiontranslated := "Purchase Line".FieldCaption("Unit Cost") + ':';
        end;
        if LineDiscountCaptionTranslated = '' then begin
            LineDiscountCaptionTranslated := "Purchase Line".FieldCaption("Line Discount %") + ':';
            ;
        end;
        if VATIdentifierCaptionTranslated = '' then begin
            VATIdentifierCaptionTranslated := "Purchase Line".FieldCaption("VAT %") + ':';
            ;
        end;
        if LineAmountCaptionTranslated = '' then begin
            LineAmountCaptionTranslated := "Purchase Line".FieldCaption(Amount);
        end;

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


    local procedure GetLocalAddress(): Boolean
    begin
        //XTR15.00 +
        LocalAddress.SetFilter(Code, Vendor."No.");
        LocalAddress.SetFilter(Language, AddrLanguage);
        if LocalAddress.FindFirst then
            exit(true);
        //XTR15.00 -
    end;

    local procedure GetCountryRegion("Code": Code[20]): Text
    var
        CountryRegion: Record "Country/Region";
    begin
        //XTR15.00 +
        if CountryRegion.Get(Code) then
            exit(CountryRegion.Name);
        //XTR15.00 -
    end;
}

