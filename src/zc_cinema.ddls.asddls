@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption tabla CINE'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_CINEMA
  provider contract transactional_query 
  as projection on ZI_CINEMA
{
    key CinemaUuid,
    Name,
    City,
    CrearedBy,
    CreatedAt,
    /* Associations */
    _halls : redirected to composition child ZC_CINEMAHALL
}
