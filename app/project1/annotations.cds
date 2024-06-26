using PurchaseOrderManagementService as service from '../../srv/purchase-order-management';

annotate service.PurchaseOrderHeaders with @(
  UI.FieldGroup #GeneratedGroup: {
    $Type: 'UI.FieldGroupType',
    Data : [
      {
        $Type: 'UI.DataField',
        Label: 'id',
        Value: id,
      },
      {
        $Type: 'UI.DataField',
        Label: 'company',
        Value: company,
      },
      {
        $Type: 'UI.DataField',
        Label: 'purchasingOrganization',
        Value: purchasingOrganization,
      },
      {
        $Type: 'UI.DataField',
        Label: 'purchasingGroup',
        Value: purchasingGroup,
      },
    ],
  },
  UI.Facets                    : [{
    $Type : 'UI.ReferenceFacet',
    ID    : 'GeneratedFacet1',
    Label : 'General Information',
    Target: '@UI.FieldGroup#GeneratedGroup',
  }, ],
  Capabilities                 : {
    FilterRestrictions: {FilterExpressionRestrictions: [{
      Property          : company,
      AllowedExpressions: 'SearchExpression'
    }]},
    FilterFunctions   : ['tolower', ],
  },
  UI                           : {HeaderInfo: {
    $Type         : 'UI.HeaderInfoType',
    TypeName      : 'action',
    TypeNamePlural: 'actions',
    Title         : {
      $Type: 'UI.DataField',
      Value: 'action',
    },
  }, },
  UI.LineItem                  : [
    {
      $Type: 'UI.DataField',
      Label: 'id',
      Value: id,
    },
    {
      $Type: 'UI.DataField',
      Label: 'company',
      Value: company,
    },
    {
      $Type: 'UI.DataField',
      Label: 'purchasingOrganization',
      Value: purchasingOrganization,
    },
    {
      $Type: 'UI.DataField',
      Label: 'purchasingGroup',
      Value: purchasingGroup,
    },
  ],
  UI.SelectionFields           : [
    id,
    company,
    purchasingOrganization,
    purchasingGroup,
  ],
) {
  company @(
    title: 'company',
    mandatory,
  );
  purchasingOrganization  @(
    title : 'purchasingOrganization',
    mandatory,
    assert: {range: [
      0,
      100
    ], }
  );
  purchasingGroup      @(
    title: 'purchasingGroup',
    mandatory,
  );
}
