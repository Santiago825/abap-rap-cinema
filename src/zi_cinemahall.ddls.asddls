@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE SALA'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CINEMAHALL as select from ZCINEMA_HALL
    association to parent ZI_CINEMA as _Cinema on $projection.ParentUuid = _Cinema.cinemaUUID
    composition [0..*] of ZI_CINEMAROW AS _Row
{
    key hall_uuid as HallUuid,
    parent_uuid as ParentUuid,
    hall_number as HallNumber,
    hall_type as HallType,
    
    _Cinema,
    _Row
}
