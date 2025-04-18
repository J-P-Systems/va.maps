Profile: MedRefillRequestMHVProvenancecreate
Parent: http://hl7.org/fhir/StructureDefinition/Provenance
Id: MedRefillRequestMHVProvenancecreate
Title: "MedRefillRequestMHV Provenance[create]"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Provenance."
* ^status = #active
* recorded and activity and agent.who.type and target MS
* target only Reference(MedRefillRequestMHVTask)
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE
* agent.who.type = "http://hl7.org/fhir/StructureDefinition/Patient"

Mapping: source-to-MedRefillRequestMHVProvenancecreate
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVProvenancecreate
* recorded -> "1850: source value based on PRESCRIPTION REFILL REQUEST - LOGIN DATE (52.43-11)"
* activity -> "1850-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-DataOperation#CREATE" "generated from mapParameter line 1"
* agent.who.type -> "1850-2: fixed value = http://hl7.org/fhir/StructureDefinition/Patient" "generated from mapParameter line 2"
* target -> "1865: reference"

Mapping: cdw-to-MedRefillRequestMHVProvenancecreate
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVProvenancecreate
* recorded -> "RxOut.RefillRequest.LoginDateTime"