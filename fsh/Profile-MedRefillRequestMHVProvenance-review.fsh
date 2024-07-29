Profile: MedRefillRequestMHVProvenance-review
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenance-review
Title: "MedRefillRequestMHV Provenance-review"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance"
* ^status = #draft
* recorded and activity and agent.who.display and agent.who.type and target MS
* activity = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV
* agent.who.display = "VA"
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Organization"
* target only Reference(MedRefillRequestMHVTask)

Mapping: vista-to-MedRefillRequestMHVProvenance-review
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenance-review
* recorded -> "1847: source value from PRESCRIPTION REFILL REQUEST - DATE PROCESSED (52.43-5)"
* activity -> "1847-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV" "from mapParameter 1"
* agent.who.display -> "1847-2: fixed value = VA" "from mapParameter 2"
* agent.who.type -> "1847-3: fixed value = http://hl7.org/fhir/StructureDefinition/Organization" "from mapParameter 3"
* target -> "1864: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenance-review
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenance-review
* recorded -> "RxOut.RefillRequest.ProcessedDateTime"