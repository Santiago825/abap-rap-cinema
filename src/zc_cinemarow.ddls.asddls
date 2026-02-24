@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption tabla FILA'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZC_CINEMAROW as projection on ZI_CINEMAROW
{
    key RowUuid,
    ParentUuid,
    RowLetter,
    Cinema_uuid,
    /* Associations */
    _Hall: redirected to parent ZC_CINEMAHALL,
    _Seats : redirected to composition child ZC_CINEMASEAT,
    _Cinema : redirected to ZC_CINEMA
}
