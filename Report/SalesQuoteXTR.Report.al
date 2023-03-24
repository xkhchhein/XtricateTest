report 50122 "Sales - Quote (XTR)_S"
{
    DefaultLayout = RDLC;
    RDLCLayout = 'SalesQuoteXTR.rdl';

    Caption = 'Sales - Quote (XTR)';
    EnableHyperlinks = true;

    dataset
    {
        dataitem("Sales Header"; "Sales Header")
        {
            DataItemTableView = SORTING("Document Type", "No.") WHERE("Document Type" = CONST(Quote));
            RequestFilterFields = "No.", "Sell-to Customer No.", "No. Printed";
            RequestFilterHeading = 'Sales Quote';
            column(DocType_SalesHeader; "Document Type")
            {
            }
            column(No_SalesHeader; "No.")
            {
            }
            column(SalesLineVATIdentifierCaption; SalesLineVATIdentifierCaptionLbl)
            {
            }
            column(VATCaption; VATCaptionLbl)
            {
            }
            column(VATAmtLineVATBaseLbCaption; VATAmtLineVATBaseLbCaptionLbl)
            {
            }
            column(VATAmtLineVATAmtLbCaption; VATAmtLineVATAmtLbCaptionLbl)
            {
            }
            column(VATAmtLineVATBaseLblCaption; VATAmtLineVATBaseLblCaptionLbl)
            {
            }
            column(PaymentTermsDescriptionCaption; PaymentTermsDescriptionCaptionLbl)
            {
            }
            column(ShipmentMethodDescriptionCaption; ShipmentMethodDescriptionCaptionLbl)
            {
            }
            column(DocumentDateCaption; DocumentDateCaptionLbl)
            {
            }
            column(HomePageCaption; HomePageCaptionLbl)
            {
            }
            column(EmailCaption; EmailCaptionLbl)
            {
            }
            column(ExternalDocumentNo; "Sales Header"."External Document No.")
            {
            }
            column(ExternalDocumentNoCap; "Sales Header".FieldCaption("Sales Header"."External Document No."))
            {
            }
            column(LCYCode; GLSetup."LCY Code")
            {
            }
            column(CurrencyCode; "Sales Header"."Currency Code")
            {
            }
            column(ShowVATIdentifierDetail; ShowVATIdentifierDetail)
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
            column(GrandTotalCaption; GrandTotalCaption)
            {
            }
            column(ArchivedVersionsNo; "Sales Header"."No. of Archived Versions")
            {
            }
            column(ValidUntilDate; Format("Sales Header"."Due Date", 0, 4))
            {
            }
            column(RequestedDeliveryDate; Format("Sales Header"."Requested Delivery Date", 0, 4))
            {
            }
            column(Status; "Sales Header".Status)
            {
            }
            column(YourReference; "Sales Header"."Your Reference")
            {
            }
            column(BarcodeImage; Barcode.Image)
            {
            }
            column(PrintBarcode; PrintBarcode)
            {
            }
            column(ShowInternalInfo; ShowInternalInfo)
            {
            }
            column(TableID; LanguageCaption."Table ID")
            {
            }
            column(FieldID; LanguageCaption."Field ID")
            {
            }
            column(CountryCode; LanguageCaption."Language Code")
            {
            }
            column(TranslateCaption; LanguageCaption."Language Caption")
            {
            }
            column(DocumentDateCaptionTranslated; DocumentDateCaptionTranslated)
            {
            }
            column(ValidUntilDateCaptionTranslated; ValidUntilDateCaptionTranslated)
            {
            }
            column(RequestDeliveryDateCaptionTranslated; RequestDeliveryDateCaptionTranslated)
            {
            }
            column(YourReferenceCaptionTranslated; YourReferenceCaptionTranslated)
            {
            }
            column(PaymentTermsCodeCaptionTranslated; PaymentTermsCodeCaptionTranslated)
            {
            }
            column(ShipmentMethodCodeCaptionTranslated; ShipmentMethodCodeCaptionTranslated)
            {
            }
            column(PricesIncludingVATCaptionTranslated; PricesIncludingVATCaptionTranslated)
            {
            }
            column(SalespersonCodeCaptionTranslated; SalespersonCodeCaptionTranslated)
            {
            }
            column(NoCaptionTranslatedLine; NoCaptionTranslatedLine)
            {
            }
            column(DescriptionCaptionTranslatedLine; DescriptionCaptionTranslatedLine)
            {
            }
            column(QuantityCaptionTranslatedLine; QuantityCaptionTranslatedLine)
            {
            }
            column(UOMCaptionTranslatedLine; UOMCaptionTranslatedLine)
            {
            }
            column(UnitPriceCaptionTranslatedLine; UnitPriceCaptionTranslatedLine)
            {
            }
            column(DiscountCaptionTranslatedLine; DiscountCaptionTranslatedLine)
            {
            }
            column(VATPercentCaptionTranslatedLine; VATPercentCaptionTranslatedLine)
            {
            }
            column(AmountCaptionTranslatedLine; AmountCaptionTranslatedLine)
            {
            }
            column(BankAccNameCaptionTranslated; BankAccNameCaptionTranslated)
            {
            }
            column(BankAccBankNameCaptionTranslated; BankAccBankNameCaptionTranslated)
            {
            }
            column(BankAccBankAccNoCaptionTranslated; BankAccBankAccNoCaptionTranslated)
            {
            }
            column(BankAccSwiftCodeCaptionTranslated; BankAccSwiftCodeCaptionTranslated)
            {
            }
            column(CompanyInfoBranchNoCaptionTranslated; CompanyInfoBranchNoCaptionTranslated)
            {
            }
            column(CompanyInfoVATRegistrationCaptionTranslated; CompanyInfoVATRegistrationCaptionTranslated)
            {
            }
            column(CompanyInfoEmailCaptionTranslated; CompanyInfoEmailCaptionTranslated)
            {
            }
            column(CompanyInfoPhoneCaptionTranslated; CompanyInfoPhoneCaptionTranslated)
            {
            }
            column(ItemArticleCaptionTranslated; ItemArticleCaptionTranslated)
            {
            }
            column(ItemCompositionCaptionTranslated; ItemCompositionCaptionTranslated)
            {
            }
            column(ItemWeightCaptionTranslated; ItemWeightCaptionTranslated)
            {
            }
            column(ItemGSM_MCaptionTranslated; ItemGSM_MCaptionTranslated)
            {
            }
            column(ItemUnitPriceCaptionTranslated; ItemUnitPriceCaptionTranslated)
            {
            }
            column(ItemPicks_cmCaptionTranslated; ItemPicks_cmCaptionTranslated)
            {
            }
            column(RecodePerPage; RecodePerPage)
            {
            }
            column(Line_Text; FormatThai[1])
            {
            }
            column(PricesIncludeVAT; PricesIncludeVAT)
            {
            }
            column("Layout"; Layout)
            {
            }
            column(ShowPicks; Picks_cm)
            {
            }
            column(CustomerAddrLanguage; CustomerAddrLanguage)
            {
            }
            column(BanktNameDataConversion; BankAccount."Name 2" + '/ ' + BankAccount."Bank Branch No.")
            {
            }
            column(BankName; BankAccount.Name)
            {
            }
            column(BankAccountNo; BankAccount."Bank Account No.")
            {
            }
            column(BankAccountSwiftCode; BankAccount."SWIFT Code")
            {
            }
            column(BankAccountIBAN; BankAccount.IBAN)
            {
            }
            column(IsBankInfoEmty; IsBankInfoEmty)
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
                    column(SalesQuote; StrSubstNo(Text004, CopyText))
                    {
                    }
                    column(CustAddr1; CustAddr[1])
                    {
                    }
                    column(CompanyAddr1; CompanyAddr[1])
                    {
                    }
                    column(LocalCompanyAddr1; LocalCompanyAddr[1])
                    {
                    }
                    column(CustAddr2; CustAddr[2])
                    {
                    }
                    column(CompanyAddr2; CompanyAddr[2])
                    {
                    }
                    column(LocalCompanyAddr2; LocalCompanyAddr[2])
                    {
                    }
                    column(CustAddr3; CustAddr[3])
                    {
                    }
                    column(CompanyAddr3; CompanyAddr[3])
                    {
                    }
                    column(LocalCompanyAddr3; LocalCompanyAddr[3])
                    {
                    }
                    column(CustAddr4; CustAddr[4])
                    {
                    }
                    column(CompanyAddr4; CompanyAddr[4])
                    {
                    }
                    column(LocalCompanyAddr4; LocalCompanyAddr[4])
                    {
                    }
                    column(CustAddr5; CustAddr[5])
                    {
                    }
                    column(LocalCompanyAddr5; LocalCompanyAddr[5])
                    {
                    }
                    column(PhoneNo_COmpanyInfo; CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6; CustAddr[6])
                    {
                    }
                    column(LocalCompanyAddr6; LocalCompanyAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo; CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoEmail; CompanyInfo."E-Mail")
                    {
                    }
                    column(CompanyInfoHomePage; CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoName; CompanyInfo.Name)
                    {
                    }
                    column(CompanyInfoBankName; CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccountNo; CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfoBankBranchNo; CompanyInfo."Bank Branch No.")
                    {
                    }
                    column(CompanyInfoSwiftCode; CompanyInfo."SWIFT Code")
                    {
                    }
                    column(PaymentTermsDescription; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDescription; ShipmentMethod.Description)
                    {
                    }
                    column(BillToCustomerNo_SalesHdr; "Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocumentDate_SalesHeader; Format("Sales Header"."Document Date", 0, 4))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNo_SalesHdr; "Sales Header"."VAT Registration No.")
                    {
                    }
                    column(ShipmentDate_SalesHdr; Format("Sales Header"."Shipment Date", 0, 4))
                    {
                    }
                    column(SalesPersonText; SalesPersonText)
                    {
                    }
                    column(SalesPurchPerson_Name; SalesPurchPerson.Name)
                    {
                    }
                    column(No1_SalesHeader; "Sales Header"."No.")
                    {
                    }
                    column(ReferenceText; ReferenceText)
                    {
                    }
                    column(YourReference_SalesHdr; "Sales Header"."Your Reference")
                    {
                    }
                    column(CustAddr7; CustAddr[7])
                    {
                    }
                    column(CustAddr8; CustAddr[8])
                    {
                    }
                    column(CompanyAddr5; CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6; CompanyAddr[6])
                    {
                    }
                    column(PricesIncluVAT_SalesHdr; "Sales Header"."Prices Including VAT")
                    {
                    }
                    column(PageCaption; StrSubstNo(Text005, ''))
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(PricesIncluVAT1_SalesHdr; Format("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(CompanyInfoABNDivPartNo; CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoABN; CompanyInfo."Registration No.")
                    {
                    }
                    column(VATDiscountAmount; -VATDiscountAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(CompanyInfoPhoneNoCaption; CompanyInfoPhoneNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoVATRegistrationNoCaption; CompanyInfoVATRegistrationNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoGiroNoCaption; CompanyInfoGiroNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankNameCaption; CompanyInfoBankNameCaptionLbl)
                    {
                    }
                    column(CompanyInfoBankAccountNoCaption; CompanyInfoBankAccountNoCaptionLbl)
                    {
                    }
                    column(SalesHeaderShipmentDateCaption; SalesHeaderShipmentDateCaptionLbl)
                    {
                    }
                    column(SalesHeaderNoCaption; SalesHeaderNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoABNDivisionPartNoCaption; CompanyInfoABNDivisionPartNoCaptionLbl)
                    {
                    }
                    column(CompanyInfoABNCaption; CompanyInfoABNCaptionLbl)
                    {
                    }
                    column(InvDiscountAmountCaption; InvDiscountAmountCaptionLbl)
                    {
                    }
                    column(VATDiscountAmountCaption; VATDiscountAmountCaptionLbl)
                    {
                    }
                    column(BillToCustomerNo_SalesHdrCaption; "Sales Header".FieldCaption("Bill-to Customer No."))
                    {
                    }
                    column(PricesIncluVAT_SalesHdrCaption; "Sales Header".FieldCaption("Prices Including VAT"))
                    {
                    }
                    column(CustAddr1_Header; CustAddr[1])
                    {
                    }
                    column(CustAddr2_Header; CustAddr[2])
                    {
                    }
                    column(CustAddr3_Header; CustAddr[3])
                    {
                    }
                    column(CustAddr4_Header; CustAddr[4])
                    {
                    }
                    column(CustAddr5_Header; CustAddr[5])
                    {
                    }
                    column(CustAddr6_Header; CustAddr[6])
                    {
                    }
                    column(CustAddr7_Header; CustAddr[7])
                    {
                    }
                    column(CustAddr8_Header; CustAddr[8])
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
                    column(ShiptoAddressCaption_Header; ShiptoAddressCaptionLbl)
                    {
                    }
                    column(SellToCustomerNo; SellToCustomerCap)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(HeaderDimensionsCaption; HeaderDimensionsCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FindSet then
                                    CurrReport.Break;
                            end else
                                if not Continue then
                                    CurrReport.Break;

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1, %2 %3', DimText, DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
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
                    dataitem("Sales Line"; "Sales Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"), "Document No." = FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.Break;
                        end;
                    }
                    dataitem(RoundLoop; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(LineAmount1_SalesLine; SalesLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(No_SalesLine; "Sales Line"."No.")
                        {
                        }
                        column(Description_SalesLine; "Sales Line".Description)
                        {
                        }
                        column(Quantity_SalesLine; "Sales Line".Quantity)
                        {
                        }
                        column(UnitofMeasure_SalesLine; "Sales Line"."Unit of Measure Code")
                        {
                        }
                        column(LineAmount2_SalesLine; "Sales Line"."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPrice_SalesLine; "Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDiscount_SalesLine; "Sales Line"."Line Discount %")
                        {
                        }
                        column(AllowInvDisc_SalesLine; "Sales Line"."Allow Invoice Disc.")
                        {
                        }
                        column(VATIdentifier_SalesLine; "Sales Line"."VAT Identifier")
                        {
                        }
                        column(Type_SalesLine; Format("Sales Line".Type))
                        {
                        }
                        column(No1_SalesLine; "Sales Line"."Line No.")
                        {
                        }
                        column(AllowInvDisYesNo_SalesLine; Format("Sales Line"."Allow Invoice Disc."))
                        {
                        }
                        column(InvDiscountAmt_SalesLine; -SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(InvDiscountAmt1_SalesLine; SalesLine."Line Amount" - SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; CommericalTaxAmountCap)
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(VATAmount; VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseAmount; VATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(UnitPriceCaption; UnitPriceCaptionLbl)
                        {
                        }
                        column(SalesLineLineDiscountCaption; SalesLineLineDiscountCaptionLbl)
                        {
                        }
                        column(AmountCaption; AmountCaptionLbl)
                        {
                        }
                        column(SubtotalCaption; SubtotalCaptionLbl)
                        {
                        }
                        column(No_SalesLineCaption; "Sales Line".FieldCaption("No."))
                        {
                        }
                        column(Description_SalesLineCaption; "Sales Line".FieldCaption(Description))
                        {
                        }
                        column(Quantity_SalesLineCaption; "Sales Line".FieldCaption(Quantity))
                        {
                        }
                        column(UnitofMeasure_SalesLineCaption; "Sales Line".FieldCaption("Unit of Measure"))
                        {
                        }
                        column(AllowInvDisc_SalesLineCaption; "Sales Line".FieldCaption("Allow Invoice Disc."))
                        {
                        }
                        column(UOMCaption; UOMCaption)
                        {
                        }
                        column(VATPercentCaption; VATPercentCaption)
                        {
                        }
                        column(LineVATPercentage; "Sales Line"."VAT %")
                        {
                        }
                        column(ItemTranslationDescripton; ItemTranslationDescripton)
                        {
                        }
                        column(Article; ItemNameG)
                        {
                        }
                        column(Composition; ItemCompositionG)
                        {
                        }
                        column(UOM; ItemUOM)
                        {
                        }
                        column(GSM; ItemGSMG)
                        {
                        }
                        column(GLM; ItemGLMG)
                        {
                        }
                        column(Width; ItemWidthG)
                        {
                        }
                        column(Picks_cm; ItemsPicks_cm)
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText1; DimText)
                            {
                            }
                            column(LineDimensionsCaption; LineDimensionsCaptionLbl)
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
                                        DimText := StrSubstNo('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until DimSetEntry2.Next = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break;

                                DimSetEntry2.SetRange("Dimension Set ID", "Sales Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then
                                SalesLine.Find('-')
                            else
                                SalesLine.Next;
                            "Sales Line" := SalesLine;

                            if not "Sales Header"."Prices Including VAT" and
                               (SalesLine."VAT Calculation Type" = SalesLine."VAT Calculation Type"::"Full VAT")
                            then
                                SalesLine."Line Amount" := 0;

                            if (SalesLine.Type = SalesLine.Type::"G/L Account") and (not ShowInternalInfo) then
                                "Sales Line"."No." := '';

                        end;

                        trigger OnPostDataItem()
                        begin
                            SalesLine.DeleteAll;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := SalesLine.Find('+');
                            while MoreLines and (SalesLine.Description = '') and (SalesLine."Description 2" = '') and
                                  (SalesLine."No." = '') and (SalesLine.Quantity = 0) and
                                  (SalesLine.Amount = 0)
                            do
                                MoreLines := SalesLine.Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break;
                            SalesLine.SetRange("Line No.", 0, SalesLine."Line No.");
                            SetRange(Number, 1, SalesLine.Count);
#pragma warning disable AL0667
                            CurrReport.CreateTotals(SalesLine."Line Amount", SalesLine."Inv. Discount Amount");
#pragma warning restore AL0667
                        end;
                    }
                    dataitem(VATCounter; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmount; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscountAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATpercentage; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmountSpecificationCaption; VATAmountSpecificationCaptionLbl)
                        {
                        }
                        column(VATAmtLineLineAmtVATCntCaption; VATAmtLineLineAmtVATCntCaptionLbl)
                        {
                        }
                        column(VATAmtLineInvDiscBaseAmtVATCntCaption; VATAmtLineInvDiscBaseAmtVATCntCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if VATAmount = 0 then
                                CurrReport.Break;
                            SetRange(Number, 1, VATAmountLine.Count);
#pragma warning disable AL0667
                            CurrReport.CreateTotals(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
#pragma warning restore AL0667
                        end;
                    }
                    dataitem(VATCounterLCY; "Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATpercentageLCY; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifierLCY; VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := Round(CurrExchRate.ExchangeAmtFCYToLCY(
                                               "Sales Header"."Order Date", "Sales Header"."Currency Code",
                                               VATAmountLine."VAT Base", "Sales Header"."Currency Factor"));
                            VALVATAmountLCY := Round(CurrExchRate.ExchangeAmtFCYToLCY(
                                                 "Sales Header"."Order Date", "Sales Header"."Currency Code",
                                                 VATAmountLine."VAT Amount", "Sales Header"."Currency Factor"));
                        end;

                        trigger OnPreDataItem()
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Sales Header"."Currency Code" = '') or
                               (VATAmountLine.GetTotalVATAmount = 0) then
                                CurrReport.Break;

                            SetRange(Number, 1, VATAmountLine.Count);
#pragma warning disable AL0667
                            CurrReport.CreateTotals(VALVATBaseLCY, VALVATAmountLCY);
#pragma warning restore AL0667

                            if GLSetup."LCY Code" = '' then
                                VALSpecLCYHeader := Text008 + Text009
                            else
                                VALSpecLCYHeader := Text008 + Format(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Order Date", "Sales Header"."Currency Code", 1);
                            VALExchRate := StrSubstNo(Text010, CurrExchRate."Relational Exch. Rate Amount", CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    }
                    dataitem(Total2; "Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                        column(SelltoCustomerNo_SalesHdr; "Sales Header"."Sell-to Customer No.")
                        {
                        }
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
                        column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SelltoCustomerNo_SalesHdrCaption; "Sales Header".FieldCaption("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                                CurrReport.Break;
                        end;
                    }
                    dataitem("Document ML Comment String"; "Document ML Comment")
                    {
                        column(CommentStringTranslation_DocumentMLCommentString; "Comment Translation")
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            SetCurrentKey(Position);
                            Ascending(true);
                            SetRange("Report ID", Report::"Sales - Quote (XTR)");
                            /*
                            IF "Sales Header"."Language Code" = '' THEN BEGIN
                              SETRANGE("Language Code","Sales Header"."Language Code");
                            END
                            ELSE BEGIN
                              SETFILTER("Language Code",'%1 | %2',"Sales Header"."Language Code",'');
                            END;
                            */

                        end;
                    }
                }

                trigger OnAfterGetRecord()
                var
                    SalesPost: Codeunit "Sales-Post";
                begin
                    Clear(SalesLine);
                    Clear(SalesPost);
                    SalesLine.DeleteAll;
                    VATAmountLine.DeleteAll;
                    SalesPost.GetSalesLines("Sales Header", SalesLine, 0);
                    SalesLine.CalcVATAmountLines(0, "Sales Header", SalesLine, VATAmountLine);
                    SalesLine.UpdateVATOnLines(0, "Sales Header", SalesLine, VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code", "Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    if Number > 1 then begin
                        CopyText := Text003;
                        OutputNo += 1;
                    end;
#pragma warning disable AL0667
                    CurrReport.PageNo := 1;
#pragma warning restore AL0667

                    //XTR-DOC+
                    //Convert Decimal to Text
                    Chech.InitTextVariable();
                    Chech.FormatNoText(FormatThai, TotalAmountInclVAT, CurrenCode);
                    //XTR-DOC-
                end;

                trigger OnPostDataItem()
                begin
                    if Print then
                        SalesCountPrinted.Run("Sales Header");
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
                "Sell-to Country": Text[50];
            begin
                /*
                // ====[XKH added ML language code to request page 20220106]=====
                            */
                HeaderCaptionTranslate(MLLanguageCode);
                LineCaptionTranslate(MLLanguageCode);
                FooterCaptionTranslate(MLLanguageCode);

                CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");

                if CompanyAddrLanguage <> '' then begin
                    Clear(LocalAddress);
                    LocalAddress.SetRange(Type, LocalAddress.Type::"Company Information");
                    LocalAddress.Find('-');
                    CompanyAddr[1] := LocalAddress."Name/Description";
                    CompanyAddr[3] := LocalAddress.Address;
                    CompanyAddr[4] := LocalAddress.Subdivision + ', ' + LocalAddress."County/District";
                    CompanyAddr[5] := LocalAddress."City/Province" + ', ' + LocalAddress."Post Code";
                    CompanyAddr[6] := GetCountryRegion(LocalAddress.Country);
                end else begin
                    CompanyAddr[1] := CompanyInfo.Name;
                    CompanyAddr[3] := CompanyInfo.Address;
                    CompanyAddr[4] := CompanyInfo.County;
                    CompanyAddr[5] := CompanyInfo.City + ', ' + CompanyInfo."Post Code";
                    CompanyAddr[6] := GetCountryRegion(CompanyInfo."Country/Region Code");
                end;
                //XTR-DOC+
                //Added options to print "Local Address" for Customer Address
                Customer.Get("Sell-to Customer No.");
                LocalAddress.SetRange(Code, "Sales Header"."Sell-to Customer No.");
                LocalAddress.SetRange(Type, LocalAddress.type::Customer);
                if (CustomerAddrLanguage <> '') and (GetLocalAddress = true) then begin
                    CustAddr[1] := Customer.Name;
                    CustAddr[2] := Customer.Contact;
                    CustAddr[3] := LocalAddress.Address;
                    CustAddr[4] := LocalAddress.Subdivision + ', ' + LocalAddress."County/District";
                    CustAddr[5] := LocalAddress."City/Province" + ', ' + LocalAddress."Post Code";
                    CustAddr[6] := GetCountryRegion(LocalAddress.Country);
                end
                else begin
                    FormatAddr.SalesHeaderBillTo(CustAddr, "Sales Header");
                end;
                //XTR-DOC-

                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");
                if "Salesperson Code" = '' then begin
                    SalesPurchPerson.Init;
                    SalesPersonText := '';
                end else begin
                    SalesPurchPerson.Get("Salesperson Code");
                    SalesPersonText := Text000;
                end;
                if "Your Reference" = '' then
                    ReferenceText := ''
                else
                    ReferenceText := FieldCaption("Your Reference");
                if "VAT Registration No." = '' then
                    VATNoText := ''
                else
                    VATNoText := FieldCaption("VAT Registration No.");
                if "Currency Code" = '' then begin
                    GLSetup.TestField("LCY Code");
                    TotalText := StrSubstNo(Text001, GLSetup."LCY Code");
                    TotalInclVATText := StrSubstNo(Text002, GLSetup."LCY Code");
                    TotalExclVATText := StrSubstNo(Text006, GLSetup."LCY Code");
                end else begin
                    TotalText := StrSubstNo(Text001, "Currency Code");
                    TotalInclVATText := StrSubstNo(Text002, "Currency Code");
                    TotalExclVATText := StrSubstNo(Text006, "Currency Code");
                end;



                if "Payment Terms Code" = '' then
                    PaymentTerms.Init
                else begin
                    PaymentTerms.Get("Payment Terms Code");
                    PaymentTerms.TranslateDescription(PaymentTerms, "Language Code");
                end;
                if "Shipment Method Code" = '' then
                    ShipmentMethod.Init
                else begin
                    ShipmentMethod.Get("Shipment Method Code");
                    ShipmentMethod.TranslateDescription(ShipmentMethod, "Language Code");
                end;

                if Country.Get("Sell-to Country/Region Code") then
                    "Sell-to Country" := Country.Name;
                //XTR-DOC+
                //Added options to print "Local Address" for Ship to Address
                if CustomerAddrLanguage <> '' then begin
                    Clear(LocalAddress);
                    LocalAddress.SetRange(Type, LocalAddress.Type::"Ship-to Address");
                    LocalAddress.Find('-');
                    ShipToAddr[1] := Customer.Name;
                    ShipToAddr[2] := Customer.Contact;
                    ShipToAddr[3] := LocalAddress.Address;
                    ShipToAddr[4] := LocalAddress.Subdivision + ', ' + LocalAddress."County/District";
                    ShipToAddr[5] := LocalAddress."City/Province" + ', ' + LocalAddress."Post Code";
                    ShipToAddr[6] := LocalAddress.Country;
                end else begin
                    FormatAddr.SalesHeaderShipTo(ShipToAddr, CustAddr, "Sales Header");
                end;
                //XTR-DOC-

                ShowShippingAddr := "Sell-to Customer No." <> "Bill-to Customer No.";
                for i := 1 to ArrayLen(ShipToAddr) do
                    if (ShipToAddr[i] <> CustAddr[i]) and (ShipToAddr[i] <> '') and (ShipToAddr[i] <> "Sell-to Country") then
                        ShowShippingAddr := true;

                if Print then begin
                    if ArchiveDocument then
                        ArchiveManagement.StoreSalesDocument("Sales Header", LogInteraction);

                    if LogInteraction then begin
                        CalcFields("No. of Archived Versions");
                        if "Bill-to Contact No." <> '' then
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Contact, "Bill-to Contact No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.")
                        else
                            SegManagement.LogDocument(
                              1, "No.", "Doc. No. Occurrence",
                              "No. of Archived Versions", DATABASE::Customer, "Bill-to Customer No.",
                              "Salesperson Code", "Campaign No.", "Posting Description", "Opportunity No.");
                    end;
                end;
                Mark(true);

                //XTR-DOC+
                //Barcode printing support
                XTRSetup.Get;
                if XTRSetup."Enable Barcode" then begin
                    // Barcode.CreateBarcodeProfile("No.");
                    Barcode.CalcFields(Image);
                    if PrintBarcode = false then
                        Clear(Barcode.Image);
                end;

                //Get Banking Account information
                //-GetBankAccInfo("Pay-to-Bank Account");
                //XTR-DOC-
            end;

            trigger OnPostDataItem()
            var
                ToDo: Record "To-do";
                PictureAppendix: Report "Picture Appendix";
            begin
                MarkedOnly := true;
                Commit;
                CurrReport.Language := GlobalLanguage;
                if Find('-') and ToDo.WritePermission then
                    if Print and (NoOfRecords = 1) then
                        if Confirm(Text007) then
                            CreateTask;
                //picture appendix
                IF PicturePerPage <> PicturePerPage::Default THEN BEGIN
                    PictureAppendix.SetData("Sales Header", PicturePerPage);
                    PictureAppendix.RUNMODAL;
                END;
            end;

            trigger OnPreDataItem()
            begin
                NoOfRecords := Count;
                Print := Print or not CurrReport.Preview;
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
                    field("Layout"; Layout)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Layout';
                        Visible = false;
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
                        Visible = false;

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
                    field(ShowVATIdentifierDetail; ShowVATIdentifierDetail)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Show VAT Detail';
                    }
                    field(ShowCommercialTaxIncluse; ShowCommercialTaxIncluse)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Print "VAT Included"';
                        Visible = false;
                    }
                    field(PricesIncludeVAT; PricesIncludeVAT)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Hide "Prices Including VAT"';
                    }
                    field(AlwaysShowVAT; AlwaysShowVAT)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Show VAT Amount If Zero';
                    }
                    field(PrintBarcode; PrintBarcode)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Print Barcode';
                    }
                    field(CompanyAddrLanguage; CompanyAddrLanguage)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Company Address Language';
                        TableRelation = Language;
                    }
                    field(CustomerAddrLanguage; CustomerAddrLanguage)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Customer Address Language';
                        TableRelation = Language;
                    }
                    field(MLLanguageCode; MLLanguageCode)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Field Caption Language ';
                        TableRelation = Language.Code;
                    }
                    field(ItemItranslationRequestPage; ItemItranslationRequestPage)
                    {
                        ApplicationArea = Base, Suite;
                        Caption = 'Item Itranslation Language';
                        HideValue = true;
                        TableRelation = Language;
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
            // ArchiveDocument := SalesSetup."Archive Quotes and Orders";
            LogInteraction := SegManagement.FindInteractTmplCode(1) <> '';
            LogInteractionEnable := LogInteraction;

            LogInteraction := false;

            Layout := Layout::"NAV Layout";
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    var
        xxx: Page "Sales Quote";
    begin
        GLSetup.Get;
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

    trigger OnPreReport()
    begin
        ArchiveDocument := false;
    end;

    var
        Text000: Label 'Salesperson';
        Text001: Label 'Total %1';
        Text002: Label 'Total %1 Incl. VAT';
        Text003: Label ' Copy';
        Text004: Label 'Sales Quote';
        Text005: Label 'Page %1';
        Text006: Label 'Total %1 Excl. VAT';
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Codeunit Language;
        Country: Record "Country/Region";
        CurrExchRate: Record "Currency Exchange Rate";
        SalesCountPrinted: Codeunit "Sales-Printed";
        FormatAddr: Codeunit "Format Address";
        SegManagement: Codeunit SegManagement;
        ArchiveManagement: Codeunit ArchiveManagement;
        ShiptoAddress: Record "Ship-to Address";
        CustAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        LocalCompanyAddr: array[8] of Text;
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        i: Integer;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        Text007: Label 'Do you want to create a follow-up to-do?';
        NoOfRecords: Integer;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text008: Label 'VAT Amount Specification in ';
        Text009: Label 'Local Currency';
        Text010: Label 'Exchange rate: %1/%2';
        OutputNo: Integer;
        Print: Boolean;
        PricesIncludeVAT: Boolean;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        Text011: Label 'xxx';
        Text012: Label 'Preview not available.';
        CompanyInfoPhoneNoCaptionLbl: Label 'Phone No.';
        CompanyInfoVATRegistrationNoCaptionLbl: Label 'VAT Registration No.';
        CompanyInfoGiroNoCaptionLbl: Label 'Giro No.';
        CompanyInfoBankNameCaptionLbl: Label 'Bank';
        CompanyInfoBankAccountNoCaptionLbl: Label 'Account No.';
        SalesHeaderShipmentDateCaptionLbl: Label 'Shipment Date';
        SalesHeaderNoCaptionLbl: Label 'Quote No:';
        CompanyInfoABNDivisionPartNoCaptionLbl: Label 'Division Part No.';
        CompanyInfoABNCaptionLbl: Label 'ABN';
        InvDiscountAmountCaptionLbl: Label 'Invoice Discount Amount';
        VATDiscountAmountCaptionLbl: Label 'Payment Discount on VAT';
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        UnitPriceCaptionLbl: Label 'Unit Price';
        SalesLineLineDiscountCaptionLbl: Label 'Discount %';
        AmountCaptionLbl: Label 'Amount';
        SubtotalCaptionLbl: Label 'Subtotal';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        VATAmountSpecificationCaptionLbl: Label 'VAT Amount Specification';
        VATAmtLineLineAmtVATCntCaptionLbl: Label 'Line Amount';
        VATAmtLineInvDiscBaseAmtVATCntCaptionLbl: Label 'Invoice Discount Base Amount';
        ShiptoAddressCaptionLbl: Label 'Ship-to Address';
        SalesLineVATIdentifierCaptionLbl: Label 'VAT Identifier';
        VATCaptionLbl: Label 'VAT %';
        VATAmtLineVATBaseLbCaptionLbl: Label 'VAT Base';
        VATAmtLineVATAmtLbCaptionLbl: Label 'VAT Amount';
        VATAmtLineVATBaseLblCaptionLbl: Label 'Total';
        PaymentTermsDescriptionCaptionLbl: Label 'Payment Terms';
        ShipmentMethodDescriptionCaptionLbl: Label 'Shipment Method';
        DocumentDateCaptionLbl: Label 'Document Date:';
        HomePageCaptionLbl: Label 'Home Page';
        EmailCaptionLbl: Label 'E- Mail';
        SellToCustomerCap: Label 'Sell-to';
        UOMCaption: Label 'UOM';
        VATPercentCaption: Label 'VAT %';
        "---XTR---": Integer;
        XTRSetup: Record "XTR Enhancement Pack Setup";
        ShowVATIdentifierDetail: Boolean;
        ShowCommercialTaxIncluse: Boolean;
        CommercialTaxIncluseCap: Label '(VAT Included)';
        AlwaysShowVAT: Boolean;
        PriceIncludeCommercialTax: Label 'Price Include VAT';
        CommericalTaxAmountCap: Label 'VAT Amount';
        GrandTotalCaption: Label 'Grand Total';
        Barcode: Record Barcode;
        PrintBarcode: Boolean;
        LanguageCaption: Record "Document ML Field Caption";
        TranslateCaption: Text[30];
        DocumentDateCaptionTranslated: Text;
        ValidUntilDateCaptionTranslated: Text;
        RequestDeliveryDateCaptionTranslated: Text;
        YourReferenceCaptionTranslated: Text;
        PaymentTermsCodeCaptionTranslated: Text;
        ShipmentMethodCodeCaptionTranslated: Text;
        PricesIncludingVATCaptionTranslated: Text;
        SalespersonCodeCaptionTranslated: Text;
        NoCaptionTranslatedLine: Text;
        DescriptionCaptionTranslatedLine: Text;
        QuantityCaptionTranslatedLine: Text;
        UOMCaptionTranslatedLine: Text;
        UnitPriceCaptionTranslatedLine: Text;
        DiscountCaptionTranslatedLine: Text;
        VATPercentCaptionTranslatedLine: Text;
        AmountCaptionTranslatedLine: Text;
        BankAccNameCaptionTranslated: Text;
        BankAccBankNameCaptionTranslated: Text;
        BankAccBankAccNoCaptionTranslated: Text;
        BankAccSwiftCodeCaptionTranslated: Text;
        CompanyInfoBranchNoCaptionTranslated: Text;
        CompanyInfoVATRegistrationCaptionTranslated: Text;
        CompanyInfoEmailCaptionTranslated: Text;
        CompanyInfoPhoneCaptionTranslated: Text;
        ItemArticleCaptionTranslated: Text;
        ItemCompositionCaptionTranslated: Text;
        ItemWeightCaptionTranslated: Text;
        ItemUOMCaptionTranslated: Text;
        ItemGSM_MCaptionTranslated: Text;
        ItemUnitPriceCaptionTranslated: Text;
        ItemPicks_cmCaptionTranslated: Text;
        SalesHeader: Record "Sales Header";
        ItemTranslation: Record "Item Translation";
        ItemTranslationDescripton: Text;
        ItemItranslationRequestPage: Text[20];
        RecodePerPage: Decimal;
        FormatThai: array[2] of Text;
        Chech: Report Check;
        AmtTxt: Decimal;
        CurrenCode: Code[20];
        Composed: Option "Standard Descripton","Jacquard Description";
        Item: Record Item;
        ItemNameG: Text[150];
        ItemCompositionG: Text[150];
        ItemUOM: Text;
        ItemGLMG: Decimal;
        ItemWidthG: Decimal;
        ItemGSMG: Decimal;
        ItemsPicks_cm: Decimal;
        itemG: Record Item;
        ItemUnitPrice: Decimal;
        "Layout": Option "NAV Layout","Jacquard Layout";
        BankAccount: Record "Bank Account";
        Customer: Record Customer;
        CompanyAddrLanguage: Text;
        CustomerAddrLanguage: Text;
        Picks_cm: Boolean;
        LocalAddress: Record "Local Name & Address";
        BanktNameDataConversion: Text;
        IsBankInfoEmty: Boolean;
        PicturePerPage: Option "Default","1","4","9";
        //ML Field Caption Request page
        MLLanguageCode: Code[20];

#pragma warning disable AL0667
    [Scope('Internal')]
#pragma warning restore AL0667
    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean)
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
    end;

    local procedure HeaderCaptionTranslate(LanguageCode: Code[20])
    begin
        LanguageCaption.SetRange(LanguageCaption."Language Code", LanguageCode);
        LanguageCaption.SetRange(LanguageCaption."Table ID", 36);
        if LanguageCaption.Find('-') then begin
            repeat
                //===========Sales Header Translated=========================
                if LanguageCaption."Field ID" = 99 then begin
                    DocumentDateCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 5790 then begin
                    RequestDeliveryDateCaptionTranslated := LanguageCaption."Language Caption";
                end;
                if LanguageCaption."Field ID" = 11 then begin
                    YourReferenceCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 23 then begin
                    PaymentTermsCodeCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 27 then begin
                    ShipmentMethodCodeCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 35 then begin
                    PricesIncludingVATCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 43 then begin
                    SalespersonCodeCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 24 then begin
                    ValidUntilDateCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;

            until LanguageCaption.Next = 0;
        end;
        DefaultCaptionML();
    end;

    local procedure LineCaptionTranslate(LanguageCode: Code[20])
    begin
        LanguageCaption.SetRange(LanguageCaption."Language Code", LanguageCode);
        LanguageCaption.SetRange(LanguageCaption."Table ID", 37);
        if LanguageCaption.Find('-') then begin
            repeat
                //===========Sales Line Translated=========================
                if LanguageCaption."Field ID" = 6 then begin
                    NoCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 11 then begin
                    DescriptionCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 15 then begin
                    QuantityCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 13 then begin
                    UOMCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 22 then begin
                    UnitPriceCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 27 then begin
                    DiscountCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 25 then begin
                    VATPercentCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 29 then begin
                    AmountCaptionTranslatedLine := Format(LanguageCaption."Language Caption");
                end;

            until LanguageCaption.Next = 0;
        end;

        DefaultLineCaptionML();
    end;

    local procedure FooterCaptionTranslate(LanguageCode: Code[20])
    begin
        //Company Info
        LanguageCaption.SetRange(LanguageCaption."Language Code", LanguageCode);
        LanguageCaption.SetRange(LanguageCaption."Table ID", 79);
        if LanguageCaption.Find('-') then begin
            repeat
                if LanguageCaption."Field ID" = 19 then begin
                    CompanyInfoVATRegistrationCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 70000 then begin
                    CompanyInfoBranchNoCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 34 then begin
                    CompanyInfoEmailCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 7 then begin
                    CompanyInfoPhoneCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;

            until LanguageCaption.Next = 0;
        end;

        //Bank Account
        LanguageCaption.SetRange(LanguageCaption."Language Caption", LanguageCode);
        LanguageCaption.SetFilter(LanguageCaption."Table Caption", '270');
        if LanguageCaption.Find('-') then begin
            repeat
                if LanguageCaption."Field ID" = 2 then begin
                    BankAccNameCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 4 then begin
                    BankAccBankNameCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 13 then begin
                    BankAccBankAccNoCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
                if LanguageCaption."Field ID" = 111 then begin
                    BankAccSwiftCodeCaptionTranslated := Format(LanguageCaption."Language Caption");
                end;
            until LanguageCaption.Next = 0;
        end;

        DefaultFooterCaptionML
    end;

    local procedure DefaultCaptionML()
    begin
        if DocumentDateCaptionTranslated = '' then begin
            DocumentDateCaptionTranslated := SalesHeader.FieldCaption("Document Date") + ':';
        end;
        if RequestDeliveryDateCaptionTranslated = '' then begin
            RequestDeliveryDateCaptionTranslated := SalesHeader.FieldCaption("Requested Delivery Date") + ':';
        end;
        if YourReferenceCaptionTranslated = '' then begin
            YourReferenceCaptionTranslated := SalesHeader.FieldCaption("Your Reference") + ':';
        end;
        if PaymentTermsCodeCaptionTranslated = '' then begin
            PaymentTermsCodeCaptionTranslated := 'Payment Term:';
        end;
        if ShipmentMethodCodeCaptionTranslated = '' then begin
            ShipmentMethodCodeCaptionTranslated := 'Shipment Method:';
        end;
        if PricesIncludingVATCaptionTranslated = '' then begin
            PricesIncludingVATCaptionTranslated := SalesHeader.FieldCaption("Prices Including VAT") + ':';
        end;
        if SalespersonCodeCaptionTranslated = '' then begin
            SalespersonCodeCaptionTranslated := 'Salesperson:';
        end;
        if ValidUntilDateCaptionTranslated = '' then begin
            ValidUntilDateCaptionTranslated := SalesHeader.FieldCaption("Due Date") + ':';
        end;
    end;

    local procedure DefaultLineCaptionML()
    begin
        if NoCaptionTranslatedLine = '' then begin
            NoCaptionTranslatedLine := SalesHeader.FieldCaption("No.");
        end;
        if DescriptionCaptionTranslatedLine = '' then begin
            DescriptionCaptionTranslatedLine := SalesLine.FieldCaption(Description);
        end;
        if QuantityCaptionTranslatedLine = '' then begin
            QuantityCaptionTranslatedLine := SalesLine.FieldCaption(Quantity);
        end;
        if UOMCaptionTranslatedLine = '' then begin
            UOMCaptionTranslatedLine := 'UOM';// SalesLine.FieldCaption("Unit of Measure");
        end;
        if UnitPriceCaptionTranslatedLine = '' then begin
            UnitPriceCaptionTranslatedLine := 'Unit Price';// SalesLine.FieldCaption("Unit Price");
        end;
        if DiscountCaptionTranslatedLine = '' then begin
            DiscountCaptionTranslatedLine := 'Discount %';//SalesLine.FieldCaption("Line Discount %");
        end;
        if VATPercentCaptionTranslatedLine = '' then begin
            VATPercentCaptionTranslatedLine := 'VAT %';//SalesLine.FieldCaption("VAT %");
        end;
        if AmountCaptionTranslatedLine = '' then begin
            AmountCaptionTranslatedLine := SalesLine.FieldCaption(Amount);
        end;
    end;

    local procedure DefaultFooterCaptionML()
    begin
        //Company Info
        if CompanyInfoVATRegistrationCaptionTranslated = '' then begin
            CompanyInfoVATRegistrationCaptionTranslated := CompanyInfo.FieldCaption("VAT Registration No.") + ':';
        end;
        if CompanyInfoBranchNoCaptionTranslated = '' then begin
            //CompanyInfoBranchNoCaptionTranslated := CompanyInfo.FIELDCAPTION("Branch No.")+':';
        end;
        if CompanyInfoEmailCaptionTranslated = '' then begin
            CompanyInfoEmailCaptionTranslated := CompanyInfo.FieldCaption("E-Mail") + ':';
        end;
        if CompanyInfoPhoneCaptionTranslated = '' then begin
            CompanyInfoPhoneCaptionTranslated := CompanyInfo.FieldCaption("Phone No.") + ':';
        end;

        //Bank Account
        if BankAccNameCaptionTranslated = '' then begin
            BankAccNameCaptionTranslated := BankAccount.FieldCaption(Name) + ':'; //actually it called "account name" in "bank account" card
        end;
        if BankAccBankNameCaptionTranslated = '' then begin
            BankAccBankNameCaptionTranslated := BankAccount.FieldCaption("Name 2") + ':';
        end;
        if BankAccBankAccNoCaptionTranslated = '' then begin
            BankAccBankAccNoCaptionTranslated := BankAccount.FieldCaption("Bank Account No.") + ':';
        end;
        if BankAccSwiftCodeCaptionTranslated = '' then begin
            BankAccSwiftCodeCaptionTranslated := BankAccount.FieldCaption("SWIFT Code") + ':';
        end;
    end;

    local procedure GetItemTranslation(No: Code[20])
    begin
        Clear(ItemTranslation);
        ItemTranslation.SetFilter("Language Code", ItemItranslationRequestPage);
        ItemTranslation.SetFilter("Item No.", No);
        if ItemTranslation.Find('-') then begin
            repeat
                if (ItemTranslation.Description <> '') and (No <> '') then begin
                    ItemTranslationDescripton := ItemTranslation.Description;
                    if ItemItranslationRequestPage = '' then begin
                        ItemTranslationDescripton := '';
                    end;
                end;
                if (ItemTranslation.Description <> '') and (No = '') then begin
                    ItemTranslationDescripton := '';
                end;
            until ItemTranslation.Next = 0;
        end
        else begin
            if (ItemTranslation.Description = '') and (No = '') then begin
                ItemTranslationDescripton := '';
            end
            else begin
                ItemTranslationDescripton := '';
            end;
        end;
    end;

    local procedure GetTotalPerPage(No: Code[20]): Decimal
    var
        SumTotalPerPage: Decimal;
        i: Integer;
    begin
        i := 0;
        "Sales Line".SetFilter("Document No.", No);
        if "Sales Line".Count >= 38 then begin
            if "Sales Line".FindSet then begin
                repeat
                    i := i + 1;
                    if i <= 38 then begin
                        SumTotalPerPage += "Sales Line"."Line Amount";
                    end;
                until "Sales Line".Next = 0;
            end;
        end;

        exit(SumTotalPerPage);
    end;

    local procedure GetArticleVariation(ItemNo: Code[20]): Text
    var
        Variation: Text;
    begin
        /*
        Item.RESET;
        Item.SETRANGE("No.",ItemNo);
        IF Item.FINDFIRST THEN BEGIN
          Variation := Item.Article +' '+ Item.Variation;
        END;
        
        EXIT(Variation);
        */

    end;

    local procedure GetLocalAddress(): Boolean
    begin
        LocalAddress.SetFilter(Code, Customer."No.");
        LocalAddress.SetFilter(Language, CustomerAddrLanguage);
        if LocalAddress.FindFirst then
            exit(true);
    end;

    local procedure GetCountryRegion("Code": Code[20]): Text
    var
        CountryRegionL: Record "Country/Region";
    begin
        if Code = '' then
            exit('');
        CountryRegionL.Get(Code);
        exit(CountryRegionL.Name);
    end;

}

