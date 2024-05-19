Profile: MedicationRequestOutpatientEncounter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: MedicationRequestOutpatientEncounter
Title: "MedicationRequest: Outpatient Encounter"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to us-core-encounter"
* ^status = #draft
* location and status MS
* status = #finished

Mapping: vista-to-MedicationRequestOutpatientEncounter
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestOutpatientEncounter
* location -> "1671: reference from PRESCRIPTION - CLINIC (52-5)" "Sta3n in identifier (system = urn:oid:2.16.840.1.113883.4.349) or in managingOrganization.display or identifier"
* status -> "1671-1: fixed value = #finished" "from mapParameter 1"

Mapping: cdw-to-MedicationRequestOutpatientEncounter
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestOutpatientEncounter
* location -> "RxOut.RxOutpat.DivisionIEN,RxOut.RxOutpat.LocationIEN,RxOut.RxOutpatFill.PrescribingDivisionIEN"