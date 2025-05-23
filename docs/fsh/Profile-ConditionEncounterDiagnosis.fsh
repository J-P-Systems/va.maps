Profile: ConditionEncounterDiagnosis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Id: ConditionEncounterDiagnosis
Title: "Condition: Encounter Diagnosis"
Description: "This StructureDefinition contains the maps for VistA file V POV (9000010.07) to us-core-condition-encounter-diagnosis."
* ^status = #draft
* category[us-core] and identifier.value and identifier.system and clinicalStatus and code.coding.code and code.coding.system and subject and encounter and onsetDateTime and recordedDate and verificationStatus and recorder MS
* subject only Reference(Patient)
* recorder only Reference(Practitioner)
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* identifier.system = "http://va.gov/identifiers/$Sta3n/9000010.07"
* clinicalStatus obeys ced-27-350
* code.coding.system = "urn:see-termmap-in-mapParameter"
* clinicalStatus from http://va.gov/fhir/ValueSet/encounterProblemStatus
* clinicalStatus ^binding.description = "see mapping [VF_encounterProblemStatus](ConceptMap-VF-encounterProblemStatus.html)"
* verificationStatus from http://va.gov/fhir/ValueSet/encounterProblemVerificationStatus
* verificationStatus ^binding.description = "see mapping [VF_encounterProblemVerificationStatus](ConceptMap-VF-encounterProblemVerificationStatus.html)"

Invariant: ced-27-350
Description: "If (9000010.07-.06) is Null then exclude value"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-ConditionEncounterDiagnosis
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ConditionEncounterDiagnosis
* category[us-core] -> "1608: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis"
* identifier.value -> "346: source value based on V POV - IEN (9000010.07-.001)"
* identifier.system -> "346-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010.07" "generated from mapParameter line 1"
* clinicalStatus -> "350: exclude value if Null" "should this be active or null?"
* code.coding.code -> "1613: source value based on V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)"
* code.coding.system -> "1613-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* subject -> "1611: reference based on V POV - PATIENT NAME > PATIENT/IHS - NAME (9000010.07-.02 > 9000001-.01)" "We have patient resource; unclear why name is repeated"
* encounter -> "368: source value based on V POV - VISIT (9000010.07-.03)"
* onsetDateTime -> "370: source value based on V POV - DATE OF INJURY (9000010.07-.13)"
* recordedDate -> "372: source value based on V POV - VISIT > VISIT - VISIT/ADMIT DATE&TIME (9000010.07-.03 > 9000010-.01)" "Added the sub file and field"
* clinicalStatus -> "604: terminologyMaps using VF_encounterProblemStatus on V POV - MODIFIER (9000010.07-.06)"
* verificationStatus -> "606: terminologyMaps using VF_encounterProblemVerificationStatus on V POV - MODIFIER (9000010.07-.06)"
* abatementDateTime -> "1766: target not supported" "abatementDate is must support"
* recorder -> "1833: reference based on V POV - ENCOUNTER PROVIDER (9000010.07-1204)"
* extension[assertedDate].valueDateTime -> "2043: target not supported" "auto added because of must-support"

Mapping: cdw-to-ConditionEncounterDiagnosis
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ConditionEncounterDiagnosis
* clinicalStatus -> "Outpat.VDiagnosis.Modifier\nOutpat.WorkloadVDiagnosis.Modifier"
* code.coding.code -> "Outpat.VDiagnosis.ICDIEN\nOutpat.WorkloadVDiagnosis.ICDIEN\nDim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* subject -> "Outpat.VDiagnosis.PatientIEN\nOutpat.WorkloadVDiagnosis.PatientIEN"
* encounter -> "Outpat.VDiagnosis.VisitDateTime\nOutpat.VDiagnosis.VisitIEN\nOutpat.WorkloadVDiagnosis.VisitDateTime\nOutpat.WorkloadVDiagnosis.VisitIEN"
* onsetDateTime -> "Outpat.VDiagnosis.InjuryDateTime\nOutpat.WorkloadVDiagnosis.InjuryDateTime"
* recordedDate -> "Outpat.VDiagnosis.VisitDateTime\nOutpat.VDiagnosis.VisitIEN\nOutpat.WorkloadVDiagnosis.VisitDateTime\nOutpat.WorkloadVDiagnosis.VisitIEN\nImmun.ImmunizationContraRefusalEvent.VisitDateTime\nOutpat.Visit.VisitDateTime\nOutpat.VisitLogic.VisitDateTime\nOutpat.Workload.VisitDateTime"
* clinicalStatus -> "Outpat.VDiagnosis.Modifier\nOutpat.WorkloadVDiagnosis.Modifier"
* verificationStatus -> "Outpat.VDiagnosis.Modifier\nOutpat.WorkloadVDiagnosis.Modifier"
* recorder -> "Outpat.VDiagnosis.EncounterProviderIEN\nOutpat.WorkloadVDiagnosis.EncounterProviderIEN"

Mapping: sda-to-ConditionEncounterDiagnosis
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ConditionEncounterDiagnosis
* clinicalStatus -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].OriginalText"
* code.coding.code -> "Diagnosis.Diagnosis\nDiagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* encounter -> "Diagnosis.EncounterNumber\nDiagnosis.EnteredAt\nDiagnosis.EnteredBy\nDiagnosis.EnteredOn\nDiagnosis.FromTime\nDiagnosis.ToTime"
* onsetDateTime -> "Diagnosis.OnsetTime"
* recordedDate -> "Diagnosis.EncounterNumber\nDiagnosis.EnteredAt\nDiagnosis.EnteredBy\nDiagnosis.EnteredOn\nDiagnosis.FromTime\nDiagnosis.ToTime\nEncounter.ConsultingClinician[CareProvider].Description\nEncounter.ConsultingClinician[CareProvider].Name"
* clinicalStatus -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].OriginalText"
* verificationStatus -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].OriginalText"
* recorder -> "Diagnosis.DiagnosingClinician"

Mapping: vpr-to-ConditionEncounterDiagnosis
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ConditionEncounterDiagnosis
* code.coding.code -> "visit.icd [m] (>80-.01)\nvisit.icd [m] (>80-1.1)\nvisit.icd [m] (>80-10)\nvisit.reason (>80-.01)\nvisit.reason (>80-1.1)\nvisit.reason (>80-10)"
* recordedDate -> "visit.dateTime\nvisit.visitString"