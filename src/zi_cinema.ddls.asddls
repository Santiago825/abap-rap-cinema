@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'INTERFACE CINE'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CINEMA as select from ZCINEMA_H
composition [0..*] of ZI_CINEMAHALL as _Halls
{
    key cinema_uuid as CinemaUuid,
    name as Name,
    city as City,
    creared_by as CrearedBy,
    created_at as CreatedAt,
    _halls // Make association public
}
