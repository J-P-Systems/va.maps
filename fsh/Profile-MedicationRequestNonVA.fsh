Profile: MedicationRequestNonVA
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestNonVA
Title: "MedicationRequest: NonVA"
Description: "This StructureDefinition contains the maps for VistA file NON (#55.05) to us-core-medicationrequest"
* ^status = #draft
* intent and reportedBoolean MS

Mapping: vista-to-MedicationRequestNonVA
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestNonVA
* intent -> "1540: fixed value = plan when NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true when NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"