Profile: ConditionProblem
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns
Id: ConditionProblem
Title: "Condition: Problem"
Description: "This StructureDefinition contains the maps for VistA file PROBLEM (9000011) to us-core-condition-problems-health-concerns."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|7.0.0"
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains va-icd 0..1
* category[us-core] and identifier.value and identifier.system and clinicalStatus and code.coding[va-icd] and code.coding[va-icd].system and code.coding[va-icd].code and code.coding.code and code.coding.system and code.text and subject and onsetDateTime and recordedDate and recorder and verificationStatus and abatementDateTime MS
* subject only Reference(Patient)
* category[us-core] = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* identifier.system = "http://va.gov/identifiers/$Sta3n/9000011"
* clinicalStatus obeys cp-16-349
* code.coding[va-icd].system = "urn:see-termmap-in-mapParameter"
* code.coding.system = "http://snomed.info/sct"
* clinicalStatus from http://va.gov/fhir/ValueSet/problemStatus
* clinicalStatus ^binding.description = "see mapping [VF_problemStatus](ConceptMap-VF-problemStatus.html)"
* verificationStatus from http://va.gov/fhir/ValueSet/problemVerificationStatus
* verificationStatus ^binding.description = "see mapping [VF_problemVerificationStatus](ConceptMap-VF-problemVerificationStatus.html)"

Invariant: cp-16-349
Description: "If (9000011-1.07) is Not Null then fixed value #resolved"
Severity: #warning
Expression: "true"

Mapping: source-to-ConditionProblem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ConditionProblem
* category[us-core] -> "1607: fixed value = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item"
* identifier.value -> "345: source value based on PROBLEM - IEN (9000011-.001)"
* identifier.system -> "345-1: fixed value = http://va.gov/identifiers/$Sta3n/9000011" "generated from mapParameter line 1"
* clinicalStatus -> "349: fixed value = #resolved when PROBLEM - DATE RESOLVED (9000011-1.07) if Not Null" "dependency on 605?"
* code.coding[va-icd] -> "365: source value based on PROBLEM - DIAGNOSIS > ICD DIAGNOSIS (9000011-.01 > 80-)"
* code.coding[va-icd].system -> "365-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* code.coding[va-icd].code -> "365-2: source value based on PROBLEM - DIAGNOSIS > ICD DIAGNOSIS - CODE NUMBER (9000011-.01 > 80-.01)" "generated from mapParameter line 2"
* code.coding.code -> "366: source value based on PROBLEM - SNOMED CT CONCEPT CODE (9000011-80001)"
* code.coding.system -> "366-1: fixed value = http://snomed.info/sct" "generated from mapParameter line 1"
* code.text -> "957: source value based on PROBLEM - PROVIDER NARRATIVE (9000011-.05)"
* subject -> "367: reference based on PROBLEM - PATIENT NAME > PATIENT/IHS - NAME (9000011-.02 > 9000001-.01)"
* onsetDateTime -> "369: source value based on PROBLEM - DATE OF ONSET (9000011-.13)"
* recordedDate -> "371: source value based on PROBLEM - DATE ENTERED (9000011-.08)"
* recorder -> "373: source value based on PROBLEM - RECORDING PROVIDER (9000011-1.04)"
* clinicalStatus -> "605: terminologyMaps using VF_problemStatus on PROBLEM - STATUS (9000011-.12)"
* verificationStatus -> "611: terminologyMaps using VF_problemVerificationStatus on PROBLEM - CONDITION (9000011-1.02)"
* abatementDateTime -> "1761: source value based on PROBLEM - DATE RESOLVED (9000011-1.07)"
* extension[assertedDate].valueDateTime -> "2042: target not supported" "auto added because of must-support"

Mapping: cdw-to-ConditionProblem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ConditionProblem
* clinicalStatus -> "Outpat.ProblemList.ResolvedDateTime"
* code.coding[va-icd] -> "Outpat.ProblemList.ICDIEN"
* code.coding[va-icd].code -> "Outpat.ProblemList.ICDIEN\nDim.ICD10.ICD10Code,Dim.ICD9.ICD9Code"
* code.coding.code -> "Outpat.ProblemList.SNOMEDCTConceptCode"
* code.text -> "Outpat.ProblemList.ProviderNarrativeIEN"
* subject -> "Outpat.ProblemList.PatientIEN"
* onsetDateTime -> "Outpat.ProblemList.OnsetDateTime"
* recordedDate -> "Outpat.ProblemList.EnteredDateTime"
* recorder -> "Outpat.ProblemList.RecordingProviderIEN"
* clinicalStatus -> "Outpat.ProblemList.ActiveFlag"
* verificationStatus -> "Outpat.ProblemList.ProblemListCondition"
* abatementDateTime -> "Outpat.ProblemList.ResolvedDateTime"

Mapping: sda-to-ConditionProblem
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ConditionProblem
* clinicalStatus -> "Problem.Extension[ProblemExtension].ToTime"
* code.coding.code -> "Problem.Extension[ProblemExtension].Problem"
* code.text -> "Problem.Extension[ProblemExtension].ProblemDetails"
* onsetDateTime -> "Problem.Extension[ProblemExtension].FromTime,Problem.Extension[ProblemExtension].OnsetDate"
* recordedDate -> "Problem.EnteredOn"
* clinicalStatus -> "Problem.Extension[ProblemExtension].Status"
* verificationStatus -> "Problem.Extension[ProblemExtension].IsRemoved,Problem.Extension[ProblemExtension].IsVerified,Problem.Extension[ProblemExtension].Removed"
* abatementDateTime -> "Problem.Extension[ProblemExtension].ToTime"