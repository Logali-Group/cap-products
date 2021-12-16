using com.training as training from '../db/training';

service ManageOrders {

    type cancelOrderReturn {
        status  : String enum {
            Succeeded;
            Failed
        };
        message : String
    };

    // function getClientTaxRate(clientEmail : String(65)) returns Decimal(4, 2);
    // action cancelOrder(clientEmail : String(65)) returns cancelOrderReturn;

    entity Orders as projection on training.Orders actions {
        function getClientTaxRate(clientEmail : String(65)) returns Decimal(4, 2);
        action cancelOrder(clientEmail :        String(65)) returns cancelOrderReturn;
    }
}
