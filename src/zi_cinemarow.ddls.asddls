@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE FILA'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CINEMAROW as select from zcinema_row
    association to parent ZI_CINEMAHALL as _Hall on $projection.ParentUuid =_Hall.HallUuid
    composition [0..*] of ZI_CINEMASEAT as _Seats
    association [1..1] to ZI_CINEMA as _Cinema on $projection.Cinema_uuid = _Cinema.CinemaUuid
    
    
{
    key row_uuid as RowUuid,
    parent_uuid as ParentUuid,
    row_letter as RowLetter,
    
    cinema_uuid as Cinema_uuid,
    _Hall,
    _Seats,
    _Cinema
}
