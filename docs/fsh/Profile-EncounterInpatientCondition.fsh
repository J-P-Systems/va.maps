Profile: EncounterInpatientCondition
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: EncounterInpatientCondition
Title: "Encounter: Inpatient Condition"
Description: "This StructureDefinition contains the maps for VistA file PTF (45) to us-core-condition-problems-health-concerns."
* ^status = #draft
* code and category[us-core] MS
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis

Mapping: source-to-EncounterInpatientCondition
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientCondition
* code -> "956: source value based on PTF - PRINCIPAL DIAGNOSIS (45-79)" "Infer Condition; no clinical status ; updated category to encounter-diagnosis"
* category[us-core] -> "956-1: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis" "generated from mapParameter line 1"
* extension[assertedDate].valueDateTime -> "2145: target not supported" "auto added because of must-support"
* clinicalStatus -> "2146: target not supported" "auto added because of must-support"
* verificationStatus -> "2147: target not supported" "auto added because of must-support"
* subject -> "2148: target not supported" "auto added because of must-support"
* onsetDateTime -> "2149: target not supported" "auto added because of must-support"
* abatementDateTime -> "2150: target not supported" "auto added because of must-support"
* recordedDate -> "2151: target not supported" "auto added because of must-support"

Mapping: cdw-to-EncounterInpatientCondition
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientCondition
* code -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"

Mapping: sda-to-EncounterInpatientCondition
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: EncounterInpatientCondition
* code -> "Diagnosis.Diagnosis\nDiagnosis.DiagnosisType"