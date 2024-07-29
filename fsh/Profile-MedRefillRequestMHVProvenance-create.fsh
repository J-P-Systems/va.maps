Profile: MedRefillRequestMHVProvenance-create
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenance-create
Title: "MedRefillRequestMHV Provenance-create"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance"
* ^status = #draft
* recorded and activity and agent.who.type and target MS
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Patient"
* target only Reference(MedRefillRequestMHVTask)

Mapping: vista-to-MedRefillRequestMHVProvenance-create
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenance-create
* recorded -> "1850: source value from PRESCRIPTION REFILL REQUEST - LOGIN DATE (52.43-11)"
* activity -> "1850-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE" "from mapParameter 1"
* agent.who.type -> "1850-2: fixed value = http://hl7.org/fhir/StructureDefinition/Patient" "from mapParameter 2"
* target -> "1865: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenance-create
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenance-create
* recorded -> "RxOut.RefillRequest.LoginDateTime"