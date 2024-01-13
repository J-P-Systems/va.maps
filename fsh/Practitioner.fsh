Profile: Practitioner
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Id: Practitioner
Title: "Practitioner"
Description: "This StructureDefinition contains the maps for VistA file NEW PERSON (#200) to us-core-practitioner"
* ^status = #draft
* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains home 0..1 and temp 0..1
* address[home].country.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* address[temp].country.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* identifier[NPI].value and identifier.value and identifier[NPI].period.start and name.text and telecom.value and birthDate and qualification.code.text and address[home].line and address[home].city and address[home].state and address[home].postalCode and address[home].country and address[home].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and address[temp].line and address[temp].city and address[temp].state and address[temp].postalCode and address[temp].country and address[temp].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and address[temp].period.start and address[temp].period.end MS
* address[home].country from http://va.gov/fhir/ValueSet/VSVFPractitionerCountry
* address[temp].country from http://va.gov/fhir/ValueSet/VSVFPractitionerCountry

Mapping: vista-to-Practitioner
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Practitioner
* identifier[NPI].value -> "376: source value from NEW PERSON - NPI (#200-41.99)" "changed .code from PRN to NPI"
* identifier.value -> "377: source value from NEW PERSON - DEA# (#200-53.2)" "changed .code from PRN to DEA"
* identifier.value -> "378: source value from NEW PERSON - VA# (#200-53.3)" "changed .code from PRN to VA_Number. Value set is extensible"
* identifier.value -> "379: source value from NEW PERSON - VPID (#200-9000)" "changed .code from PRN to VPID. Value set is extensible"
* identifier[NPI].period.start -> "380: source value from NEW PERSON - EFFECTIVE DATE/TIME (#200-42)" "MvdZ QA 6-jul-2023"
* name.text -> "382: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - (#200-10.1 > 20 -)" "Change map to better align with US Core Must Support (last name only)\nMvdZ QA 6-jul-2023"
* telecom.value -> "383: source value from NEW PERSON - PHONE (HOME) (#200-.131)"
* birthDate -> "394: source value from NEW PERSON - DOB (#200-5)"
* qualification.code.text -> "395: source value from NEW PERSON - DEGREE (#200-10.6)" "There is also 12.1 CURRENT DEGREE LEVEL; not in cdw"
* identifier.value -> "415: source value from NEW PERSON - IEN (#200-.001)"
* address[home].line -> "396: source value from NEW PERSON - STREET ADDRESS 1 (#200-.111)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].line -> "397: source value from NEW PERSON - STREET ADDRESS 2 (#200-.112)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].line -> "398: source value from NEW PERSON - STREET ADDRESS 3 (#200-.113)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].city -> "399: source value from NEW PERSON - CITY (#200-.114)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].state -> "400: source value from NEW PERSON - STATE (#200-.115)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].postalCode -> "401: source value from NEW PERSON - ZIP CODE (#200-.116)" "Changed use case and FHIR Path to Practitioner to align with US Core\nMvdZ QA 6-jul-2023"
* address[home].country -> "1530: terminologyMaps using VF_PractitionerCountry on NEW PERSON - STATE (#200-.115) case not NULL" "Added country to support Inferno testing (where country is required)\nMvdZ QA 6-jul-2023"
* address[home].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1531: fixed value = unknown when NEW PERSON - STATE (#200-.115) case NULL" "If country is not known (i.e. \"Europe\"), use the Data Absent Reason field with \"unknown\"\n\nAdded country to support Inferno testing (where country is required)\nMvdZ QA 6-jul-2023"
* address[temp].line -> "402: source value from NEW PERSON - TEMPORARY ADDRESS 1 (#200-.1211)" "Changed use case and FHIR Path to Practitioner to fix mapping and align with US Core\nMvdZ QA 6-jul-2023"
* address[temp].line -> "403: source value from NEW PERSON - TEMPORARY ADDRESS 2 (#200-.1212)" "MvdZ QA 6-jul-2023"
* address[temp].line -> "404: source value from NEW PERSON - TEMPORARY ADDRESS 3 (#200-.1213)" "MvdZ QA 6-jul-2023"
* address[temp].city -> "405: source value from NEW PERSON - TEMPORARY CITY (#200-.1214)" "MvdZ QA 6-jul-2023"
* address[temp].state -> "406: source value from NEW PERSON - TEMPORARY STATE (#200-.1215)" "MvdZ QA 6-jul-2023"
* address[temp].postalCode -> "407: source value from NEW PERSON - TEMPORARY ZIP CODE (#200-.1216)" "MvdZ QA 6-jul-2023"
* address[temp].country -> "1532: terminologyMaps using VF_PractitionerCountry on NEW PERSON - STATE (#200-.1215) case not NULL" "Added country to support Inferno testing (where country is required)\nMvdZ QA 6-jul-2023"
* address[temp].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1533: fixed value = unknown when NEW PERSON - STATE (#200-.1215) case NULL" "If country is not known (i.e. \"Europe\"), use the Data Absent Reason field with \"unknown\"\n\nAdded country to support Inferno testing (where country is required)\nMvdZ QA 6-jul-2023"
* address[temp].period.start -> "408: source value from NEW PERSON - START DATE OF TEMP ADDRES (#200-.1217)" "MvdZ QA 6-jul-2023"
* address[temp].period.end -> "409: source value from NEW PERSON - END DATE OF TEMP ADDRESS (#200-.1218)" "MvdZ QA 6-jul-2023"

Mapping: cdw-to-Practitioner
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Practitioner
* identifier[NPI].value -> "SStaff.PrescribingProvider.NPI\nSStaff.SStaff.NPI"
* identifier.value -> "SStaff.PrescribingProvider.DEA\nSStaff.SStaff.DEA"
* identifier.value -> "SStaff.PrescribingProvider.VANumber\nSStaff.SStaff.VANumber"
* identifier.value -> "SStaff.PrescribingProvider.VPID"
* telecom.value -> "SStaff.PrescribingProvider.HomePhone\nSStaff.SStaff.HomePhone"
* birthDate -> "SStaff.SStaff.DateOfBirth\nStaff.Staff.DateofBirth"
* address[home].line -> "SStaff.PrescribingProvider.StreetAddress1\nSStaff.SStaff.StreetAddress1"
* address[home].line -> "SStaff.PrescribingProvider.StreetAddress2\nSStaff.SStaff.StreetAddress2"
* address[home].line -> "SStaff.PrescribingProvider.StreetAddress3\nSStaff.SStaff.StreetAddress3"
* address[home].city -> "SStaff.PrescribingProvider.City\nSStaff.SStaff.City"
* address[home].state -> "SStaff.PrescribingProvider.StateIEN\nSStaff.SStaff.StateName"
* address[home].postalCode -> "SStaff.PrescribingProvider.ZipCode\nSStaff.SStaff.ZipCode"
* address[home].country -> "SStaff.PrescribingProvider.StateIEN\nSStaff.SStaff.StateName"
* address[home].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "SStaff.PrescribingProvider.StateIEN\nSStaff.SStaff.StateName"
* address[temp].line -> "SStaff.SStaff.TemporaryAddress1"
* address[temp].line -> "SStaff.SStaff.TemporaryAddress2"
* address[temp].line -> "SStaff.SStaff.TemporaryAddress3"
* address[temp].city -> "SStaff.SStaff.TemporaryCity"
* address[temp].state -> "SStaff.SStaff.TemporaryStateName"
* address[temp].postalCode -> "SStaff.SStaff.TemporaryZipCode"
* address[temp].country -> "SStaff.SStaff.TemporaryStateName"
* address[temp].country.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "SStaff.SStaff.TemporaryStateName"
* address[temp].period.start -> "SStaff.SStaff.TemporaryAddressStartDate"
* address[temp].period.end -> "SStaff.SStaff.TemporaryAddressEndDate"