Profile: MedicationRequestPending
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestPending
Title: "MedicationRequest: Pending"
Description: "This StructureDefinition contains the maps for VistA file PENDING OUTPATIENT ORDERS (52.41) to us-core-medicationrequest."
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus named medicationrequest-pharmacyOrderStatus 0..1
* identifier.value and identifier.system and identifier.type and status and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system and recorder and requester and dosageInstruction.timing.repeat.boundsPeriod.start and medicationCodeableConcept and dispenseRequest.quantity and dispenseRequest.numberOfRepeatsAllowed and authoredOn and dispenseRequest.expectedSupplyDuration and note and dosageInstruction.patientInstruction MS
* recorder only Reference(Practitioner)
* requester only Reference(Practitioner)
* identifier.system = "http://va.gov/identifiers/$Sta3n/52.41-.01"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC
* status = #draft
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system = "http://va.gov/terminology/vistaDefinedTerms/52.41-2"
* medicationCodeableConcept obeys mrp-24-1753

Invariant: mrp-24-1753
Description: "If drug null then source value from (52.41-8)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-MedicationRequestPending
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestPending
* identifier.value -> "1747: source value based on PENDING OUTPATIENT ORDERS - PLACER NUMBER (52.41-.01)"
* identifier.system -> "1747-1: fixed value = http://va.gov/identifiers/$Sta3n/52.41-.01" "generated from mapParameter line 1"
* identifier.type -> "1747-2: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC" "generated from mapParameter line 2"
* status -> "1748: fixed value = #draft"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "1749: source value based on PENDING OUTPATIENT ORDERS - ORDER TYPE (52.41-2)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system -> "1749-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/52.41-2" "generated from mapParameter line 1"
* recorder -> "1750: reference based on PENDING OUTPATIENT ORDERS - ENTERED BY (52.41-4)"
* requester -> "1751: reference based on PENDING OUTPATIENT ORDERS - PROVIDER (52.41-5)"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1752: source value based on PENDING OUTPATIENT ORDERS - EFFECTIVE DATE (52.41-6)"
* medicationCodeableConcept -> "1753: source value based on PENDING OUTPATIENT ORDERS - PHARMACY ORDERABLE ITEM (52.41-8) if drug null"
* medicationCodeableConcept -> "1754: source value based on PENDING OUTPATIENT ORDERS - DRUG (52.41-11)"
* dispenseRequest.quantity -> "1755: source value based on PENDING OUTPATIENT ORDERS - QTY (52.41-12)"
* dispenseRequest.numberOfRepeatsAllowed -> "1756: source value based on PENDING OUTPATIENT ORDERS - # OF REFILLS (52.41-13)"
* authoredOn -> "1757: source value based on PENDING OUTPATIENT ORDERS - LOGIN DATE (52.41-15)"
* dispenseRequest.expectedSupplyDuration -> "1758: source value based on PENDING OUTPATIENT ORDERS - DAYS SUPPLY (52.41-101)"
* note -> "1759: source value based on PENDING OUTPATIENT ORDERS - PROVIDER COMMENTS (52.41-9)"
* dosageInstruction.patientInstruction -> "1760: null"
* intent -> "2197: target not supported" "auto added because of must-support"
* category[us-core] -> "2199: target not supported" "auto added because of must-support"
* reportedBoolean -> "2200: target not supported" "auto added because of must-support"
* reportedReference -> "2201: target not supported" "auto added because of must-support"
* medicationReference -> "2202: target not supported" "auto added because of must-support"
* subject -> "2203: target not supported" "auto added because of must-support"
* encounter -> "2204: target not supported" "auto added because of must-support"
* dosageInstruction.text -> "2205: target not supported" "auto added because of must-support"

Mapping: cdw-to-MedicationRequestPending
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestPending
* identifier.value -> "RxOut.PendingRxOrder.PlacerCPRSOrderIEN,RxOut.PendingRxOrder.PlacerCPRSOrderSID"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "RxOut.PendingRxOrder.OrderType"
* recorder -> "RxOut.PendingRxOrder.EnteredByStaffIEN,RxOut.PendingRxOrder.EnteredByStaffSID"
* requester -> "RxOut.PendingRxOrder.ProviderIEN,RxOut.PendingRxOrder.ProviderSID"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "RxOut.PendingRxOrder.EffectiveDateTime,RxOut.PharmacyInstructions.EffectiveDateTime,RxOut.ProviderComments.EffectiveDateTime"
* medicationCodeableConcept -> "RxOut.PendingRxOrder.PharmacyOrderableItemIEN,RxOut.PendingRxOrder.PharmacyOrderableItemSID"
* medicationCodeableConcept -> "RxOut.PendingRxOrder.LocalDrugIEN,RxOut.PendingRxOrder.LocalDrugSID"
* dispenseRequest.quantity -> "RxOut.PendingRxOrder.LocalQty"
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.PendingRxOrder.NumberOfRefills"
* authoredOn -> "RxOut.PendingRxOrder.LoginDateTime"
* dispenseRequest.expectedSupplyDuration -> "RxOut.PendingRxOrder.DaysSupply"