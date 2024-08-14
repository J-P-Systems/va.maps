Profile: VAERSPatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Id: VAERSPatient
Title: "VAERS Patient"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-patient"
* ^status = #draft
* identifier and identifier.system and identifier.type.coding.code and identifier.type.coding.system and birthDate MS
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type.coding.code = #MR
* identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"

Mapping: vista-to-VAERSPatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSPatient
* identifier -> "1863: source value from ADERS - 0_Pt_ICN_Full"
* identifier.system -> "1863-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "from mapParameter 1"
* identifier.type.coding.code -> "1863-2: fixed value = #MR" "from mapParameter 2"
* identifier.type.coding.system -> "1863-3: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203" "from mapParameter 3"
* birthDate -> "1874: source value from ADERS - 2_ptDOB"

Mapping: cdw-to-VAERSPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSPatient