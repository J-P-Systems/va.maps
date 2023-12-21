Profile: MedicationRequestOutpatientMedicationRequest
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestOutpatientMedicationRequest
Title: "MedicationRequestOutpatient {MedicationRequest}"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR MedicationRequest"
* ^status = #draft
* intent obeys inv-20

Invariant: inv-20
Description: "801: fixed value = order"
Severity: #warning

Mapping: vista-to-MedicationRequestOutpatientMedicationRequest
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestOutpatientMedicationRequest
* id -> "798: transform using ID_generation"
* status -> "799: transform using VF_OutMedRequestStatus on PRESCRIPTION - STATUS (#52-100)"
* extension.valueCoding.code -> "800: source value from PRESCRIPTION - STATUS (#52-100)"
* intent -> "801: fixed value = order" "All records from file 52 are orders"
* subject -> "806: reference from PRESCRIPTION - PATIENT (#52-2)"
* requester -> "808: source value from PRESCRIPTION - PROVIDER (#52-4)" "retrieve via order"
* dispenseRequest.validityPeriod.end -> "815: source value from PRESCRIPTION - EXPIRATION DATE (#52-26)" "confirm"
* dispenseRequest.numberOfRepeatsAllowed -> "816: source value from PRESCRIPTION - # OF REFILLS (#52-9)" "confirm"
* dispenseRequest.quantity.value -> "1669: source value from PRESCRIPTION - QTY (#52-7)"
* dispenseRequest.expectedSupplyDuration -> "1670: source value from PRESCRIPTION - DAYS SUPPLY (#52-8)"

Mapping: cdw-to-MedicationRequestOutpatientMedicationRequest
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestOutpatientMedicationRequest
* status -> "RxOut.RxOutpat.RxStatus"
* extension.valueCoding.code -> "RxOut.RxOutpat.RxStatus"
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.RxOutpat.MaxRefills"

Mapping: vpr-to-MedicationRequestOutpatientMedicationRequest
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationRequestOutpatientMedicationRequest
* dispenseRequest.quantity.value -> "Pharmacy: quantity"
* dispenseRequest.expectedSupplyDuration -> "Pharmacy: daysSupply"