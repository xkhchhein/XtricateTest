report 50101 PurchaseQoute
{
    ApplicationArea = All;
    Caption = 'PurchaseQoute';
    UsageCategory = ReportsAndAnalysis;
    RDLCLayout = 'purchaseqoute.rdl';
    DefaultLayout = RDLC;
    dataset
    {

        dataitem("Company Information"; "Company Information")
        {
            column(Name_cm; Name) { }
            column(Ship_to_Name; "Ship-to Name") { }
            column(Name_2; "Name 2") { }
            column(Address_cm; Address) { }
            column(Address_2; "Address 2") { }
            column(County_cm; County) { }
            column(City_cm; City) { }
            column(Country_Region_Code; "Country/Region Code") { }
            column(Post_Code; "Post Code") { }
            column(E_Mail; "E-Mail") { }
            column(Phone_No_; "Phone No.") { }
            column(VAT_Registration_No_; "VAT Registration No.") { }
            column(GetVendor; GetVendor(Name)) { }
            dataitem("Local Name & Address"; "Local Name & Address")
            {
                DataItemLink = "Original Name/Description" = field(name);
                column(Original_Name_Description; "Original Name/Description")
                {
                }
            }

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
                    field(language; language)
                    {
                        ApplicationArea = all;
                        Caption = 'Language Code';
                        TableRelation = Language;
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
    local procedure GetVendor(vendorcode: code[20]): Text
    var
        vd: Record Vendor;
    begin
        vd.Reset();
        ;
        vd.SetRange("No.", vendorcode);
        if vd.Find('-') then
            exit(vd.name);
    end;

    var
        language: code[20];
        Localname: array[10] of Text[50];
        localname_address: Record "Local Name & Address";
        vender: Record Vendor;
}
