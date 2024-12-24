Profile: ConditionEncounterDiagnosis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis
Id: ConditionEncounterDiagnosis
Title: "Condition: Encounter Diagnosis"
Description: "This StructureDefinition contains the maps for VistA file V POV (9000010.07) to us-core-condition-encounter-diagnosis."
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis|6.1.0"
* category[us-core] and identifier.value and identifier.system and code and code.coding.system and code.coding.code and subject and encounter and onsetDateTime and recordedDate and clinicalStatus and verificationStatus and recorder MS
* subject only Reference(Patient)
* recorder only Reference(Practitioner)
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis
* identifier.system = "http://va.gov/identifiers/$Sta3n/9000010.07"
* code.coding.system = "urn:see-termmap-in-mapParameter"
* clinicalStatus from http://va.gov/fhir/ValueSet/encounterProblemStatus
* verificationStatus from http://va.gov/fhir/ValueSet/encounterProblemVerificationStatus

Mapping: source-to-ConditionEncounterDiagnosis
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ConditionEncounterDiagnosis
* category[us-core] -> "1608: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#encounter-diagnosis"
* identifier.value -> "346: source value from V POV - IEN (9000010.07-.001)"
* identifier.system -> "346-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010.07" "from mapParameter 1"
* code -> "1613: source value from V POV - POV > ICD DIAGNOSIS (9000010.07-.01 > 80-)"
* code.coding.system -> "1613-1: fixed value = urn:see-termmap-in-mapParameter" "from mapParameter 1"
* code.coding.code -> "1613-2: source value from V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)" "from mapParameter 2"
* subject -> "1611: reference from V POV - PATIENT NAME (9000010.07-.02)" "We have patient resource; unclear why name is repeated"
* encounter -> "368: source value from V POV - VISIT (9000010.07-.03)"
* onsetDateTime -> "370: source value from V POV - DATE OF INJURY (9000010.07-.13)"
* recordedDate -> "372: source value from V POV - VISIT > VISIT - VISIT/ADMIT DATE&TIME (9000010.07-.03 > 9000010-.01)" "Added the sub file and field"
* clinicalStatus -> "604: terminologyMaps using VF_encounterProblemStatus on V POV - MODIFIER (9000010.07-.06)"
* verificationStatus -> "606: terminologyMaps using VF_encounterProblemVerificationStatus on V POV - MODIFIER (9000010.07-.06)"
* abatementDateTime -> "1766: target not supported" "abatementDate is must support"
* recorder -> "1833: reference from V POV - ENCOUNTER PROVIDER (9000010.07-1204)"

Mapping: cdw-to-ConditionEncounterDiagnosis
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ConditionEncounterDiagnosis
* code -> "Outpat.VDiagnosis.ICDIEN,Outpat.WorkloadVDiagnosis.ICDIEN"
* code.coding.code -> "Outpat.VDiagnosis.ICDIEN,Outpat.WorkloadVDiagnosis.ICDIEN\nDim.ICD10.ICD10Code,Dim.ICD9.ICD9Code"
* subject -> "Outpat.VDiagnosis.PatientIEN,Outpat.WorkloadVDiagnosis.PatientIEN"
* encounter -> "Outpat.VDiagnosis.VisitDateTime,Outpat.VDiagnosis.VisitIEN,Outpat.WorkloadVDiagnosis.VisitDateTime,Outpat.WorkloadVDiagnosis.VisitIEN"
* onsetDateTime -> "Outpat.VDiagnosis.InjuryDateTime,Outpat.WorkloadVDiagnosis.InjuryDateTime"
* recordedDate -> "Outpat.VDiagnosis.VisitDateTime,Outpat.VDiagnosis.VisitIEN,Outpat.WorkloadVDiagnosis.VisitDateTime,Outpat.WorkloadVDiagnosis.VisitIEN\nImmun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* clinicalStatus -> "Outpat.VDiagnosis.Modifier,Outpat.WorkloadVDiagnosis.Modifier"
* verificationStatus -> "Outpat.VDiagnosis.Modifier,Outpat.WorkloadVDiagnosis.Modifier"
* recorder -> "Outpat.VDiagnosis.EncounterProviderIEN,Outpat.WorkloadVDiagnosis.EncounterProviderIEN"

Mapping: sda-to-ConditionEncounterDiagnosis
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ConditionEncounterDiagnosis
* code -> "Diagnosis.Diagnosis,Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* code.coding.code -> "Diagnosis.Diagnosis,Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* encounter -> "Diagnosis.EncounterNumber,Diagnosis.EnteredAt,Diagnosis.EnteredBy,Diagnosis.EnteredOn,Diagnosis.FromTime,Diagnosis.ToTime"
* onsetDateTime -> "Diagnosis.OnsetTime"
* recordedDate -> "Diagnosis.EncounterNumber,Diagnosis.EnteredAt,Diagnosis.EnteredBy,Diagnosis.EnteredOn,Diagnosis.FromTime,Diagnosis.ToTime\nEncounter.ConsultingClinician[CareProvider].Description,Encounter.ConsultingClinician[CareProvider].Name"
* clinicalStatus -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].OriginalText"
* verificationStatus -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].OriginalText"
* recorder -> "Diagnosis.DiagnosingClinician"