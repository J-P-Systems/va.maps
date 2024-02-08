Profile: Location
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id: Location
Title: "Location"
Description: "This StructureDefinition contains the maps for VistA file HOSPITAL LOCATION (#44) to us-core-location"
* ^status = #draft
* identifier.value and name and alias and status and description and telecom.value and managingOrganization.display and physicalType.text and address.state and address.district and address.line and address.city and address.postalCode and address.country and address.type and address and address.use and type.text MS
* status from http://va.gov/fhir/ValueSet/VSVFLocationStatus
* type.text from http://va.gov/fhir/ValueSet/VSVFLocationStatus

Mapping: vista-to-Location
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Location
* identifier.value -> "755: source value from HOSPITAL LOCATION - IEN (#44-.001)" "MvdZ QA 6-jul-2023"
* name -> "756: source value from HOSPITAL LOCATION - NAME (#44-.01)"
* alias -> "1276: source value from HOSPITAL LOCATION - ABBREVIATION (#44-1)" "MvdZ QA 6-jul-2023"
* alias -> "1277: source value from HOSPITAL LOCATION - SYNONYM (#44-13)" "MvdZ QA 6-jul-2023"
* status -> "1278: terminologyMaps using VF_LocationStatus" "Derive somehow from 44-2505 INACTIVATE 44-2506 REACTIVATE  \nOr use VAST, not ViSTA.\nMvdZ QA 6-jul-2023"
* description -> "1279: source value from HOSPITAL LOCATION - PATIENT FRIENDLY NAME (#44-60)"
* telecom.value -> "1280: transform using concat (44-99,\" ext. \",44-99.1) on HOSPITAL LOCATION - TELEPHONE (#44-99)" "MvdZ QA 6-jul-2023"
* managingOrganization.display -> "1283: fixed value = Veterans Administration"
* physicalType.text -> "1284: source value from HOSPITAL LOCATION - PHYSICAL LOCATION (#44-10)"
* address.state -> "1315: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STATE > STATE - ABBREVIATION (#44-3 > 4-.02 > 5-1)"
* address.district -> "1316: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - DISTRICT (#44-3 > 4-.03)"
* address.line -> "1317: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STREET ADDR. 1 (#44-3 > 4-1.01)"
* address.line -> "1318: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STREET ADDR. 2 (#44-3 > 4-1.02)"
* address.city -> "1319: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - CITY (#44-3 > 4-1.03)"
* address.postalCode -> "1320: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - ZIP (#44-3 > 4-1.04)"
* address.country -> "1405: source value from HOSPITAL LOCATION - INSTITUTION > INSTITUTION - COUNTRY > COUNTRY - CODE (#44-3 > 4-801 > 779.004-0.1)"
* address.type -> "1322: fixed value = #physical when HOSPITAL LOCATION - INSTITUTION (#44-3)"
* address.line -> "1323: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.line -> "1324: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.city -> "1325: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address -> "1326: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.postalCode -> "1327: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.country -> "1406: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.type -> "1328: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* address.use -> "1407: source not supported case mailing slice" "source not supported because Location has only physical address and supports only 1 address"
* type.text -> "1412: terminologyMaps using VF_LocationStatus on HOSPITAL LOCATION - SERVICE (#44-9)" "could map Medical Service text to FHIR type valueset, e.g.\n\"NEUROLOGY\" to \"NEUR Neurology clinic\"\nOr is this combination of TREATEMENT SPECIALTY (9.5) and SERVICE/SECTION? and STOP CODE?"

Mapping: cdw-to-Location
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Location
* name -> "Dim.Location.LocationName"
* alias -> "Dim.Location.LocationAbbreviation"
* description -> "Dim.Location.PatientFriendlyLocationName"
* telecom.value -> "Dim.Location.PhoneNumber"
* physicalType.text -> "Dim.Location.PhysicalLocation"
* address.district -> "Dim.Institution.MedicalDistrict"
* address.line -> "Dim.Institution.StreetAddress1"
* address.line -> "Dim.Institution.StreetAddress2"
* address.city -> "Dim.Institution.City"
* address.postalCode -> "Dim.Institution.Zip"
* type.text -> "Dim.Location.MedicalService"