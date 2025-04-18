Profile: DecisionPrecisionPlusObservationsocial
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-social-history
Id: DecisionPrecisionPlusObservationsocial
Title: "DecisionPrecisionPlus Observation[social]"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to us-core-observation-social-history."
* ^status = #draft
* code and valueQuantity.value and valueQuantity.code and valueDateTime and effectiveDateTime and note and encounter and category and status MS
* encounter only Reference(EncounterOutpatient)
* code from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOE
* code ^binding.description = "see mapping [VF_DPPLungCancerScreeningOE](ConceptMap-VF-DPPLungCancerScreeningOE.html)"
* code obeys dppo-38-2223
* valueQuantity.value obeys dppo-38-2224
* valueQuantity.code obeys dppo-38-2225
* valueDateTime obeys dppo-38-2226
* category = #social-history
* status = #final

Invariant: dppo-38-2223
Description: "If In VF_DPPLungCancerScreeningOE then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningOE"
Severity: #warning
Expression: "true"

Invariant: dppo-38-2224
Description: "If In VF_DPPLungCancerScreeningOEQ then source value from (9000010.23-220)"
Severity: #warning
Expression: "true"

Invariant: dppo-38-2225
Description: "If In VF_DPPLungCancerScreeningOEQ then source value from (9000010.23-221)"
Severity: #warning
Expression: "true"

Invariant: dppo-38-2226
Description: "If In VF_DPPLungCancerScreeningOET then source value from (9000010.23-220)"
Severity: #warning
Expression: "true"

Mapping: source-to-DecisionPrecisionPlusObservationsocial
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "2223: terminologyMaps using VF_DPPLungCancerScreeningOE on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningOE"
* valueQuantity.value -> "2224: source value based on V HEALTH FACTORS - MAGNITUDE (9000010.23-220) if In VF_DPPLungCancerScreeningOEQ"
* valueQuantity.code -> "2225: source value based on V HEALTH FACTORS - UCUM CODE (9000010.23-221) if In VF_DPPLungCancerScreeningOEQ"
* valueDateTime -> "2226: source value based on V HEALTH FACTORS - MAGNITUDE (9000010.23-220) if In VF_DPPLungCancerScreeningOET" "I don't see magnitude values in CDW for the Year HF"
* effectiveDateTime -> "2227: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* note -> "2228: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"
* encounter -> "2229: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* category -> "2230: fixed value = #social-history"
* status -> "2231: fixed value = #final"

Mapping: cdw-to-DecisionPrecisionPlusObservationsocial
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "HF.HealthFactor.HealthFactorTypeIEN"
* valueQuantity.value -> "HF.HealthFactor.Magnitude"
* valueQuantity.code -> "HF.HealthFactor.UCUMCodeIEN"
* valueDateTime -> "HF.HealthFactor.Magnitude"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusObservationsocial
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* valueQuantity.value -> "SocialHistory.Extension[SocialHistoryExtension].Quantity"
* valueDateTime -> "SocialHistory.Extension[SocialHistoryExtension].Quantity"
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"