using {my.business as my} from '../db/schema';


service SalesService {

    entity SalesOrderSet     as projection on my.SalesOrder;
    entity SalesOrderItemSet as projection on my.SalesOrderItems;
    entity Currencies        as projection on my.Currencies;
}
