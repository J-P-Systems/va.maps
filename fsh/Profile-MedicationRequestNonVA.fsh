Profile: MedicationRequestNonVA
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestNonVA
Title: "MedicationRequest: NonVA"
Description: "This StructureDefinition contains the maps for VistA file NON-VA MEDS (55.05) to us-core-medicationrequest"
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation named medicationrequest-recordedLocation 0..1
* intent and reportedBoolean and note and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference MS

Mapping: vista-to-MedicationRequestNonVA
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestNonVA
* intent -> "1540: fixed value = #plan when NON-VA MEDS - ORDER NUMBER (55.05-7) case Not null" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true when NON-VA MEDS - ORDER NUMBER (55.05-7) case Not null"
* note -> "1764: source value from NON-VA MEDS - DISCLAIMER (55.05-10)" "Concatenate to Comment. Delimit with a period."
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "1765: reference from NON-VA MEDS - CLINIC (55.05-13)"

Mapping: cdw-to-MedicationRequestNonVA
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestNonVA