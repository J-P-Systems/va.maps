Profile: Organization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
Id: Organization
Title: "Organization"
Description: "This StructureDefinition contains the maps for VistA INSTITUTION (file 4) to FHIR Organization"
* ^status = #draft
* active obeys inv-23
* type obeys inv-24
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains home 0..1 and temp 0..1 and physical 0..1 and postal 0..1
* address[physical].type obeys inv-25
* address[postal].type obeys inv-26

Invariant: inv-23
Description: "1253: fixed value = true"
Severity: #warning

Invariant: inv-24
Description: "1254: fixed value = prov"
Severity: #warning

Invariant: inv-25
Description: "1257: fixed value = #physical"
Severity: #warning

Invariant: inv-26
Description: "1268: fixed value = #postal"
Severity: #warning

Mapping: vista-to-Organization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Organization
* name -> "1251: source value from INSTITUTION - NAME (#4-.01)"
* identifier.value -> "1252: source value from INSTITUTION - NPI (#4-41.99) case NPI slice" "Is mapCase used to indicate slice?"
* active -> "1253: fixed value = true" "MvdZ QA 20-jun-2023"
* type -> "1254: fixed value = prov"
* alias -> "1255: source value from INSTITUTION - SHORT NAME (#4-.05)"
* address[physical].type -> "1257: fixed value = #physical"
* address[physical].line -> "1258: source value from INSTITUTION - STREET ADDR. 1 (#4-1.01)"
* address[physical].line -> "1259: source value from INSTITUTION - STREET ADDR. 2 (#4-1.02)"
* address[physical].city -> "1260: source value from INSTITUTION - CITY (#4-1.03)"
* address[physical].district -> "1261: source value from INSTITUTION - DISTRICT (#4-.03)" "MvdZ QA 20-jun-2023"
* address[physical].state -> "1262: source value from INSTITUTION - STATE > STATE - ABBREVIATION (#4-.02 > 5-1)"
* address[physical].postalCode -> "1263: source value from INSTITUTION - ZIP (#4-1.04)"
* address[physical].country -> "1264: source value from INSTITUTION - COUNTRY > COUNTRY - CODE (#4-801 > 779.004-.01)"
* contact.name.text -> "1265: source value from INSTITUTION - CONTACT > CONTACT – NAME (#4-4 > 4.03-.01)" "MvdZ QA 20-jun-2023"
* contact.telecom.value -> "1266: source value from INSTITUTION - CONTACT > CONTACT – PHONE # (#4-4 > 4.03-.03)" "MvdZ QA 20-jun-2023"
* address[postal].type -> "1268: fixed value = #postal"
* address[postal].line -> "1269: source value from INSTITUTION - ST. ADDR. 1 (MAILING) (#4-4.01)"
* address[postal].line -> "1270: source value from INSTITUTION - ST. ADDR. 2 (MAILING) (#4-4.02)"
* address[postal].city -> "1271: source value from INSTITUTION - CITY (MAILING) (#4-4.03)"
* address[postal].state -> "1272: source value from INSTITUTION - STATE (MAILING) (#4-4.04)"
* address[postal].postalCode -> "1273: source value from INSTITUTION - ZIP (MAILING) (#4-4.05)"
* address[postal].country -> "1274: source value from INSTITUTION - COUNTRY > COUNTRY - CODE (#4-801 > 779.004-.01)" "Assume country is same as for physical\nOrganization.address.where(type=\"postal\")"

Mapping: cdw-to-Organization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Organization
* name -> "Dim.AutoDiscontinuedRule.InstitutionName\nDim.Institution.InstitutionName\nDim.RequestService.IFCRoutingInstitution"
* identifier.value -> "Dim.Institution.NPI"
* alias -> "Dim.Institution.InstitutionShortName"
* address[physical].line -> "Dim.Institution.StreetAddress1"
* address[physical].line -> "Dim.Institution.StreetAddress2"
* address[physical].city -> "Dim.Institution.City"
* address[physical].district -> "Dim.Institution.MedicalDistrict"
* address[physical].state -> "Dim.State.StateAbbrev\nDim.State.StateAbbrev"
* address[physical].postalCode -> "Dim.Institution.Zip"
* address[physical].country -> "Dim.Country.CountryCode"
* address[postal].country -> "Dim.Country.CountryCode"