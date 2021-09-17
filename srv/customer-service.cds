using com.logali as logali from '../db/schema';

service CustomerService {
    entity Customer as projection on logali.Customer {}
}
