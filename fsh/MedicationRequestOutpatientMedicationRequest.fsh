Profile: MedicationRequestOutpatientMedicationRequest
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestOutpatientMedicationRequest
Title: "MedicationRequest: Outpatient MedicationRequest"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (#52) to us-core-medicationrequest"
* ^status = #draft
* id and status and extension.valueCoding.code and intent and subject and requester and dispenseRequest.validityPeriod.end and extension and dispenseRequest.numberOfRepeatsAllowed and dispenseRequest.quantity.value and dispenseRequest.expectedSupplyDuration and encounter and reasonCode.text and extension.valueBoolean MS
* encounter only Reference(MedicationRequestOutpatientEncounter)

Mapping: vista-to-MedicationRequestOutpatientMedicationRequest
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestOutpatientMedicationRequest
* id -> "798: transform using ID_generation"
* status -> "799: transform using VF_OutMedRequestStatus on PRESCRIPTION - STATUS (#52-100)"
* extension.valueCoding.code -> "800: source value from PRESCRIPTION - STATUS (#52-100)"
* intent -> "801: fixed value = order" "All records from file 52 are orders"
* subject -> "806: reference from PRESCRIPTION - PATIENT (#52-2)"
* requester -> "808: reference from PRESCRIPTION - PROVIDER (#52-4)" "retrieve via order"
* dispenseRequest.validityPeriod.end -> "815: source value from PRESCRIPTION - EXPIRATION DATE (#52-26)" "confirm"
* extension -> "1704: source value from PRESCRIPTION - CANCEL DATE (#52-26.1)"
* dispenseRequest.numberOfRepeatsAllowed -> "816: source value from PRESCRIPTION - # OF REFILLS (#52-9)" "confirm"
* dispenseRequest.quantity.value -> "1669: source value from PRESCRIPTION - QTY (#52-7)"
* dispenseRequest.expectedSupplyDuration -> "1670: source value from PRESCRIPTION - DAYS SUPPLY (#52-8)"
* encounter -> "++: reference"
* reasonCode.text -> "1705: source value from PRESCRIPTION - INDICATION FOR USE (#52-128)"
* extension.valueBoolean -> "1706: transform using VF_Boolean on PRESCRIPTION - INDICATION FOR USE FLAG (#51-129)"
* extension.valueCoding.code -> "1707: source value from PRESCRIPTION - MAIL/WINDOW/PARK (#52-11)" "This value is consistent with Active. \nAdd a second value, or overwrite Active with Parked?"

Mapping: cdw-to-MedicationRequestOutpatientMedicationRequest
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestOutpatientMedicationRequest
* status -> "RxOut.RxOutpat.RxStatus"
* extension.valueCoding.code -> "RxOut.RxOutpat.RxStatus"
* extension -> "RxOut.RxOutpat.CancelDate"
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.RxOutpat.MaxRefills"

Mapping: vpr-to-MedicationRequestOutpatientMedicationRequest
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationRequestOutpatientMedicationRequest
* dispenseRequest.quantity.value -> "Pharmacy: quantity"
* dispenseRequest.expectedSupplyDuration -> "Pharmacy: daysSupply"