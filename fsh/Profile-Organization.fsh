Profile: Organization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id: Organization
Title: "Organization"
Description: "This StructureDefinition contains the maps for VistA file INSTITUTION (4) to us-core-organization"
* ^status = #draft
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains physical 0..1 and postal 0..1
* name and identifier[NPI].value and active and type and alias and address[physical].type and address[physical].line and address[physical].city and address[physical].district and address[physical].state and address[physical].postalCode and address[physical].country and contact.name.text and contact.telecom.value and address[postal].type and address[postal].line and address[postal].city and address[postal].state and address[postal].postalCode and address[postal].country MS
* active = true
* type = #prov
* address[physical].type = #physical
* address[postal].type = #postal

Mapping: vista-to-Organization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Organization
* name -> "1251: source value from INSTITUTION - NAME (4-.01)"
* identifier[NPI].value -> "1252: source value from INSTITUTION - NPI (4-41.99)" "Is mapCase used to indicate slice?"
* active -> "1253: fixed value = true"
* type -> "1254: fixed value = #prov"
* alias -> "1255: source value from INSTITUTION - SHORT NAME (4-.05)"
* address[physical].type -> "1257: fixed value = #physical"
* address[physical].line -> "1258: source value from INSTITUTION - STREET ADDR. 1 (4-1.01)"
* address[physical].line -> "1259: source value from INSTITUTION - STREET ADDR. 2 (4-1.02)"
* address[physical].city -> "1260: source value from INSTITUTION - CITY (4-1.03)"
* address[physical].district -> "1261: source value from INSTITUTION - DISTRICT (4-.03)"
* address[physical].state -> "1262: source value from INSTITUTION - STATE > STATE - ABBREVIATION (4-.02 > 5-1)"
* address[physical].postalCode -> "1263: source value from INSTITUTION - ZIP (4-1.04)"
* address[physical].country -> "1264: source value from INSTITUTION - COUNTRY > COUNTRY CODE - CODE (4-801 > 779.004-.01)"
* contact.name.text -> "1265: source value from INSTITUTION - CONTACT > CONTACT - CONTACT (4-4 > 4.03-.01)"
* contact.telecom.value -> "1266: source value from INSTITUTION - CONTACT > CONTACT - PHONE # (4-4 > 4.03-.03)"
* address[postal].type -> "1268: fixed value = #postal"
* address[postal].line -> "1269: source value from INSTITUTION - ST. ADDR. 1 (MAILING) (4-4.01)"
* address[postal].line -> "1270: source value from INSTITUTION - ST. ADDR. 2 (MAILING) (4-4.02)"
* address[postal].city -> "1271: source value from INSTITUTION - CITY (MAILING) (4-4.03)"
* address[postal].state -> "1272: source value from INSTITUTION - STATE (MAILING) (4-4.04)"
* address[postal].postalCode -> "1273: source value from INSTITUTION - ZIP (MAILING) (4-4.05)"
* address[postal].country -> "1274: source value from INSTITUTION - COUNTRY > COUNTRY CODE - CODE (4-801 > 779.004-.01)" "Assume country is same as for physical\nOrganization.address.where(type=\"postal\")"
* telecom -> "1786: target not supported" "Institution does not have a root level phone number"

Mapping: cdw-to-Organization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Organization
* name -> "Dim.AutoDiscontinuedRule.InstitutionName,Dim.Institution.InstitutionName,Dim.RequestService.IFCRoutingInstitution"
* identifier[NPI].value -> "Dim.Institution.NPI"
* alias -> "Dim.Institution.InstitutionShortName"
* address[physical].line -> "Dim.Institution.StreetAddress1"
* address[physical].line -> "Dim.Institution.StreetAddress2"
* address[physical].city -> "Dim.Institution.City"
* address[physical].district -> "Dim.Institution.MedicalDistrict"
* address[physical].state -> "Dim.State.StateAbbrev,Dim.State.StateAbbrev"
* address[physical].postalCode -> "Dim.Institution.Zip"
* address[physical].country -> "Dim.Country.CountryCode"
* address[postal].country -> "Dim.Country.CountryCode"