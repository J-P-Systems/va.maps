Profile: DecisionPrecisionPlusObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: DecisionPrecisionPlusObservation
Title: "DecisionPrecisionPlus Observation"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to Observation."
* ^status = #draft
* dataAbsentReason MS
* dataAbsentReason from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningDec
* dataAbsentReason ^binding.description = "see mapping [VF_DPPLungCancerScreeningDec](ConceptMap-VF-DPPLungCancerScreeningDec.html)"
* dataAbsentReason obeys dppo-32-2232

Invariant: dppo-32-2232
Description: "If In VF_DPPLungCancerScreeningSIT then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningDec"
Severity: #warning
Expression: "true"

Mapping: source-to-DecisionPrecisionPlusObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusObservation
* dataAbsentReason -> "2232: terminologyMaps using VF_DPPLungCancerScreeningDec on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningSIT" "Open: what's the question that is not answered?"

Mapping: cdw-to-DecisionPrecisionPlusObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlusObservation
* dataAbsentReason -> "HF.HealthFactor.HealthFactorTypeIEN"

Mapping: sda-to-DecisionPrecisionPlusObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusObservation
* dataAbsentReason -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"