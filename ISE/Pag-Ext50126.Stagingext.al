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
                trigger OnAction()
                begin

                end;
                // var
                //     StagingProcessor: Codeunit "Order Staging Processor";
                // begin
                //     StagingProcessor.createorder(Rec);
                // end;

            }

        }
    }

}
