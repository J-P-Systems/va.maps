Profile: MedRefillRequestMHVProvenance-pat
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenance-pat
Title: "MedRefillRequestMHV Provenance-pat"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance"
* ^status = #draft
* recorded and activity and agent.who.type and target MS
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Patient"
* target only Reference(MedRefillRequestMHVTask)

Mapping: vista-to-MedRefillRequestMHVProvenance-pat
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenance-pat
* recorded -> "1850: source value from PRESCRIPTION REFILL REQUEST - LOGIN DATE (52.43-11)" "@MZ: split into 2 Provenance and 2 maprows because of Task reference"
* activity -> "1850-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE" "from mapParameter 1"
* agent.who.type -> "1850-2: fixed value = http://hl7.org/fhir/StructureDefinition/Patient" "from mapParameter 2"
* target -> "1865: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenance-pat
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenance-pat
* recorded -> "RxOut.RefillRequest.LoginDateTime"