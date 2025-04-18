Profile: MedRefillRequestMHVProvenancereview
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenancereview
Title: "MedRefillRequestMHV Provenance[review]"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance."
* ^status = #active
* recorded and activity and agent.who.display and agent.who.type and target MS
* target only Reference(MedRefillRequestMHVTask)
* activity = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV
* agent.who.display = "VA"
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Organization"

Mapping: source-to-MedRefillRequestMHVProvenancereview
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenancereview
* recorded -> "1847: source value based on PRESCRIPTION REFILL REQUEST - DATE PROCESSED (52.43-5)"
* activity -> "1847-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV" "generated from mapParameter line 1"
* agent.who.display -> "1847-2: fixed value = VA" "generated from mapParameter line 2"
* agent.who.type -> "1847-3: fixed value = http://hl7.org/fhir/StructureDefinition/Organization" "generated from mapParameter line 3"
* target -> "1864: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenancereview
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenancereview
* recorded -> "RxOut.RefillRequest.ProcessedDateTime"