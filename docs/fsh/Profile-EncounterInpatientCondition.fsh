Profile: EncounterInpatientCondition
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: EncounterInpatientCondition
Title: "Encounter: Inpatient Condition"
Description: "This StructureDefinition contains the maps for VistA file PTF (45) to us-core-condition-problems-health-concerns"
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* code and category MS
* category = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

Mapping: source-to-EncounterInpatientCondition
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientCondition
* code -> "956: source value from PTF - PRINCIPAL DIAGNOSIS (45-79)" "Infer Condition; no clinical status ; updated category to encounter-diagnosis"
* category -> "956-1: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis" "from mapParameter 1"

Mapping: cdw-to-EncounterInpatientCondition
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientCondition
* code -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"

Mapping: sda-to-EncounterInpatientCondition
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: EncounterInpatientCondition
* code -> "Diagnosis.Diagnosis,Diagnosis.DiagnosisType"