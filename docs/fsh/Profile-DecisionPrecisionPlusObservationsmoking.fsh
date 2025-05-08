Profile: DecisionPrecisionPlusObservationsmoking
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus
Id: DecisionPrecisionPlusObservationsmoking
Title: "Decision Precision Plus Observation[smoking]"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to us-core-smokingstatus."
* ^status = #draft
* valueCodeableConcept and code and dataAbsentReason and effectiveDateTime and note and encounter and category and status MS
* encounter only Reference(EncounterOutpatient)
* valueCodeableConcept from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningFind
* valueCodeableConcept ^binding.description = "see mapping [VF_DPPLungCancerScreeningFind](ConceptMap-VF-DPPLungCancerScreeningFind.html)"
* valueCodeableConcept obeys dppo-39-2222
* code obeys dppo-39-2222-1
* dataAbsentReason from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningDec
* dataAbsentReason ^binding.description = "see mapping [VF_DPPLungCancerScreeningDec](ConceptMap-VF-DPPLungCancerScreeningDec.html)"
* dataAbsentReason obeys dppo-39-2232
* category = #social-history
* status = #final

Invariant: dppo-39-2222
Description: "If VF_DPPLungCancerScreeningFind then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningFind"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-39-2222-1
Description: "If VF_DPPLungCancerScreeningFind then fixed value http://loinc.org#72166-2 \"Tobacco smoking status NHIS\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-39-2232
Description: "If In VF_DPPLungCancerScreeningDec then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningDec"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DecisionPrecisionPlusObservationsmoking
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusObservationsmoking
* valueCodeableConcept -> "2222: terminologyMaps using VF_DPPLungCancerScreeningFind on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if VF_DPPLungCancerScreeningFind"
* code -> "2222-1: fixed value = http://loinc.org#72166-2 \"Tobacco smoking status NHIS\" if VF_DPPLungCancerScreeningFind" "generated from mapParameter line 1"
* dataAbsentReason -> "2232: terminologyMaps using VF_DPPLungCancerScreeningDec on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningDec" "Open: what's the question that is not answered?"
* effectiveDateTime -> "2227: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* note -> "2228: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"
* encounter -> "2229: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* category -> "2230: fixed value = #social-history"
* status -> "2231: fixed value = #final"

Mapping: cdw-to-DecisionPrecisionPlusObservationsmoking
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlusObservationsmoking
* valueCodeableConcept -> "HF.HealthFactor.HealthFactorTypeIEN"
* dataAbsentReason -> "HF.HealthFactor.HealthFactorTypeIEN"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusObservationsmoking
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusObservationsmoking
* valueCodeableConcept -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* dataAbsentReason -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"

Mapping: vpr-to-DecisionPrecisionPlusObservationsmoking
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: DecisionPrecisionPlusObservationsmoking
* valueCodeableConcept -> "healthFactor.category (>9999999.64-.03),healthFactor.name (>9999999.64-.01)"
* dataAbsentReason -> "healthFactor.category (>9999999.64-.03),healthFactor.name (>9999999.64-.01)"
* note -> "healthFactor.comment"
* encounter -> "healthFactor.encounter,healthFactor.facility (>9000010-.06),healthFactor.recorded (>9000010-.01)"