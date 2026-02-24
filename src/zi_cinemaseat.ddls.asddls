@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE SILLA'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CINEMASEAT as select from zcinema_seat
    association to parent ZI_CINEMAROW as _Row on $projection.ParentUuid = _Row.RowUuid
    association [1..1] to ZI_CINEMA as _Cinema on $projection.Cinema_uuid = _Cinema.CinemaUuid
{
    key seat_uuid as SeatUuid,
    parent_uuid as ParentUuid,
    seat_number as SeatNumber,
    is_vip as IsVip,
    cinema_uuid as Cinema_uuid,
    _Row,
    _Cinema
}
