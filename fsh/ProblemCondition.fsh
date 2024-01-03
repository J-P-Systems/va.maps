Profile: ProblemCondition
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: ProblemCondition
Title: "Problem {Condition}"
Description: "This StructureDefinition contains the maps for VistA file PROBLEM (#9000011) to us-core-condition-problems-health-concerns"
* ^status = #draft
* category obeys inv-0
* clinicalStatus from http://va.gov/fhir/ValueSet/VSVFproblemStatus
* verificationStatus from http://va.gov/fhir/ValueSet/VSVFproblemVerificationStatus

Invariant: inv-0
Description: "1607: fixed value = http://terminology.hl7.org/CodeSystem/condition-category|problem-list-item when PROBLEM - . (#9000011-)"
Severity: #warning

Mapping: vista-to-ProblemCondition
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProblemCondition
* category -> "1607: fixed value = http://terminology.hl7.org/CodeSystem/condition-category|problem-list-item when PROBLEM - . (#9000011-)" "QA"
* identifier.value -> "345: source value from PROBLEM - IEN (#9000011-.001)"
* clinicalStatus -> "349: transform using \"resolved\" on PROBLEM - DATE RESOLVED (#9000011-1.07) case Not Null" "dependency on 605?"
* code -> "365: source value from PROBLEM - DIAGNOSIS > ICD DIAGNOSIS (#9000011-.01 > 80-)"
* code.coding.code -> "366: source value from PROBLEM - SNOMED CT CONCEPT CODE (#9000011-80001)"
* code.text -> "957: source value from PROBLEM - PROVIDER NARRATIVE (#9000011-.05)"
* code -> "958: source value from PROBLEM - MAPPING TARGETS > MAPPING TARGETS (#9000011-80300 > 9000011.803-)" "\"complications, comorbidities, and compound diagnoses\""
* subject -> "367: reference from PROBLEM - PATIENT NAME (#9000011-.02)"
* onsetDateTime -> "369: source value from PROBLEM - DATE OF ONSET (#9000011-.13)"
* recordedDate -> "371: source value from PROBLEM - DATE ENTERED (#9000011-.08)"
* recorder -> "373: source value from PROBLEM - RECORDING PROVIDER (#9000011-1.04)"
* clinicalStatus -> "605: terminologyMaps using VF_problemStatus on PROBLEM - STATUS (#9000011-.12)"
* verificationStatus -> "611: terminologyMaps using VF_problemVerificationStatus on PROBLEM - CONDITION (#9000011-1.02)"

Mapping: cdw-to-ProblemCondition
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProblemCondition
* clinicalStatus -> "Outpat.ProblemList.ResolvedDateTime"
* code -> "Outpat.ProblemList.ICDIEN"
* code.coding.code -> "Outpat.ProblemList.SNOMEDCTConceptCode"
* code.text -> "Outpat.ProblemList.ProviderNarrativeIEN"
* subject -> "Outpat.ProblemList.PatientIEN"
* onsetDateTime -> "Outpat.ProblemList.OnsetDateTime"
* recordedDate -> "Outpat.ProblemList.EnteredDateTime"
* recorder -> "Outpat.ProblemList.RecordingProviderIEN"
* clinicalStatus -> "Outpat.ProblemList.ActiveFlag"
* verificationStatus -> "Outpat.ProblemList.ProblemListCondition"