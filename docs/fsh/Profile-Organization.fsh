Profile: Organization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id: Organization
Title: "Organization"
Description: "This StructureDefinition contains the maps for VistA file INSTITUTION (4) to us-core-organization."
* ^status = #active
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains va-physical 0..1 and va-postal 0..1
* name and identifier[NPI].value and identifier[NPI].system and active and type and alias and address[va-physical].type and address[va-physical].line and address[va-physical].city and address[va-physical].district and address[va-physical].state and address[va-physical].postalCode and address[va-physical].country and contact.name.text and contact.telecom.value and contact.telecom.system and address[va-postal].type and address[va-postal].line and address[va-postal].city and address[va-postal].state and address[va-postal].postalCode and address[va-postal].country MS
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* active = true
* type = http://terminology.hl7.org/CodeSystem/organization-type#prov
* address[va-physical].type = #physical
* contact.telecom.system = #phone
* address[va-postal].type = #postal

Mapping: source-to-Organization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Organization
* name -> "1251: source value based on INSTITUTION - NAME (4-.01)"
* identifier[NPI].value -> "1252: source value based on INSTITUTION - NPI (4-41.99)"
* identifier[NPI].system -> "1252-1: fixed value = http://hl7.org/fhir/sid/us-npi" "generated from mapParameter line 1"
* active -> "1253: fixed value = true"
* type -> "1254: fixed value = http://terminology.hl7.org/CodeSystem/organization-type#prov"
* alias -> "1255: source value based on INSTITUTION - SHORT NAME (4-.05)"
* address[va-physical].type -> "1257: fixed value = #physical"
* address[va-physical].line -> "1258: source value based on INSTITUTION - STREET ADDR. 1 (4-1.01)"
* address[va-physical].line -> "1259: source value based on INSTITUTION - STREET ADDR. 2 (4-1.02)"
* address[va-physical].city -> "1260: source value based on INSTITUTION - CITY (4-1.03)"
* address[va-physical].district -> "1261: source value based on INSTITUTION - DISTRICT (4-.03)"
* address[va-physical].state -> "1262: source value based on INSTITUTION - STATE > STATE - ABBREVIATION (4-.02 > 5-1)"
* address[va-physical].postalCode -> "1263: source value based on INSTITUTION - ZIP (4-1.04)"
* address[va-physical].country -> "1264: source value based on INSTITUTION - COUNTRY > COUNTRY CODE - CODE (4-801 > 779.004-.01)"
* contact.name.text -> "1265: source value based on INSTITUTION - CONTACT > CONTACT - CONTACT (4-4 > 4.03-.01)"
* contact.telecom.value -> "1266: source value based on INSTITUTION - CONTACT > CONTACT - PHONE # (4-4 > 4.03-.03)"
* contact.telecom.system -> "1266-1: fixed value = #phone" "generated from mapParameter line 1"
* address[va-postal].type -> "1268: fixed value = #postal"
* address[va-postal].line -> "1269: source value based on INSTITUTION - ST. ADDR. 1 (MAILING) (4-4.01)"
* address[va-postal].line -> "1270: source value based on INSTITUTION - ST. ADDR. 2 (MAILING) (4-4.02)"
* address[va-postal].city -> "1271: source value based on INSTITUTION - CITY (MAILING) (4-4.03)"
* address[va-postal].state -> "1272: source value based on INSTITUTION - STATE (MAILING) (4-4.04)"
* address[va-postal].postalCode -> "1273: source value based on INSTITUTION - ZIP (MAILING) (4-4.05)"
* address[va-postal].country -> "1274: source value based on INSTITUTION - COUNTRY > COUNTRY CODE - CODE (4-801 > 779.004-.01)" "Assume country is same as for physical\nOrganization.address.where(type=\"postal\")"
* telecom -> "1786: target not supported" "Institution does not have a root level phone number"

Mapping: cdw-to-Organization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Organization
* name -> "Dim.AutoDiscontinuedRule.InstitutionName,Dim.Institution.InstitutionName,Dim.Institution.InstitutionName,Dim.InstitutionTimeZone.Institution,Dim.RequestService.IFCRoutingInstitution,NDim.MVIInstitution.InstitutionName"
* identifier[NPI].value -> "Dim.Institution.NPI,Dim.Institution.NPI,Dim.InstitutionTimeZone.NPI,NDim.MVIInstitution.NPI"
* alias -> "Dim.Institution.InstitutionShortName,Dim.Institution.InstitutionShortName,Dim.InstitutionTimeZone.InstitutionShortName,NDim.MVIInstitution.InstitutionShortName"
* address[va-physical].line -> "Dim.Institution.StreetAddress1,Dim.Institution.StreetAddress1,Dim.InstitutionTimeZone.StreetAddress1,NDim.MVIInstitution.StreetAddress1"
* address[va-physical].line -> "Dim.Institution.StreetAddress2,Dim.Institution.StreetAddress2,Dim.InstitutionTimeZone.StreetAddress2,NDim.MVIInstitution.StreetAddress2"
* address[va-physical].city -> "Dim.Institution.City,Dim.Institution.City,Dim.InstitutionTimeZone.City,NDim.MVIInstitution.City"
* address[va-physical].district -> "Dim.Institution.MedicalDistrict,Dim.Institution.MedicalDistrict,NDim.MVIInstitution.MedicalDistrict"
* address[va-physical].state -> "Dim.Institution.StateIEN,Dim.InstitutionTimeZone.StateIEN,Dim.InstitutionTimeZone.StateSID,NDim.MVIInstitution.MVIStateIEN\nDim.State.StateAbbrev,Dim.State.StateAbbrev,NDim.MVIState.StateAbbrev"
* address[va-physical].postalCode -> "Dim.Institution.Zip,Dim.Institution.Zip,Dim.InstitutionTimeZone.Zip,NDim.MVIInstitution.Zip"
* address[va-physical].country -> "Dim.Country.CountryCode,NDim.MVICountryCode.CountryCode"
* address[va-postal].line -> "Dim.InstitutionTimeZone.MailingStreetAddress1"
* address[va-postal].line -> "Dim.InstitutionTimeZone.MailingStreetAddress2"
* address[va-postal].city -> "Dim.InstitutionTimeZone.MailingCity"
* address[va-postal].state -> "Dim.InstitutionTimeZone.MailingStateIEN,Dim.InstitutionTimeZone.MailingStateSID"
* address[va-postal].postalCode -> "Dim.InstitutionTimeZone.MailingZip"
* address[va-postal].country -> "Dim.Country.CountryCode,NDim.MVICountryCode.CountryCode"