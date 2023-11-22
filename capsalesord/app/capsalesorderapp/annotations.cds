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
            Label : 'SalesOrderType',
            Value : SalesOrderType,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SalesOrganization',
            Value : SalesOrganization,
        },
    ],
    UI.DataPoint #DPQStatus : {
        $Type : 'UI.DataPointType',
        Title : 'Status',
        Value : status,
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.DataPoint#DPQStatus',
        },
    ],
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Additional Information',
            ID : 'AddiInfo',
            Target : '@UI.FieldGroup#FGQAdditionalInfo',
        },
    ],
    UI.FieldGroup #FGQAdditionalInfo : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : CustomerReference,
            },
            {
                $Type : 'UI.DataField',
                Value : DocumentDate,
            },
            {
                $Type : 'UI.DataField',
                Value : IncoTerms,
            },
            {
                $Type : 'UI.DataField',
                Value : OrderReason,
            },
            {
                $Type : 'UI.DataField',
                Value : PricingDate,
            },
            {
                $Type : 'UI.DataField',
                Value : RequestedDeliveryDate,
            },
            {
                $Type : 'UI.DataField',
                Value : ShippingConditions,
            },
            {
                $Type : 'UI.DataField',
                Value : TermsOfPayment,
            },
        ],
    }
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
    }
);
