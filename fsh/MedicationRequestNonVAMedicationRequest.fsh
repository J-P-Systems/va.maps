Profile: MedicationRequestNonVAMedicationRequest
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestNonVAMedicationRequest
Title: "MedicationRequestNonVA {MedicationRequest}"
Description: "This StructureDefinition contains the maps for VistA NON (file 55.05) to FHIR MedicationRequest"
* ^status = #draft
* intent obeys inv-18
* reportedBoolean obeys inv-19

Invariant: inv-18
Description: "1540: fixed value = plan if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"
Severity: #warning

Invariant: inv-19
Description: "1347: fixed value = true if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"
Severity: #warning

Mapping: vista-to-MedicationRequestNonVAMedicationRequest
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestNonVAMedicationRequest
* intent -> "1540: fixed value = plan if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true if NON-VA MEDS - ORDER NUMBER (#55.05-7) case Not null"