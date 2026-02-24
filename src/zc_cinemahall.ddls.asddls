@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption tabla SALA'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZC_CINEMAHALL
  as projection on ZI_CINEMAHALL
{
    key HallUuid,
    ParentUuid,
    HallNumber,
    HallType,
    /* Associations */
    _Cinema : redirected to parent ZC_CINEMA,
    _Row : redirected to composition child ZC_CINEMAROW
}
