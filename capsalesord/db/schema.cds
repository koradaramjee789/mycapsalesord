namespace my.business;

//using { Currency } from '@sap/cds/common';


entity SalesOrder {
    key UUID                  : UUID;
        SalesOrderID          : String(10);
        description           : String(40);
        SalesOrderType        : String(4);
        SalesOrganization     : String(4);
        DistrbutionChannel    : String(2);
        status                : String(10) default 'Draft';
        CreditLimitUsed       : Decimal(15, 2);
        NetAmount             : Decimal(12, 2);
        Currency              : String(3) ;
        CustomerReference     : String(100);
        DocumentDate          : Date default $now;
        RequestedDeliveryDate : Date;
        OrderReason           : String(40);
        ShippingConditions    : String(2);
        IncoTerms             : String(4);
        TermsOfPayment        : String(4);
        PricingDate           : Date default $now;

        Items                 : Composition of many SalesOrderItems
                                    on Items.parent = $self;
// Composition: SalesOrder has many SalesOrderItems
// items           : Composition of many SalesOrderItem on items.salesOrder = $self ;
}

entity SalesOrderItems {
    key parent                : Association to SalesOrder;
    key ItemUUID              : UUID;
        ItemNo                : String(5);
        Product               : String(10);
        RequestedQuantity     : Integer;
        ConfirmedQuantity     : Integer;
        Price                 : Decimal(10, 2);
        Currency              : String(3);
        ItemCategory          : String(10);
        RequestedDeliveryDate : Date;
        ConfirmedDeliveryDate : Date;
        Availability          : String(10);
}

  entity Currencies  {
    key code      : String(3) @(title : '{i18n>CurrencyCode}');
        symbol    : String(5) @(title : '{i18n>CurrencySymbol}');
        minorUnit : Int16     @(title : '{i18n>CurrencyMinorUnit}');
  }
