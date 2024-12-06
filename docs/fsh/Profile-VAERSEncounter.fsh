Profile: VAERSEncounter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: VAERSEncounter
Title: "VAERS Encounter"
Description: "This StructureDefinition contains the maps for ADERS to us-core-encounter"
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* period and status and class and type and location.location MS
* location.location only Reference(VAERSLocation)
* status = #finshed
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* type = #IMP

Mapping: source-to-VAERSEncounter
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSEncounter
* period -> "1909: source value from ADERS - 21_HospStay_NumDays"
* status -> "1909-1: fixed value = #finshed" "from mapParameter 1"
* class -> "1909-2: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP" "from mapParameter 2"
* type -> "1909-3: fixed value = #IMP" "from mapParameter 3"
* location.location -> "2037: reference"