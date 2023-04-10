

/// <summary>
/// PageExtension Sales Invoice List (ID 50053) extends Record Sales Invoice List.
/// </summary>
pageextension 50109 SalesInvoiceLists extends "Sales Invoice List"
{
    layout
    {
        modify("Sell-to Contact")
        {
            Visible = true;
        }
        addafter(Amount)
        {
            // field(Imported; Rec.Imported)
            // {
            //     ApplicationArea = All;
            //     Caption = 'Imported';
            //     Visible = ImportVisible;
            // }
            // field("Imported DateTime"; Rec."Imported DateTime")
            // {
            //     ApplicationArea = All;
            //     Caption = 'Imported DateTime';
            //     Visible = ImportVisible;
            // }
        }
    }
    actions
    {
        addafter("P&osting")
        {
            action(ExortToExcel)
            {
                Caption = 'Export Template', comment = 'NLB="YourLanguageCaption"';
                ApplicationArea = All;
                Image = ExportToExcel;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                //Visible = ImportVisible;
                trigger OnAction()
                var
                    Export: report "LFR Sales Invoice Export";
                begin
                    Export.Run();
                end;
            }
            action(ImportFromExcels)
            {
                Caption = 'Import Template';
                ApplicationArea = All;
                //Visible = ImportVisible;
                Image = ImportExcel;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    ReadExcelSheet();
                end;
            }
        }
        addfirst(Processing)
        {
            action(ExortToExcels)
            {
                Caption = 'Export Template';
                ApplicationArea = All;
                Image = ExportToExcel;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Visible = ImportVisible;
                trigger OnAction()
                var
                    Export: report "LFR Sales Invoice Export";
                begin
                    Export.Run();
                end;
            }
            action(ImportFromExcel)
            {
                Caption = 'Import Template';
                ApplicationArea = All;
                Visible = ImportVisible;
                Image = ImportExcel;
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                trigger OnAction()
                begin
                    ReadExcelSheet();
                end;
            }
        }
    }
    local procedure ReadExcelSheet()
    var
        FileMgt: Codeunit "File Management";
        IStream: InStream;
        NameValueBufferOut: Record "Name/Value Buffer" temporary;
        FromFile: Text[100];
        MaxRow: Integer;
        ColNo: Integer;
        RowNo: Integer;
    begin
        SheetName := '';
        FileName := '';
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            // SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
            TempExcelBuffer.GetSheetsNameListFromStream(IStream, NameValueBufferOut);
        end else
            Error(NoFileFoundMsg);
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        NameValueBufferOut.Reset();
        if NameValueBufferOut.FindSet() then begin
            repeat
                Clear(SheetName);
                SheetName := NameValueBufferOut.Value;
                TempExcelBuffer.OpenBookStream(IStream, SheetName);
                TempExcelBuffer.ReadSheet();

                MaxRow := 0;
                TempExcelBuffer.Reset();
                if TempExcelBuffer.FindLast() then
                    MaxRow := TempExcelBuffer."Row No.";

                ColNo := 0;
                RowNo := 0;

                IF SheetName = SalesInvoiceLineLbl THEN
                    ImportExcelDataLines();
                IF SheetName = SalesInvoiceHeaderLbl THEN
                    ImportExcelDataHeader();
            until NameValueBufferOut.Next() = 0;
        end;


    end;

    local procedure ReadExcelSheetHeader()
    var
        FileMgt: Codeunit "File Management";
        IStream: InStream;
        FromFile: Text[100];
    begin
        SheetName := '';
        FileName := '';
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
        end else
            Error(NoFileFoundMsg);
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(IStream, SheetName);
        TempExcelBuffer.ReadSheet();
        SheetName := TempExcelBuffer.SelectSheetsNameStream(Istream);
        IF SheetName = SalesInvoiceHeaderLbl THEN
            ImportExcelDataHeader();
    end;

    local procedure ReadExcelSheetLine()
    var
        FileMgt: Codeunit "File Management";
        IStream: InStream;
        FromFile: Text[100];
    begin
        SheetName := '';
        FileName := '';
        UploadIntoStream(UploadExcelMsg, '', '', FromFile, IStream);
        if FromFile <> '' then begin
            FileName := FileMgt.GetFileName(FromFile);
            SheetName := TempExcelBuffer.SelectSheetsNameStream(IStream);
        end else
            Error(NoFileFoundMsg);
        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(IStream, SheetName);
        TempExcelBuffer.ReadSheet();
        SheetName := TempExcelBuffer.SelectSheetsNameStream(Istream);
        IF SheetName = SalesInvoiceLineLbl THEN
            ImportExcelDataLines();
    end;

    local procedure ImportExcelDataHeader()
    var
        SHImportBuffer: Record "Sales Header";
        SLImportBuffer: Record "Sales Line";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRowNo: Integer;
        Progress: Dialog;
        RecordCounted: Integer;
        Counter: Integer;
        I: Integer;
        InvoiceNo: Code[24];
        ProgressMsg: Label 'Sales Invoice Header Importing\Invoice No.: #1#####\Record Count: #2#####\Total Records Counted: #3#####';
    begin
        //importheader
        RowNo := 0;
        ColNo := 0;
        MaxRowNo := 0;
        LineNo := 0;
        SHImportBuffer.Reset();
        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then begin
            MaxRowNo := TempExcelBuffer."Row No.";
        end;
        if TempExcelBuffer.FindSet() then
            RecordCounted := TempExcelBuffer.Count;
        Progress.OPEN(ProgressMsg, SHImportBuffer."No.", Counter, RecordCounted);//progress dialog open
        for RowNo := 2 to MaxRowNo do begin
            Counter := Counter + 1;//update dialog
            LineNo := LineNo + 10000;
            SHImportBuffer.Init();
            Evaluate(SHImportBuffer."Document Type", GetValueAtCell(RowNo, 1));
            Evaluate(SHImportBuffer."No.", GetValueAtCell(RowNo, 2));
            Evaluate(SHImportBuffer."Sell-to Customer No.", GetValueAtCell(RowNo, 3));
            Evaluate(SHImportBuffer."Sell-to Customer Name", GetValueAtCell(RowNo, 4));
            Evaluate(SHImportBuffer."Document Date", GetValueAtCell(RowNo, 5));
            Evaluate(SHImportBuffer."Posting Date", GetValueAtCell(RowNo, 6));
            Evaluate(SHImportBuffer."Payment Terms Code", GetValueAtCell(RowNo, 7));
            Evaluate(SHImportBuffer."Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 8));
            Evaluate(SHImportBuffer."Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 9));
            Evaluate(SHImportBuffer."Location Code", GetValueAtCell(RowNo, 10));
            Evaluate(SHImportBuffer."Due Date", GetValueAtCell(RowNo, 11));
            Evaluate(SHImportBuffer."External Document No.", GetValueAtCell(RowNo, 12));
            Evaluate(SHImportBuffer."Posting No. Series", GetValueAtCell(RowNo, 13));
            Evaluate(SHImportBuffer."Responsibility Center", GetValueAtCell(RowNo, 14));
            SHImportBuffer."Gen. Bus. Posting Group" := UpdateGenBusPostingGrp(SHImportBuffer."Sell-to Customer No.");
            SHImportBuffer."VAT Bus. Posting Group" := VATBusPostingGrp(SHImportBuffer."Sell-to Customer No.");
            SHImportBuffer.Insert();
            SHImportBuffer.Validate("Sell-to Customer No.", GetValueAtCell(RowNo, 3));
            SHImportBuffer.Validate("Posting No. Series", GetValueAtCell(RowNo, 13));
            SHImportBuffer.Validate("Posting Date");
            SHImportBuffer.CopySellToAddressToBillToAddress();
            SHImportBuffer.CopySellToAddressToShipToAddress();
            SHImportBuffer.Validate("Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 8));
            SHImportBuffer.Validate("Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 9));
            SHImportBuffer.Validate("Gen. Bus. Posting Group");
            SHImportBuffer.Validate("Customer Posting Group");
            SHImportBuffer.Validate("Responsibility Center", GetValueAtCell(RowNo, 14));
            // SHImportBuffer.Imported := true;
            // SHImportBuffer."Imported DateTime" := CurrentDateTime;
            SHImportBuffer.Modify(true);
            Progress.UPDATE(); // Update the field in the dialog. 
            SLEEP(50);
        end;
        Progress.CLOSE();
        Message('Total Sales Invoice Imported = %1', Counter);
    end;

    local procedure ImportExcelDataLines()
    var
        SLImportBuffer: Record "Sales Line";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRowNo: Integer;
        LineType: Option "Item","G/L Account";
        No: Code[50];
        Description: Text[250];
        DocNo: Code[50];
        UnitPrice: Decimal;
        LineQty: Decimal;
        UOM: Code[24];
        LineDiscountAmount: Decimal;
        ShortCutDim1: Code[50];
        ShortCutDim2: Code[50];
        DocumentType: Option "Invoice";
        LocationCode: Code[50];
        GeneralProductPostingGroup: Code[50];
        //dialog
        Progress: Dialog;
        RecordCounted: Integer;
        Counter: Integer;
        I: Integer;
        InvoiceNo: Code[24];
        ProgressMsg: Label 'Importing Sales Lines\Invoice No.: #1#####\No.: #2#####\Record Count: #3#####';

    begin
        RowNo := 0;
        ColNo := 0;
        MaxRowNo := 0;
        LineNo := 0;
        SLImportBuffer.Reset();
        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then begin
            MaxRowNo := TempExcelBuffer."Row No.";
        end;
        if TempExcelBuffer.FindSet() then
            RecordCounted := TempExcelBuffer.Count;
        Progress.OPEN(ProgressMsg, SLImportBuffer."Document No.", SLImportBuffer."No.", Counter);//progress dialog open
        for RowNo := 2 to MaxRowNo do begin

            Counter := Counter + 1;//update dialog

            DocNo := GetValueAtCell(RowNo, 3);
            SLImportBuffer.SetRange("Document No.", DocNo);
            Evaluate(LineQty, GetValueAtCell(RowNo, 6));
            Evaluate(UnitPrice, GetValueAtCell(RowNo, 8));
            Evaluate(LineDiscountAmount, GetValueAtCell(RowNo, 10));
            if SLImportBuffer.FindLast() then
                LineNo := SLImportBuffer."Line No." + 10000
            else
                LineNo := 10000;
            SLImportBuffer.Init();
            SLImportBuffer."Line No." := LineNo;
            Evaluate(SLImportBuffer."Type", GetValueAtCell(RowNo, 1));
            Evaluate(SLImportBuffer."Document Type", GetValueAtCell(RowNo, 2));
            Evaluate(SLImportBuffer."Document No.", DocNo);
            Evaluate(SLImportBuffer."No.", GetValueAtCell(RowNo, 4));
            Evaluate(SLImportBuffer.Description, GetValueAtCell(RowNo, 5));
            Evaluate(SLImportBuffer.Quantity, GetValueAtCell(RowNo, 6));
            Evaluate(SLImportBuffer."Location Code", GetValueAtCell(RowNo, 7));
            Evaluate(SLImportBuffer."Unit Price", GetValueAtCell(RowNo, 8));
            Evaluate(SLImportBuffer."Unit of Measure Code", GetValueAtCell(RowNo, 9));
            Evaluate(SLImportBuffer."Line Discount Amount", GetValueAtCell(RowNo, 10));
            Evaluate(SLImportBuffer."Gen. Prod. Posting Group", GetValueAtCell(RowNo, 11));
            Evaluate(SLImportBuffer."Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 12));
            Evaluate(SLImportBuffer."Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 13));
            SLImportBuffer."Sell-to Customer No." := UpdateSellToCustomerNo(SLImportBuffer."Document No.");
            SLImportBuffer."Gen. Bus. Posting Group" := UpdateGenBusPostingGrp(SLImportBuffer."Sell-to Customer No.");
            SLImportBuffer.Insert();
            SLImportBuffer.Validate("No.", GetValueAtCell(RowNo, 4));
            SLImportBuffer.Validate(Description, GetValueAtCell(RowNo, 5));
            SLImportBuffer.validate(Quantity, LineQty);
            SLImportBuffer.validate("Unit Price", UnitPrice);
            SLImportBuffer.Validate("Line Discount Amount", LineDiscountAmount);
            SLImportBuffer.Validate("Gen. Prod. Posting Group", GetValueAtCell(RowNo, 11));
            SLImportBuffer.validate("Shortcut Dimension 1 Code", GetValueAtCell(RowNo, 12));
            SLImportBuffer.validate("Shortcut Dimension 2 Code", GetValueAtCell(RowNo, 13));
            SLImportBuffer.Modify(true);
            Progress.UPDATE(); // Update the field in the dialog. 
            SLEEP(50);
        end;
        Progress.CLOSE();
        Message('Total Sales Lines Imported = %1', Counter);
    end;

    local procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExcelBuffer.Reset();
        If TempExcelBuffer.Get(RowNo, ColNo) then
            exit(TempExcelBuffer."Cell Value as Text")
        else
            exit('');
    end;

    local procedure UpdateSellToCustomerNo(DocNo: Code[50]): Code[24]
    var
        SalesInvoiceHeader: Record "Sales Header";
    begin
        SalesInvoiceHeader.Reset();
        SalesInvoiceHeader.SetRange("No.", DocNo);
        if SalesInvoiceHeader.Find('-') then
            exit(SalesInvoiceHeader."Sell-to Customer No.");
    end;

    local procedure UpdateGenBusPostingGrp(CustomerNo: Code[50]): Code[50]
    var
        Cus: Record Customer;
    begin
        Cus.SetRange("No.", CustomerNo);
        if Cus.Find('-') then
            exit(Cus."Gen. Bus. Posting Group");
    end;

    local procedure VATBusPostingGrp(CustomerNo: Code[50]): Code[50]
    var
        Cus: Record Customer;
    begin
        Cus.SetRange("No.", CustomerNo);
        if Cus.Find('-') then
            exit(Cus."VAT Bus. Posting Group");
    end;

    trigger OnOpenPage()
    var
        CompanyName: Text;
    begin
        CompanyName := Rec.CurrentCompany;
        AccessControl.Reset();
        AccessControl.SetRange("User Security ID", UserSecurityId());
        AccessControl.SetRange("Role ID", 'LFR SI IMPORT');
        AccessControl.SetRange(Scope, AccessControl.Scope::System);
        AccessControl.SetRange("Company Name", CompanyName);
        if not AccessControl.IsEmpty then
            ImportVisible := true
        else
            ImportVisible := false;
    end;

    var

        ImportVisible: Boolean;
        AccessControl: Record "Access Control";

        FileName: Text[100];
        SheetName: Text[100];
        TempExcelBuffer: Record "Excel Buffer" temporary;
        UploadExcelMsg: Label 'Please Choose the Excel file.';
        NoFileFoundMsg: Label 'No Excel file found!';
        BatchISBlankMsg: Label 'Batch name is blank';
        ExcelHeaderImportSucess: Label 'Sales Header with document type Invoice is successfully imported.';
        ExcelLineImportSucess: Label 'Sales Line with document type Invoice is successfully imported.';
        SalesInvoiceLineLbl: Label 'Sales Invoice Line';
        SalesInvoiceHeaderLbl: Label 'Sales Invoice Header';
}