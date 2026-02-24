@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption tabla SILLA'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define view entity ZC_CINEMASEAT as projection on ZI_CINEMASEAT
{
    key SeatUuid,
    ParentUuid,
    SeatNumber,
    IsVip,
     Cinema_uuid,
    /* Associations */
    _Row : redirected to parent ZC_CINEMAROW,
    _Cinema: redirected to ZC_CINEMA
}
