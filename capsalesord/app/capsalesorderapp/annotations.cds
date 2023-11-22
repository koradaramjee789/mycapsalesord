using SalesService as service from '../../srv/salesservice';

annotate service.SalesOrderSet with @(
    odata.draft.enabled             : true,
    UI.LineItem                     : [
        {
            $Type: 'UI.DataField',
            Label: 'SalesOrderID',
            Value: SalesOrderID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Label: 'SalesOrderType',
            Value: SalesOrderType,
        },
        {
            $Type: 'UI.DataField',
            Label: 'SalesOrganization',
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
            Label: 'SalesOrderID',
            Value: SalesOrderID,
        },
        {
            $Type: 'UI.DataField',
            Label: 'description',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Label: 'SalesOrderType',
            Value: SalesOrderType,
        },
        {
            $Type: 'UI.DataField',
            Label: 'SalesOrganization',
            Value: SalesOrganization,
        },
        {
            $Type: 'UI.DataField',
            Label: 'DistrbutionChannel',
            Value: DistrbutionChannel,
        },
        {
            $Type: 'UI.DataField',
            Label: 'status',
            Value: status,
        },
        {
            $Type: 'UI.DataField',
            Label: 'CreditLimitUsed',
            Value: CreditLimitUsed_value,


        },
        {
            $Type: 'UI.DataField',
            Label: 'NetAmount',
            Value: NetAmount_value,

        },
    ],
});

annotate service.SalesOrderSet with {
    NetAmount       @Measures: {ISOCurrency: CreditLimitUsed_currency.code, };
    CreditLimitUsed @Measures: {ISOCurrency: NetAmount_currency.code, }
}
