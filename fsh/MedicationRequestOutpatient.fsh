Profile: MedicationRequestOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestOutpatient
Title: "MedicationRequest: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (#52) to us-core-medicationrequest"
* ^status = #draft
* id and status and extension.valueCoding.code and intent and subject and requester and dispenseRequest.validityPeriod.end and dispenseRequest.numberOfRepeatsAllowed and dispenseRequest.quantity.value and dispenseRequest.expectedSupplyDuration MS
* requester only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)

Mapping: vista-to-MedicationRequestOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestOutpatient
* id -> "798: transform using ID_generation"
* status -> "799: transform using VF_OutMedRequestStatus on PRESCRIPTION - STATUS (#52-100)"
* extension.valueCoding.code -> "800: source value from PRESCRIPTION - STATUS (#52-100)"
* intent -> "801: fixed value = order" "All records from file 52 are orders"
* subject -> "806: reference from PRESCRIPTION - PATIENT (#52-2)"
* requester -> "808: reference from PRESCRIPTION - PROVIDER (#52-4)" "retrieve via order"
* dispenseRequest.validityPeriod.end -> "815: source value from PRESCRIPTION - EXPIRATION DATE (#52-26)" "confirm"
* dispenseRequest.numberOfRepeatsAllowed -> "816: source value from PRESCRIPTION - # OF REFILLS (#52-9)" "confirm"
* dispenseRequest.quantity.value -> "1669: source value from PRESCRIPTION - QTY (#52-7)"
* dispenseRequest.expectedSupplyDuration -> "1670: source value from PRESCRIPTION - DAYS SUPPLY (#52-8)"

Mapping: cdw-to-MedicationRequestOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestOutpatient
* status -> "RxOut.RxOutpat.RxStatus"
* extension.valueCoding.code -> "RxOut.RxOutpat.RxStatus"
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.RxOutpat.MaxRefills"

Mapping: vpr-to-MedicationRequestOutpatient
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationRequestOutpatient
* dispenseRequest.quantity.value -> "Pharmacy: quantity"
* dispenseRequest.expectedSupplyDuration -> "Pharmacy: daysSupply"