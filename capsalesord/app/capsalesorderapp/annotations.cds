using SalesService as service from '../../srv/salesservice';

annotate service.SalesOrderSet with @(
    odata.draft.enabled             : true,
    UI.LineItem                     : [
        {
            $Type: 'UI.DataField',
            Label: 'Sales Order ID',
            Value: SalesOrderID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Sales Order Type',
            Value: SalesOrderType,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Sales Organization',
            Value: SalesOrganization,
        },
    ],
    UI.DataPoint #DPQStatus         : {
        $Type: 'UI.DataPointType',
        Title: 'Status',
        Value: status,
    },
    UI.HeaderFacets                 : [{
        $Type : 'UI.ReferenceFacet',
        Target: '@UI.DataPoint#DPQStatus',
    }, ],
    UI.Facets                       : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Additional Information',
            ID    : 'AddiInfo',
            Target: '@UI.FieldGroup#FGQAdditionalInfo',
        },
                {
            $Type : 'UI.ReferenceFacet',
            Label : 'Items',
            ID    : 'Items',
            Target: 'Items/@UI.LineItem',
        },
    ],
    UI.FieldGroup #FGQAdditionalInfo: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Customer reference',
                Value: CustomerReference,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Document Date',
                Value: DocumentDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Incoterms',
                Value: IncoTerms,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Order Reason',
                Value: OrderReason,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Pricing Date',
                Value: PricingDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Requested Delivery Date',
                Value: RequestedDeliveryDate,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Shipping Conditions',
                Value: ShippingConditions,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Terms of Payment',
                Value: TermsOfPayment,
            },
        ],
    }
);

annotate service.SalesOrderSet with @(UI.FieldGroup #GeneratedGroup1: {
    $Type: 'UI.FieldGroupType',
    Data : [
        {
            $Type: 'UI.DataField',
            Label: 'Sales Order ID',
            Value: SalesOrderID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Sales Order Type',
            Value: SalesOrderType,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Sales Organization',
            Value: SalesOrganization,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Distrbution Channel',
            Value: DistrbutionChannel,
        },
        {
            $Type: 'UI.DataField',
            Label: 'status',
            Value: status,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Credit Limit Used',
            Value: CreditLimitUsed,


        },
        {
            $Type: 'UI.DataField',
            Label: 'Net Amount',
            Value: NetAmount,

        },
        {
            $Type: 'UI.DataField',
            Label: 'Currency',
            Value: Currency,
            

        },
    ],
});
annotate service.Currencies with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : symbol,
            Label : 'Symbol',
        },
        {
            $Type : 'UI.DataField',
            Value : code,
            Label : 'Code',
        },
        {
            $Type : 'UI.DataField',
            Value : name,
            Label : 'Name',
        },        
    ]
);
annotate service.SalesOrderSet with {
    NetAmount       @Measures: {ISOCurrency: Currency};
    CreditLimitUsed @Measures: {ISOCurrency: Currency};
    Currency @( Common.ValueList : {
        $Type : 'Common.ValueListType',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                ValueListProperty : 'code',
                LocalDataProperty : Currency,
            },            
        ],
        CollectionPath : 'Currencies',
        SearchSupported : true,
        Label : 'Currencies',
    })
}

annotate service.SalesOrderItemSet with @(
    UI.Facets  : [{
        $Type : 'UI.ReferenceFacet',
        Target: 'parent/@UI.LineItem',
        Label : 'Items',
        ID    : 'Items',
    }, ],


    UI.LineItem: [
        {
            $Type: 'UI.DataField',
            Label: 'Item No',
            Value: ItemNo,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Product',
            Value: Product,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Requested Quantity',
            Value: RequestedQuantity,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Confirmed Quantity',
            Value: ConfirmedQuantity,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Price',
            Value: Price,
        },                
        {
            $Type: 'UI.DataField',
            Label: 'Item Category',
            Value: ItemCategory,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Requested Delivery Date',
            Value: RequestedDeliveryDate,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Confirmed Delivery Date',
            Value: ConfirmedDeliveryDate,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Availability',
            Value: Availability,
        },

    ]
);




annotate service.SalesOrderItemSet with {
    Price       @Measures: {ISOCurrency: Currency};
    Currency @( Common.ValueList : {
        $Type : 'Common.ValueListType',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                ValueListProperty : 'code',
                LocalDataProperty : Currency,
            },
        ],
        CollectionPath : 'Currencies',
        SearchSupported : true,
        Label : 'Currencies',
    })
}
