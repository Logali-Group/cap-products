using com.training as training from '../db/training';

service ManageOrders {
    entity Orders   as projection on training.Orders;
}
