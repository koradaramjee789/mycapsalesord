using SalesService as service from '../../srv/salesservice';

annotate service.SalesOrderSet with @(
    odata.draft.enabled : true,
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrderID',
            Value : SalesOrderID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerName',
            Value : customerName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrderType',
            Value : SalesOrderType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganization',
            Value : SalesOrganization,
        },
    ]
);
annotate service.SalesOrderSet with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrderID',
                Value : SalesOrderID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerName',
                Value : customerName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrderType',
                Value : SalesOrderType,
            },
            {
                $Type : 'UI.DataField',
                Label : 'SalesOrganization',
                Value : SalesOrganization,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DistrbutionChannel',
                Value : DistrbutionChannel,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CreditLimitUsed',
                Value : CreditLimitUsed,
            },
            {
                $Type : 'UI.DataField',
                Label : 'NetAmount',
                Value : NetAmount,
            },
            {
                $Type : 'UI.DataField',
                Label : 'CustomerReference',
                Value : CustomerReference,
            },
            {
                $Type : 'UI.DataField',
                Label : 'DocumentDate',
                Value : DocumentDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'RequestedDeliveryDate',
                Value : RequestedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'OrderReason',
                Value : OrderReason,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ShippingConditions',
                Value : ShippingConditions,
            },
            {
                $Type : 'UI.DataField',
                Label : 'IncoTerms',
                Value : IncoTerms,
            },
            {
                $Type : 'UI.DataField',
                Label : 'TermsOfPayment',
                Value : TermsOfPayment,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PricingDate',
                Value : PricingDate,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
