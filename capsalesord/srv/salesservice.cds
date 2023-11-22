using { my.business as my } from '../db/schema';


service SalesService {

    entity SalesOrderSet as projection on my.SalesOrder;


}