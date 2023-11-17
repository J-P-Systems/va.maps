Profile: MedicationRequestVAOrder
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestVAOrder
Title: "MedicationRequest: VA Order"
Description: "This StructureDefinition contains the maps for VistA ORDER (file 100) to FHIR MedicationRequest"
* ^status = #draft
* intent obeys inv-17
* intent obeys inv-18
* reportedBoolean obeys inv-19

Invariant: inv-17
Description: "1346: fixed value = order if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Null"
Severity: #warning

Invariant: inv-18
Description: "1540: fixed value = plan if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"
Severity: #warning

Invariant: inv-19
Description: "1347: fixed value = true if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"
Severity: #warning

Mapping: vista-to-MedicationRequestVAOrder
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestVAOrder
* identifier -> "1225: source value from ORDER - ORDER # (#100-.01) case package like 'PS%' & class 'I' & [exclude supply]" "confirm case"
* subject -> "1226: reference from ORDER - OBJECT OF ORDER (#100-.02)"
* requester -> "1227: reference from ORDER - CURRENT AGENT/PROVIDER (#100-1)"
* authoredOn -> "1228: source value from ORDER - WHEN ENTERED (#100-4)"
* status -> "1229: terminologyMaps using null on ORDER - STATUS (#100-5)"
* priorPrescription -> "1232: reference from ORDER - REPLACED ORDER (#100-9)"
* category -> "1233: terminologyMaps using null on ORDER - PATIENT CLASS (#100-10)"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "1234: source value from ORDER - START DATE (#100-21)"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "1235: source value from ORDER - STOP DATE (#100-22)"
* statusReason -> "1237: source value from ORDER - DC REASON (#100-64)" "no appropriate standard found"
* statusReason.text -> "1238: source value from ORDER - DC REASON TEXT (#100-65)"
* medicationCodeableConcept -> "1549: source value from ORDER - ITEM ORDERED (#100-7)" "confirm lookup"
* intent -> "1346: fixed value = order if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Null"
* intent -> "1540: fixed value = plan if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"

Mapping: cdw-to-MedicationRequestVAOrder
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestVAOrder
* subject -> "CPRSOrder.OrderAction.ObjectOfOrderIEN\nCPRSOrder.OrderAction.ObjectOfOrderPatientIEN\nCPRSOrder.OrderAction.ParentFileNumber"
* authoredOn -> "CPRSOrder.CPRSOrder.EnteredDateTime\nCPRSOrder.CPRSOrder.EnteredVistaDate\nCPRSOrder.OrderedItem.EnteredDateTime\nCPRSOrder.OrderedItem.EnteredVistaDate"
* category -> "CPRSOrder.CPRSOrder.InPatientFlag"
* dosageInstruction.timing.repeat.boundsPeriod.start -> "CPRSOrder.CPRSOrder.OrderStartDateTime\nCPRSOrder.CPRSOrder.OrderStartVistaDate\nCPRSOrder.OrderAction.OrderStartDateTime\nCPRSOrder.OrderedItem.OrderStartDateTime\nCPRSOrder.OrderedItem.OrderStartVistaDate"
* dosageInstruction.timing.repeat.boundsPeriod.end -> "CPRSOrder.CPRSOrder.OrderStopDateTime\nCPRSOrder.CPRSOrder.OrderStopVistaDate\nCPRSOrder.OrderedItem.OrderStopDateTime\nCPRSOrder.OrderedItem.OrderStopVistaDate"
* statusReason.text -> "CPRSOrder.CPRSOrder.DiscontinuedOrderReasonText"
* medicationCodeableConcept -> "CPRSOrder.CPRSOrder.ItemOrderedParentFileIEN\nCPRSOrder.CPRSOrder.ItemOrderedParentFileNumber"