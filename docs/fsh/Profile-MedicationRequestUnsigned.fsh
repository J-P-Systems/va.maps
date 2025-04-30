Profile: MedicationRequestUnsigned
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestUnsigned
Title: "MedicationRequest: Unsigned"
Description: "This StructureDefinition contains the maps for VistA file ORDER (100) to us-core-medicationrequest."
* ^status = #draft
* identifier.value and identifier.type and subject and requester and authoredOn and priorPrescription and dosageInstruction.timing.repeat.boundsPeriod.start and dosageInstruction.timing.repeat.boundsPeriod.end and medicationCodeableConcept MS
* subject only Reference(Patient)
* requester only Reference(Practitioner)
* identifier.value obeys mru-25-1225
* identifier.type obeys mru-25-1225-1

Invariant: mru-25-1225
Description: "If package like 'PS%' & class 'I' & [exclude supply] then source value from (100-.01)"
Severity: #warning
Expression: "true"

Invariant: mru-25-1225-1
Description: "If package like 'PS%' & class 'I' & [exclude supply] then fixed value http://terminology.hl7.org/CodeSystem/v2-0203#PLAC"
Severity: #warning
Expression: "true"

Mapping: source-to-MedicationRequestUnsigned
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestUnsigned
* identifier.value -> "1225: source value based on ORDER - ORDER # (100-.01) if package like 'PS%' & class 'I' & [exclude supply]" "confirm case"
* identifier.type -> "1225-1: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#PLAC if package like 'PS%' & class 'I' & [exclude supply]" "generated from mapParameter line 1"
* subject -> "1226: reference based on ORDER - OBJECT OF ORDER (100-.02)"
* requester -> "1227: reference based on ORDER - CURRENT AGENT/PROVIDER (100-1)"
* authoredOn -> "1228: source value based on ORDER - WHEN ENTERED (100-4)"
* priorPrescription -> "1232: reference based on ORDER - REPLACED ORDER (100-9)" "The specific MedicationRequestXxx profile to use depends on the source data"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1234: source value based on ORDER - START DATE (100-21)"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "1235: source value based on ORDER - STOP DATE (100-22)"
* medicationCodeableConcept -> "1549: source value based on ORDER - ITEM ORDERED (100-7)" "confirm lookup"
* status -> "2168: target not supported" "auto added because of must-support"
* intent -> "2169: target not supported" "auto added because of must-support"
* reportedBoolean -> "2172: target not supported" "auto added because of must-support"
* reportedReference -> "2173: target not supported" "auto added because of must-support"
* medicationReference -> "2174: target not supported" "auto added because of must-support"
* encounter -> "2175: target not supported" "auto added because of must-support"
* dosageInstruction.text -> "2176: target not supported" "auto added because of must-support"

Mapping: cdw-to-MedicationRequestUnsigned
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestUnsigned
* subject -> "CPRSOrder.OrderAction.ObjectOfOrderIEN,CPRSOrder.OrderAction.ObjectofOrderLabReferralPatientIEN,CPRSOrder.OrderAction.ObjectOfOrderPatientIEN,CPRSOrder.OrderAction.ParentFileNumber,CPRSOrder.OrderedItem.PatientIEN"
* authoredOn -> "CPRSOrder.CPRSOrder.EnteredDateTime,CPRSOrder.CPRSOrder.EnteredVistaDate,CPRSOrder.OrderedItem.EnteredDateTime,CPRSOrder.OrderedItem.EnteredVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "CPRSOrder.CPRSOrder.OrderStartDateTime,CPRSOrder.CPRSOrder.OrderStartVistaDate,CPRSOrder.OrderAction.OrderStartDateTime,CPRSOrder.OrderedItem.OrderStartDateSID,CPRSOrder.OrderedItem.OrderStartDateTime,CPRSOrder.OrderedItem.OrderStartVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "CPRSOrder.CPRSOrder.OrderStopDateTime,CPRSOrder.CPRSOrder.OrderStopVistaDate,CPRSOrder.OrderedItem.OrderStopDateSID,CPRSOrder.OrderedItem.OrderStopDateTime,CPRSOrder.OrderedItem.OrderStopVistaDate"
* medicationCodeableConcept -> "CPRSOrder.CPRSOrder.ItemOrderedParentFileIEN,CPRSOrder.CPRSOrder.ItemOrderedParentFileNumber"

Mapping: sda-to-MedicationRequestUnsigned
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationRequestUnsigned
* identifier.value -> "RadOrder.OrderItem[Order].Description,RadOrder.Extension[ResultExtension].null,LabOrder.OrderItem[Order].Description,LabOrder.Priority.Description,OtherOrder.OrderCategory.Description,OtherOrder.OrderItem[Order].Description,OtherOrder.OrderStatus[VA.VAStatus].Description,OtherOrder.Priority.Description,OtherOrder.OrderItem[Order].OriginalText"
* subject -> "RadOrder.Extension[ResultExtension].null"
* authoredOn -> "RadOrder.EnteredOn,RadOrder.NationalItem[CodeTable].SDACodingStandard,RadOrder.Extension[ResultExtension].CaseNumber,LabOrder.EnteredOn,LabOrder.NationalItem[CodeTable].SDACodingStandard,OtherOrder.EnteredOn,Medication.EnteredOn"
* priorPrescription -> "RadOrder.Extension[OrderExtension].ReplacedOrder,LabOrder.Extension[LabOrderExtension].ReplacedOrder,OtherOrder.Extension[OrderExtension].ReplacedOrder,Medication.Extension[MedicationExtension].ReplacedOrder"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "RadOrder.FromTime,LabOrder.FromTime,LabOrder.SpecimenCollectedTime,OtherOrder.FromTime,Medication.FromTime"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "RadOrder.ToTime,LabOrder.ToTime,OtherOrder.ToTime,Medication.ToTime"

Mapping: vpr-to-MedicationRequestUnsigned
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationRequestUnsigned
* requester -> "med.orderingProvider (>200-.01),pharmacy (med).orderingProvider (>200-.01)"
* authoredOn -> "med.ordered,order.entered,pharmacy (med).ordered"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "med.start,order.start,pharmacy (med).start"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "med.stop,order.stop,pharmacy (med).stop"