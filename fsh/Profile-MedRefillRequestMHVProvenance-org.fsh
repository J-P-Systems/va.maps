Profile: MedRefillRequestMHVProvenance-org
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenance-org
Title: "MedRefillRequestMHV Provenance-org"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance"
* ^status = #draft
* recorded and activity and agent.who.display and agent.who.type and target MS
* activity = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV
* agent.who.display = "VA"
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Organization"
* target only Reference(MedRefillRequestMHVTask)

Mapping: vista-to-MedRefillRequestMHVProvenance-org
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenance-org
* recorded -> "1847: source value from PRESCRIPTION REFILL REQUEST - DATE PROCESSED (52.43-5)" "@MZ: split into 2 Provenance and 2 maprows because of Task reference"
* activity -> "1847-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActClass#REV" "from mapParameter 1"
* agent.who.display -> "1847-2: fixed value = VA" "from mapParameter 2"
* agent.who.type -> "1847-3: fixed value = http://hl7.org/fhir/StructureDefinition/Organization" "from mapParameter 3"
* target -> "1864: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenance-org
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenance-org
* recorded -> "RxOut.RefillRequest.ProcessedDateTime"