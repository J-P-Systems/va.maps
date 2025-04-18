Profile: Location
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id: Location
Title: "Location"
Description: "This StructureDefinition contains the maps for VistA file HOSPITAL LOCATION (44) to us-core-location."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|7.0.0"
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains va-stop-code 0..1 and va-credit-code 0..1
* identifier.value and identifier.system and name and alias and status and description and telecom.value and telecom.system and telecom.use and managingOrganization.display and physicalType.text and address.state and address.district and address.line and address.city and address.postalCode and address.country and address.type and type.coding.code and type.coding.system and mode and type[va-stop-code].coding.code and type[va-stop-code].coding.system and type[va-credit-code].coding.code and type[va-credit-code].coding.system MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/44"
* status from http://va.gov/fhir/ValueSet/LocationStatus
* status ^binding.description = "see mapping [VF_LocationStatus](ConceptMap-VF-LocationStatus.html)"
* telecom.system = #phone
* telecom.use = #work
* managingOrganization.display = "Veterans Administration"
* address.type = #physical
* type.coding.system = "http://va.gov/terminology/VistADefinedTerms/44-9"
* mode = #instance
* type[va-stop-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/44-8"
* type[va-credit-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/44-2503"

Mapping: source-to-Location
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Location
* identifier.value -> "755: source value based on HOSPITAL LOCATION - IEN (44-.001)"
* identifier.system -> "755-1: fixed value = http://va.gov/identifiers/$Sta3n/44" "generated from mapParameter line 1"
* name -> "756: source value based on HOSPITAL LOCATION - NAME (44-.01)"
* alias -> "1276: source value based on HOSPITAL LOCATION - ABBREVIATION (44-1)"
* alias -> "1277: source value based on HOSPITAL LOCATION - SYNONYM (44-13)"
* status -> "1278: terminologyMaps using VF_LocationStatus" "Derive somehow from 44-2505 INACTIVATE 44-2506 REACTIVATE  \nOr use VAST, not ViSTA."
* description -> "1279: source value based on HOSPITAL LOCATION - PATIENT FRIENDLY NAME (44-60)"
* telecom.value -> "1280: transform using concat (44-99,\" ext. \",44-99.1) on HOSPITAL LOCATION - TELEPHONE (44-99)"
* telecom.system -> "1280-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom.use -> "1280-2: fixed value = #work" "generated from mapParameter line 2"
* managingOrganization.display -> "1283: fixed value = \"Veterans Administration\""
* physicalType.text -> "1284: source value based on HOSPITAL LOCATION - PHYSICAL LOCATION (44-10)"
* address.state -> "1315: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STATE > STATE - ABBREVIATION (44-3 > 4-.02 > 5-1)"
* address.district -> "1316: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - DISTRICT (44-3 > 4-.03)"
* address.line -> "1317: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STREET ADDR. 1 (44-3 > 4-1.01)"
* address.line -> "1318: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - STREET ADDR. 2 (44-3 > 4-1.02)"
* address.city -> "1319: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - CITY (44-3 > 4-1.03)"
* address.postalCode -> "1320: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - ZIP (44-3 > 4-1.04)"
* address.country -> "1405: source value based on HOSPITAL LOCATION - INSTITUTION > INSTITUTION - COUNTRY > COUNTRY CODE - CODE (44-3 > 4-801 > 779.004-.01)"
* address.type -> "1322: fixed value = #physical when HOSPITAL LOCATION - INSTITUTION (44-3)"
* type.coding.code -> "1412: source value based on HOSPITAL LOCATION - SERVICE (44-9)"
* type.coding.system -> "1412-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-9" "generated from mapParameter line 1"
* mode -> "1806: fixed value = #instance" "Added 4/5/24 to match LH PHAPI"
* type[va-stop-code].coding.code -> "2039: source value based on HOSPITAL LOCATION - STOP CODE NUMBER (44-8)" "added stop codes to support BTSSS"
* type[va-stop-code].coding.system -> "2039-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-8" "generated from mapParameter line 1"
* type[va-credit-code].coding.code -> "2040: source value based on HOSPITAL LOCATION - CREDIT STOP CODE (44-2503)" "added stop codes to support BTSSS"
* type[va-credit-code].coding.system -> "2040-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-2503" "generated from mapParameter line 1"

Mapping: cdw-to-Location
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Location
* name -> "Dim.Location.LocationName,Dim.Location.LocationName"
* alias -> "Dim.Location.LocationAbbreviation,Dim.Location.LocationAbbreviation"
* description -> "Dim.Location.PatientFriendlyLocationName,Dim.Location.PatientFriendlyLocationName"
* telecom.value -> "Dim.Location.PhoneNumber,Dim.Location.PhoneNumber"
* physicalType.text -> "Dim.Location.PhysicalLocation,Dim.Location.PhysicalLocation"
* address.state -> "Dim.Location.InstitutionIEN"
* address.district -> "Dim.Location.InstitutionIEN\nDim.Institution.MedicalDistrict,Dim.Institution.MedicalDistrict,NDim.MVIInstitution.MedicalDistrict"
* address.line -> "Dim.Location.InstitutionIEN\nDim.Institution.StreetAddress1,Dim.Institution.StreetAddress1,Dim.InstitutionTimeZone.StreetAddress1,NDim.MVIInstitution.StreetAddress1"
* address.line -> "Dim.Location.InstitutionIEN\nDim.Institution.StreetAddress2,Dim.Institution.StreetAddress2,Dim.InstitutionTimeZone.StreetAddress2,NDim.MVIInstitution.StreetAddress2"
* address.city -> "Dim.Location.InstitutionIEN\nDim.Institution.City,Dim.Institution.City,Dim.InstitutionTimeZone.City,NDim.MVIInstitution.City"
* address.postalCode -> "Dim.Location.InstitutionIEN\nDim.Institution.Zip,Dim.Institution.Zip,Dim.InstitutionTimeZone.Zip,NDim.MVIInstitution.Zip"
* address.country -> "Dim.Location.InstitutionIEN"
* address.type -> "Dim.Location.InstitutionIEN"
* type.coding.code -> "Dim.Location.MedicalService,Dim.Location.MedicalService"
* type[va-stop-code].coding.code -> "Dim.Location.PrimaryStopCodeIEN"
* type[va-credit-code].coding.code -> "Dim.Location.SecondaryStopCodeIEN"