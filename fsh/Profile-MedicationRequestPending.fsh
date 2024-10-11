Profile: MedicationRequestPending
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestPending
Title: "MedicationRequest: Pending"
Description: "This StructureDefinition contains the maps for VistA file PENDING OUTPATIENT ORDERS (52.41) to us-core-medicationrequest"
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus named medicationrequest-pharmacyOrderStatus 0..1
* identifier.value and identifier.system and status and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system and recorder and requester and dosageInstruction.timing.repeat.boundsPeriod.start and medicationCodeableConcept and dispenseRequest.quantity and dispenseRequest.numberOfRepeatsAllowed and authoredOn and dispenseRequest.expectedSupplyDuration and note and dosageInstruction.patientInstruction MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/52.41-.01"
* status = #draft
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system = "http://va.gov/terminology/vistaDefinedTerms/52.41-2"

Mapping: source-to-MedicationRequestPending
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestPending
* identifier.value -> "1747: source value from PENDING OUTPATIENT ORDERS - PLACER NUMBER (52.41-.01)"
* identifier.system -> "1747-1: fixed value = http://va.gov/identifiers/$Sta3n/52.41-.01" "from mapParameter 1"
* status -> "1748: fixed value = #draft"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "1749: source value from PENDING OUTPATIENT ORDERS - ORDER TYPE (52.41-2)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system -> "1749-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/52.41-2" "from mapParameter 1"
* recorder -> "1750: reference from PENDING OUTPATIENT ORDERS - ENTERED BY (52.41-4)" "/Practitioner | Role"
* requester -> "1751: reference from PENDING OUTPATIENT ORDERS - PROVIDER (52.41-5)" "/Practitioner | Role"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1752: source value from PENDING OUTPATIENT ORDERS - EFFECTIVE DATE (52.41-6)"
* medicationCodeableConcept -> "1753: source value from PENDING OUTPATIENT ORDERS - PHARMACY ORDERABLE ITEM (52.41-8) case drug null"
* medicationCodeableConcept -> "1754: source value from PENDING OUTPATIENT ORDERS - DRUG (52.41-11)"
* dispenseRequest.quantity -> "1755: source value from PENDING OUTPATIENT ORDERS - QTY (52.41-12)"
* dispenseRequest.numberOfRepeatsAllowed -> "1756: source value from PENDING OUTPATIENT ORDERS - # OF REFILLS (52.41-13)"
* authoredOn -> "1757: source value from PENDING OUTPATIENT ORDERS - LOGIN DATE (52.41-15)"
* dispenseRequest.expectedSupplyDuration -> "1758: source value from PENDING OUTPATIENT ORDERS - DAYS SUPPLY (52.41-101)"
* note -> "1759: source value from PENDING OUTPATIENT ORDERS - PROVIDER COMMENTS (52.41-9)"
* dosageInstruction.patientInstruction -> "1760: null"

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