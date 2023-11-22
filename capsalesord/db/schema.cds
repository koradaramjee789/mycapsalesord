namespace my.business;
using { Currency } from '@sap/cds/common';

type Amount {
  value : Decimal(10,3);
  currency : Currency;
}

entity SalesOrder {
    key UUID                  : UUID;
        SalesOrderID          : String(10);
        description           : String(40);
        SalesOrderType        : String(4);
        SalesOrganization     : String(4);
        DistrbutionChannel    : String(2);
        status                : String(10) default 'Draft';
        CreditLimitUsed       : Amount;
        NetAmount             : Amount;
        Currency              : Currency ;
        CustomerReference     : String(100);
        DocumentDate          : Date default $now;
        RequestedDeliveryDate : Date;
        OrderReason           : String(40);
        ShippingConditions    : String(2);
        IncoTerms             : String(4);
        TermsOfPayment        : String(4);
        PricingDate           : Date default $now;

// Composition: SalesOrder has many SalesOrderItems
// items           : Composition of many SalesOrderItem on items.salesOrder = $self ;
}
