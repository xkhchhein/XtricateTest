pageextension 50107 AssemblyOrder extends "Assembly Orders"
{

    layout
    {
        // Add changes to page layout here
        //moveafter(Description; "Item No.")
        modify("Item No.")
        {
            Visible = false;
        }
    }

    actions
    {
        // Add changes to page actions here
        addafter("P&ost")
        {
            action(Iemport)
            {
                ApplicationArea = All;
                Caption = 'Import', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Import;

                trigger OnAction()
                begin
                    ReadExcelSheet();
                end;
            }
            action(Export)
            {
                ApplicationArea = All;
                Caption = 'Export', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Export;

                trigger OnAction()
                begin
                    ExportToExcel(Rec);
                end;
            }
            action(DeleteAll)
            {
                ApplicationArea = All;
                Caption = 'Delete All', comment = 'NLB="YourLanguageCaption"';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Delete;

                trigger OnAction()
                var
                    Dmss: Text[20];
                    Istream: InStream;
                    FromFile: Text[10];
                begin
                    //UploadIntoStream('Delete', '', '', FromFile, Istream);
                    DeleteAssemblyHeader();
                end;
            }
        }
    }
    local procedure ExportToExcel(var AssemblyOrder: Record "Assembly Header")
    var
        ExcelBufferTmp: Record "Excel Buffer" temporary;
        GSExcelLbl: Label 'GS Excel Assembly';
        GSFileName: Label 'GS Excel Assembly_%1_%2';
    begin
        ExcelBufferTmp.Reset();
        ExcelBufferTmp.DeleteAll();
        ExcelBufferTmp.NewRow();

        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Document Type"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);

        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("No."), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption(Description), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Due Date"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Starting Date"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Ending Date"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Assemble to Order"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption(Quantity), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Unit Cost"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Location Code"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Variant Code"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Bin Code"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
        ExcelBufferTmp.AddColumn(AssemblyOrder.FieldCaption("Remaining Quantity"), false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);

        if AssemblyOrder.FindSet() then
            repeat
                ExcelBufferTmp.NewRow();
                ExcelBufferTmp.AddColumn(AssemblyOrder."Document Type", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);

                ExcelBufferTmp.AddColumn(AssemblyOrder."No.", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder.Description, false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Due Date", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Starting Date", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Ending Date", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Assemble to Order", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder.Quantity, false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Unit Cost", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Location Code", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Variant Code", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Bin Code", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
                ExcelBufferTmp.AddColumn(AssemblyOrder."Remaining Quantity", false, '', false, false, false, '', ExcelBufferTmp."Cell Type"::Text);
            until AssemblyOrder.Next() = 0;
        ExcelBufferTmp.CreateNewBook(GSExcelLbl);
        ExcelBufferTmp.WriteSheet(GSExcelLbl, CompanyName, UserId);
        ExcelBufferTmp.CloseBook();
        ExcelBufferTmp.SetFriendlyFilename(StrSubstNo(GSFileName, CurrentDateTime, UserId));
        ExcelBufferTmp.OpenExcel();
    end;

    local procedure GetValueAtCell(RowNo: Integer; ColNo: Integer): Text
    begin
        TempExelBuffer.Reset();
        if TempExelBuffer.Get(RowNo, ColNo) then
            exit(TempExelBuffer."Cell Value as Text")
        else
            exit('');
    end;

    local procedure ReadExcelSheet()
    var
        FileManagement: Codeunit "File Management";
        Istream: InStream;
        FromFile: Text[10];
    begin
        UploadIntoStream(UploadMsg, '', '', FromFile, Istream);
        if FromFile <> '' then begin
            FileName := FileManagement.GetFileName(FromFile);
            SheetName := TempExelBuffer.SelectSheetsNameStream(Istream);

        end else
            Error(NoFileMsg);
        TempExelBuffer.Reset();
        TempExelBuffer.DeleteAll();
        TempExelBuffer.OpenBookStream(Istream, SheetName);
        TempExelBuffer.ReadSheet();
        ImportExcelData();
    end;

    local procedure ImportExcelData()
    var
        GSImportBuffer: Record "Assembly Header";
        RowNo: Integer;
        ColNo: Integer;
        LineNo: Integer;
        MaxRow: Integer;
        DocNo: Code[24];
        Desc: Text[50];
        DueDate: Date;
        StartDate: Date;
        EndDate: Date;
        AssOrder: Boolean;
        Qty: Decimal;
        UnitCost: Decimal;
        Lcode: Code[20];
        Vcode: Code[50];
        Bcode: Code[20];
        ReQty: Decimal;
    //con: text[100];
    begin
        RowNo := 0;
        ColNo := 0;
        MaxRow := 0;
        LineNo := 0;


        TempExelBuffer.Reset();
        if TempExelBuffer.FindLast() then begin
            MaxRow := TempExelBuffer."Row No.";
            TempExelBuffer.Reset();
        end;

        for RowNo := 2 to MaxRow do begin
            Evaluate(DocNo, GetValueAtCell(RowNo, 2));
            Evaluate(Desc, GetValueAtCell(RowNo, 3));
            Evaluate(DueDate, GetValueAtCell(RowNo, 4));
            Evaluate(StartDate, GetValueAtCell(RowNo, 5));
            Evaluate(EndDate, GetValueAtCell(RowNo, 6));
            Evaluate(AssOrder, GetValueAtCell(RowNo, 7));
            Evaluate(Qty, GetValueAtCell(RowNo, 8));
            //Evaluate(UnitCost, GetValueAtCell(RowNo, 9));
            Evaluate(Lcode, GetValueAtCell(RowNo, 10));
            Evaluate(Vcode, GetValueAtCell(RowNo, 11));
            Evaluate(Bcode, GetValueAtCell(RowNo, 12));
            Evaluate(ReQty, GetValueAtCell(RowNo, 13));
            //Evaluate(qty, GetValueAtCell(RowNo, 6));
            LineNo := LineNo + 10000;
            GSImportBuffer.SetRange("No.", DocNo);
            if not GSImportBuffer.Find('-') then begin
                GSImportBuffer.Init();
                // Evaluate(GSImportBuffer."Batch Name", BatchName);
                GSImportBuffer."No." := DocNo;
                Evaluate(GSImportBuffer."Document Type", GetValueAtCell(RowNo, 1));
                Evaluate(GSImportBuffer."No.", GetValueAtCell(RowNo, 2));
                Evaluate(GSImportBuffer.Description, GetValueAtCell(RowNo, 3));
                Evaluate(GSImportBuffer."Due Date", GetValueAtCell(RowNo, 4));
                Evaluate(GSImportBuffer."Starting Date", GetValueAtCell(RowNo, 5));
                Evaluate(GSImportBuffer."Ending Date", GetValueAtCell(RowNo, 6));
                Evaluate(GSImportBuffer."Assemble to Order", GetValueAtCell(RowNo, 7));
                Evaluate(GSImportBuffer.Quantity, GetValueAtCell(RowNo, 8));
                Evaluate(GSImportBuffer."Unit Cost", GetValueAtCell(RowNo, 9));
                Evaluate(GSImportBuffer."Location Code", GetValueAtCell(RowNo, 10));
                Evaluate(GSImportBuffer."Variant Code", GetValueAtCell(RowNo, 11));
                Evaluate(GSImportBuffer."Bin Code", GetValueAtCell(RowNo, 12));
                Evaluate(GSImportBuffer."Remaining Quantity", GetValueAtCell(RowNo, 13));
                //Evaluate(GSImportBuffer."Item No.", GetValueAtCell(RowNo, 14));
                //GSImportBuffer."Sheet Name" := SheetName;
                //GSImportBuffer.Imported_Time := time;
                GSImportBuffer.Insert();
            end else begin//if it's existed
                GSImportBuffer.Validate(Description, Desc);
                GSImportBuffer.Validate("Due Date", DueDate);
                GSImportBuffer.Validate("Starting Date", StartDate);
                GSImportBuffer.Validate("Ending Date", EndDate);
                //GSImportBuffer.Validate("Assemble to Order", AssOrder);
                GSImportBuffer.Validate(Quantity, Qty);
                //GSImportBuffer.Validate("Unit Cost", UnitCost);
                GSImportBuffer.Validate("Location Code", Lcode);
                //GSImportBuffer.Validate("Variant Code", Vcode);
                GSImportBuffer.Validate("Bin Code", Bcode);
                GSImportBuffer.Validate("Remaining Quantity", ReQty);

                GSImportBuffer.Modify();
            end;

        end;
        Message(ExcelImportSuccess);

    end;

    local procedure DeleteAssemblyHeader()
    var
        AssemblyHeader: Record "Assembly Header";
    begin
        AssemblyHeader.Reset();
        if AssemblyHeader.FindFirst() then begin
            AssemblyHeader.DeleteAll();
        end;
        Message(DeleteAssemblyHeaderMss);
    end;

    var
        FileName: Text[50];
        SheetName: Text[50];
        TempExelBuffer: Record "Excel Buffer" temporary;
        UploadMsg: Label 'Please Choose The Excel File';
        NoFileMsg: Label 'No Excel File Found';
        ExcelImportSuccess: Label 'Excel Import Success';
        ImaportBufferTbl: Record "Assembly Header";
        DeleteAssemblyHeaderMss: Label 'Assembly Record Has Been Deleted.';
}