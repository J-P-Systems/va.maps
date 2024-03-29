Profile: EncounterInpatientCondition
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: EncounterInpatientCondition
Title: "Encounter: Inpatient Condition"
Description: "This StructureDefinition contains the maps for VistA file PTF (#45) to us-core-condition-problems-health-concerns"
* ^status = #draft
* code MS

Mapping: vista-to-EncounterInpatientCondition
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientCondition
* code -> "956: source value from PTF - PRINCIPAL DIAGNOSIS (#45-79)" "Infer contained Condition\nno clinical status"

Mapping: cdw-to-EncounterInpatientCondition
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientCondition
* code -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"