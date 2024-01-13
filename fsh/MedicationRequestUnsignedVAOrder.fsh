Profile: MedicationRequestUnsignedVAOrder
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestUnsignedVAOrder
Title: "MedicationRequestUnsigned VA Order"
Description: "This StructureDefinition contains the maps for VistA file ORDER (#100) to us-core-medicationrequest"
* ^status = #draft
* identifier and subject and requester and authoredOn and priorPrescription and dosageInstruction.timing.repeat.boundsPeriod.start and dosageInstruction.timing.repeat.boundsPeriod.end and medicationCodeableConcept MS

Mapping: vista-to-MedicationRequestUnsignedVAOrder
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestUnsignedVAOrder
* identifier -> "1225: source value from ORDER - ORDER # (#100-.01) case package like 'PS%' & class 'I' & [exclude supply]" "confirm case"
* subject -> "1226: reference from ORDER - OBJECT OF ORDER (#100-.02)"
* requester -> "1227: reference from ORDER - CURRENT AGENT/PROVIDER (#100-1)"
* authoredOn -> "1228: source value from ORDER - WHEN ENTERED (#100-4)"
* priorPrescription -> "1232: reference from ORDER - REPLACED ORDER (#100-9)"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1234: source value from ORDER - START DATE (#100-21)"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "1235: source value from ORDER - STOP DATE (#100-22)"
* medicationCodeableConcept -> "1549: source value from ORDER - ITEM ORDERED (#100-7)" "confirm lookup"

Mapping: cdw-to-MedicationRequestUnsignedVAOrder
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestUnsignedVAOrder
* subject -> "CPRSOrder.OrderAction.ObjectOfOrderIEN\nCPRSOrder.OrderAction.ObjectOfOrderPatientIEN\nCPRSOrder.OrderAction.ParentFileNumber"
* authoredOn -> "CPRSOrder.CPRSOrder.EnteredDateTime\nCPRSOrder.CPRSOrder.EnteredVistaDate\nCPRSOrder.OrderedItem.EnteredDateTime\nCPRSOrder.OrderedItem.EnteredVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "CPRSOrder.CPRSOrder.OrderStartDateTime\nCPRSOrder.CPRSOrder.OrderStartVistaDate\nCPRSOrder.OrderAction.OrderStartDateTime\nCPRSOrder.OrderedItem.OrderStartDateTime\nCPRSOrder.OrderedItem.OrderStartVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "CPRSOrder.CPRSOrder.OrderStopDateTime\nCPRSOrder.CPRSOrder.OrderStopVistaDate\nCPRSOrder.OrderedItem.OrderStopDateTime\nCPRSOrder.OrderedItem.OrderStopVistaDate"
* medicationCodeableConcept -> "CPRSOrder.CPRSOrder.ItemOrderedParentFileIEN\nCPRSOrder.CPRSOrder.ItemOrderedParentFileNumber"