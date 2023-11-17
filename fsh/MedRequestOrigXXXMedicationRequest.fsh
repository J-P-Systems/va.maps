Profile: MedRequestOrigXXXMedicationRequest
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedRequestOrigXXXMedicationRequest
Title: "MedRequestOrigXXX {MedicationRequest}"
Description: "This StructureDefinition contains the maps for VistA PRESCRIPTION (file 52) to FHIR MedicationRequest"
* ^status = #draft

Mapping: vista-to-MedRequestOrigXXXMedicationRequest
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRequestOrigXXXMedicationRequest
* dispenseRequest.validityPeriod.end -> "815: source value from PRESCRIPTION - EXPIRATION DATE (#52-26)" "confirm"
* dispenseRequest.numberOfRepeatsAllowed -> "816: source value from PRESCRIPTION - # OF REFILLS (#52-9)" "confirm"

Mapping: cdw-to-MedRequestOrigXXXMedicationRequest
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRequestOrigXXXMedicationRequest
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.RxOutpat.MaxRefills"