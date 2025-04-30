Profile: DecisionPrecisionPlusObservationsituation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: DecisionPrecisionPlusObservationsituation
Title: "Decision Precision Plus Observation[situation]"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to Observation."
* ^status = #draft
* dataAbsentReason and effectiveDateTime and note and encounter and category and status MS
* encounter only Reference(EncounterOutpatient)
* dataAbsentReason from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningDec
* dataAbsentReason ^binding.description = "see mapping [VF_DPPLungCancerScreeningDec](ConceptMap-VF-DPPLungCancerScreeningDec.html)"
* dataAbsentReason obeys dppo-41-2232
* category = #social-history
* status = #final

Invariant: dppo-41-2232
Description: "If In VF_DPPLungCancerScreeningSIT then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningDec"
Severity: #warning
Expression: "true"

Mapping: source-to-DecisionPrecisionPlusObservationsituation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusObservationsituation
* dataAbsentReason -> "2232: terminologyMaps using VF_DPPLungCancerScreeningDec on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningSIT" "Open: what's the question that is not answered?"
* effectiveDateTime -> "2227: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* note -> "2228: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"
* encounter -> "2229: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* category -> "2230: fixed value = #social-history"
* status -> "2231: fixed value = #final"

Mapping: cdw-to-DecisionPrecisionPlusObservationsituation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlusObservationsituation
* dataAbsentReason -> "HF.HealthFactor.HealthFactorTypeIEN"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusObservationsituation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusObservationsituation
* dataAbsentReason -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"

Mapping: vpr-to-DecisionPrecisionPlusObservationsituation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: DecisionPrecisionPlusObservationsituation
* dataAbsentReason -> "healthFactor.category (>9999999.64-.03),healthFactor.name (>9999999.64-.01)"
* note -> "healthFactor.comment"
* encounter -> "healthFactor.encounter,healthFactor.facility (>9000010-.06),healthFactor.recorded (>9000010-.01)"