Profile: MedicationRequestUnsigned
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestUnsigned
Title: "MedicationRequest: Unsigned"
Description: "This StructureDefinition contains the maps for VistA file ORDER (100) to us-core-medicationrequest"
* ^status = #draft
* identifier and subject and requester and authoredOn and priorPrescription and dosageInstruction.timing.repeat.boundsPeriod.start and dosageInstruction.timing.repeat.boundsPeriod.end and medicationCodeableConcept MS
* subject only Reference(Patient)
* requester only Reference(Practitioner)

Mapping: source-to-MedicationRequestUnsigned
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestUnsigned
* identifier -> "1225: source value from ORDER - ORDER # (100-.01) case package like 'PS%' & class 'I' & [exclude supply]" "confirm case"
* subject -> "1226: reference from ORDER - OBJECT OF ORDER (100-.02)"
* requester -> "1227: reference from ORDER - CURRENT AGENT/PROVIDER (100-1)"
* authoredOn -> "1228: source value from ORDER - WHEN ENTERED (100-4)"
* priorPrescription -> "1232: reference from ORDER - REPLACED ORDER (100-9)"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1234: source value from ORDER - START DATE (100-21)"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "1235: source value from ORDER - STOP DATE (100-22)"
* medicationCodeableConcept -> "1549: source value from ORDER - ITEM ORDERED (100-7)" "confirm lookup"

Mapping: cdw-to-MedicationRequestUnsigned
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestUnsigned
* subject -> "CPRSOrder.OrderAction.ObjectOfOrderIEN,CPRSOrder.OrderAction.ObjectofOrderLabReferralPatientIEN,CPRSOrder.OrderAction.ObjectOfOrderPatientIEN,CPRSOrder.OrderAction.ParentFileNumber,CPRSOrder.OrderedItem.PatientIEN"
* authoredOn -> "CPRSOrder.CPRSOrder.EnteredDateTime,CPRSOrder.CPRSOrder.EnteredVistaDate,CPRSOrder.OrderedItem.EnteredDateTime,CPRSOrder.OrderedItem.EnteredVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "CPRSOrder.CPRSOrder.OrderStartDateTime,CPRSOrder.CPRSOrder.OrderStartVistaDate,CPRSOrder.OrderAction.OrderStartDateTime,CPRSOrder.OrderedItem.OrderStartDateSID,CPRSOrder.OrderedItem.OrderStartDateTime,CPRSOrder.OrderedItem.OrderStartVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "CPRSOrder.CPRSOrder.OrderStopDateTime,CPRSOrder.CPRSOrder.OrderStopVistaDate,CPRSOrder.OrderedItem.OrderStopDateSID,CPRSOrder.OrderedItem.OrderStopDateTime,CPRSOrder.OrderedItem.OrderStopVistaDate"
* medicationCodeableConcept -> "CPRSOrder.CPRSOrder.ItemOrderedParentFileIEN,CPRSOrder.CPRSOrder.ItemOrderedParentFileNumber"