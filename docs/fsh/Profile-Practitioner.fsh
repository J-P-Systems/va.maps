Profile: Practitioner
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Id: Practitioner
Title: "Practitioner"
Description: "This StructureDefinition contains the maps for VistA file NEW PERSON (200) to us-core-practitioner"
* ^status = #draft
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-DEA 0..1 and va-nr 0..1 and va-VPID 0..1 and va-IEN 0..1
* identifier[NPI].value and identifier[NPI].system and identifier[NPI].type and identifier[va-DEA].value and identifier[va-DEA].system and identifier[va-DEA].type and identifier[va-nr].value and identifier[va-nr].system and identifier[va-nr].type and identifier[va-VPID].value and identifier[va-VPID].system and identifier[va-VPID].type and identifier[NPI].period.start and name.text and name.family and name.given and name.prefix and name.suffix and telecom.value and telecom.system and telecom.use and birthDate and qualification.code.text and identifier[va-IEN].value and identifier[va-IEN].system and identifier[va-IEN].type and gender MS
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].type = http://terminology.hl7.org/CodeSystem/v2-0203#NPI
* identifier[va-DEA].system = "urn:oid:2.16.840.1.113883.4.814"
* identifier[va-DEA].type = http://terminology.hl7.org/CodeSystem/v2-0203#DEA
* identifier[va-nr].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[va-nr].type = http://va.gov/terminology/vistaDefinedTerms/200-53.3#VA_Number
* identifier[va-VPID].system = "urn:oid:2.16.840.1.113883.4.349"
* identifier[va-VPID].type = http://va.gov/terminology/vistaDefinedTerms/200-9000#VPID
* telecom.system = #phone
* telecom.use = #home
* identifier[va-IEN].system = "http://va.gov/identifiers/$Sta3n/200"
* identifier[va-IEN].type = http://va.gov/terminology/vistaDefinedTerms/200-.001#IEN
* gender from http://va.gov/fhir/ValueSet/VSVFproviderGender

Mapping: source-to-Practitioner
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Practitioner
* identifier[NPI].value -> "376: source value from NEW PERSON - NPI (200-41.99)" "changed .code from PRN to NPI"
* identifier[NPI].system -> "376-1: fixed value = http://hl7.org/fhir/sid/us-npi" "from mapParameter 1"
* identifier[NPI].type -> "376-2: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#NPI" "from mapParameter 2"
* identifier[va-DEA].value -> "377: source value from NEW PERSON - DEA# (200-53.2)" "changed .code from PRN to DEA"
* identifier[va-DEA].system -> "377-1: fixed value = urn:oid:2.16.840.1.113883.4.814" "from mapParameter 1"
* identifier[va-DEA].type -> "377-2: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#DEA" "from mapParameter 2"
* identifier[va-nr].value -> "378: source value from NEW PERSON - VA# (200-53.3)" "changed .code from PRN to VA_Number. Value set is extensible"
* identifier[va-nr].system -> "378-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier[va-nr].type -> "378-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/200-53.3#VA_Number" "from mapParameter 2"
* identifier[va-VPID].value -> "379: source value from NEW PERSON - VPID (200-9000)" "changed .code from PRN to VPID. Value set is extensible"
* identifier[va-VPID].system -> "379-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier[va-VPID].type -> "379-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/200-9000#VPID" "from mapParameter 2"
* identifier[NPI].period.start -> "380: source value from NEW PERSON - EFFECTIVE DATE/TIME (200-42)"
* name.text -> "382: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - (200-10.1 > 20-)" "Change map to better align with US Core Must Support (last name only)"
* name.family -> "382-1: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - FAMILY (LAST) NAME (200-10.1 > 20-1)" "from mapParameter 1"
* name.given -> "382-2: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - GIVEN (FIRST) NAME (200-10.1 > 20-2)" "from mapParameter 2"
* name.prefix -> "382-3: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - PREFIX (200-10.1 > 20-4)" "from mapParameter 3"
* name.suffix -> "382-4: source value from NEW PERSON - NAME COMPONENTS > NAME COMPONENTS - SUFFIX (200-10.1 > 20-5)" "from mapParameter 4"
* telecom.value -> "383: source value from NEW PERSON - PHONE (HOME) (200-.131)"
* telecom.system -> "383-1: fixed value = #phone" "from mapParameter 1"
* telecom.use -> "383-2: fixed value = #home" "from mapParameter 2"
* birthDate -> "394: source value from NEW PERSON - DOB (200-5)"
* qualification.code.text -> "395: source value from NEW PERSON - DEGREE (200-10.6)" "There is also 12.1 CURRENT DEGREE LEVEL; not in cdw"
* identifier[va-IEN].value -> "415: source value from NEW PERSON - IEN (200-.001)"
* identifier[va-IEN].system -> "415-1: fixed value = http://va.gov/identifiers/$Sta3n/200" "from mapParameter 1"
* identifier[va-IEN].type -> "415-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/200-.001#IEN" "from mapParameter 2"
* address -> "2012: target not supported" "What was the reason to inactivate these maps?"
* gender -> "1790: terminologyMaps using VF_providerGender on NEW PERSON - SEX (200-4)" "Added per LH request to help support deduplication fingerprints"

Mapping: cdw-to-Practitioner
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Practitioner
* identifier[NPI].value -> "SStaff.PrescribingProvider.NPI,SStaff.SStaff.NPI"
* identifier[va-DEA].value -> "SStaff.PrescribingProvider.DEA,SStaff.SStaff.DEA"
* identifier[va-nr].value -> "SStaff.PrescribingProvider.VANumber,SStaff.SStaff.VANumber"
* identifier[va-VPID].value -> "SStaff.PrescribingProvider.VPID,SStaff.SStaff.VAPersonIdentificationNumber"
* name.text -> "SStaff.SStaff.FirstName,SStaff.SStaff.LastName,SStaff.SStaff.MiddleName,SStaff.SStaff.StaffNamePrefix,SStaff.SStaff.StaffNameSuffix"
* name.family -> "SStaff.SStaff.FirstName,SStaff.SStaff.LastName,SStaff.SStaff.MiddleName,SStaff.SStaff.StaffNamePrefix,SStaff.SStaff.StaffNameSuffix"
* name.given -> "SStaff.SStaff.FirstName,SStaff.SStaff.LastName,SStaff.SStaff.MiddleName,SStaff.SStaff.StaffNamePrefix,SStaff.SStaff.StaffNameSuffix"
* name.prefix -> "SStaff.SStaff.FirstName,SStaff.SStaff.LastName,SStaff.SStaff.MiddleName,SStaff.SStaff.StaffNamePrefix,SStaff.SStaff.StaffNameSuffix"
* name.suffix -> "SStaff.SStaff.FirstName,SStaff.SStaff.LastName,SStaff.SStaff.MiddleName,SStaff.SStaff.StaffNamePrefix,SStaff.SStaff.StaffNameSuffix"
* telecom.value -> "SStaff.PrescribingProvider.HomePhone,SStaff.SStaff.HomePhone"
* birthDate -> "SStaff.SStaff.BirthDateTime,Staff.Staff.BirthDateTime"
* qualification.code.text -> "SStaff.SStaff.Degree,Staff.Staff.Degree"
* gender -> "SStaff.SStaff.Gender,Staff.Staff.Gender"