
using from './capsalesorderapp/annotations';
annotate SalesService.SalesOrderSet with @(
    UI.HeaderInfo : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Sales Order',
        TypeNamePlural : 'Sales Orders',
        Title : {
            $Type : 'UI.DataField',
            Value : SalesOrderID,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : description,
        },
        TypeImageUrl : 'REPLACE_WITH_TYPEIMAGE_PATH',
        ImageUrl : 'REPLACE_WITH_IMAGE_URL_PATH',
    }
);

