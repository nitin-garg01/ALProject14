pageextension 50126 "Staging ext" extends "List Order Page"
{
    actions
    {
        addlast(Processing)
        {
            action(CreateOrder)
            {
                Caption = 'Create Order';
                Image = NewDocument;
                ApplicationArea = All;
                // trigger OnAction()
                // var
                //     StagingProcessor: Codeunit "Order Staging Processor";
                // begin
                //     StagingProcessor.createorder(Rec);
                // end;
                // trigger OnAction()
                // var
                //     StagingProcessor: Codeunit "Order Staging Processor";
                // begin
                //     if not Rec."Is Order Created" then begin
                //         StagingProcessor.CreateOrder(Rec);
                //         Rec."Is Order Created" := true;
                //         // Rec.Modify();
                //         // Message('Order created manually.');
                //     end
                // end;
            }

        }
    }

}
