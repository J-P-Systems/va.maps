Profile: ConditionEncounterDiagnosis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Id: ConditionEncounterDiagnosis
Title: "Condition: Encounter Diagnosis"
Description: "This StructureDefinition contains the maps for VistA file V POV (9000010.07) to us-core-condition-encounter-diagnosis"
* ^status = #draft
* category[us-core] and identifier.value and code and subject and encounter and onsetDateTime and recordedDate and clinicalStatus and verificationStatus MS
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* clinicalStatus from http://va.gov/fhir/ValueSet/VSVFencounterProblemStatus
* verificationStatus from http://va.gov/fhir/ValueSet/VSVFencounterProblemVerificationStatus

Mapping: vista-to-ConditionEncounterDiagnosis
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ConditionEncounterDiagnosis
* category[us-core] -> "1608: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis"
* identifier.value -> "346: source value from V POV - IEN (9000010.07-.001)"
* code -> "1613: source value from V POV - POV > ICD DIAGNOSIS (9000010.07-.01 > 80-)"
* subject -> "1611: reference from V POV - PATIENT NAME (9000010.07-.02)"
* encounter -> "368: source value from V POV - VISIT (9000010.07-.03)"
* onsetDateTime -> "370: source value from V POV - DATE OF INJURY (9000010.07-.13)"
* recordedDate -> "372: source value from V POV - VISIT > VISIT - VISIT/ADMIT DATE&TIME (9000010.07-.03 > 9000010-.01)" "Added the sub file and field"
* clinicalStatus -> "604: terminologyMaps using VF_encounterProblemStatus on V POV - MODIFIER (9000010.07-.06)"
* verificationStatus -> "606: terminologyMaps using VF_encounterProblemVerificationStatus on V POV - MODIFIER (9000010.07-.06)"
* abatementDateTime -> "1766: target not supported" "abatementDate is must support"

Mapping: cdw-to-ConditionEncounterDiagnosis
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ConditionEncounterDiagnosis
* code -> "Outpat.VDiagnosis.ICDIEN,Outpat.WorkloadVDiagnosis.ICDIEN"
* subject -> "Outpat.VDiagnosis.PatientIEN,Outpat.WorkloadVDiagnosis.PatientIEN"
* encounter -> "Outpat.VDiagnosis.VisitDateTime,Outpat.VDiagnosis.VisitIEN,Outpat.WorkloadVDiagnosis.VisitDateTime,Outpat.WorkloadVDiagnosis.VisitIEN"
* onsetDateTime -> "Outpat.VDiagnosis.InjuryDateTime,Outpat.WorkloadVDiagnosis.InjuryDateTime"
* recordedDate -> "Outpat.VDiagnosis.VisitDateTime,Outpat.VDiagnosis.VisitIEN,Outpat.WorkloadVDiagnosis.VisitDateTime,Outpat.WorkloadVDiagnosis.VisitIEN\nImmun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* clinicalStatus -> "Outpat.VDiagnosis.Modifier,Outpat.WorkloadVDiagnosis.Modifier"
* verificationStatus -> "Outpat.VDiagnosis.Modifier,Outpat.WorkloadVDiagnosis.Modifier"