pageextension 50125 Relatedbutton extends "List Order Page"
{
    actions
    {
        addlast(Navigation)
        {
            action(RelatedOrders)
            {
                Caption = 'Related';
                ApplicationArea = All;

                trigger OnAction()
                var
                    SalesHeader: Record "Sales Header";
                    PurchaseHeader: Record "Purchase Header";
                begin
                    case Rec."Entry Type" of
                        Rec."Entry Type"::SalesOrder:
                            begin
                                if SalesHeader.Get(SalesHeader."Document Type"::Order, Rec."Document No.") then
                                    PAGE.Run(PAGE::"Sales Order", SalesHeader);
                            end;

                        Rec."Entry Type"::PurchaseOrder:
                            begin
                                if PurchaseHeader.Get(PurchaseHeader."Document Type"::Order, Rec."Document No.") then
                                    PAGE.Run(PAGE::"Purchase Order", PurchaseHeader);
                            end;

                        else
                            Message('No related page defined for this entry type.');
                    end;
                end;
            }
        }
    }
}
