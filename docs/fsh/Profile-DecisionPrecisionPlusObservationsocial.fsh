Profile: DecisionPrecisionPlusObservationsocial
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-social-history
Id: DecisionPrecisionPlusObservationsocial
Title: "Decision Precision Plus Observation[social]"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to us-core-observation-social-history."
* ^status = #draft
* code and valueQuantity.value and valueQuantity.code and valueDateTime and effectiveDateTime and note and encounter and category and status MS
* encounter only Reference(EncounterOutpatient)
* code from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOEQ
* code ^binding.description = "see mapping [VF_DPPLungCancerScreeningOEQ](ConceptMap-VF-DPPLungCancerScreeningOEQ.html)"
* code obeys dppo-38-2223
* code from http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOED
* code ^binding.description = "see mapping [VF_DPPLungCancerScreeningOED](ConceptMap-VF-DPPLungCancerScreeningOED.html)"
* code obeys dppo-38-2233
* valueQuantity.value obeys dppo-38-2224
* valueQuantity.code obeys dppo-38-2225
* valueDateTime obeys dppo-38-2226
* category = #social-history
* status = #final

Invariant: dppo-38-2223
Description: "If In VF_DPPLungCancerScreeningOEQ then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningOEQ"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-38-2233
Description: "If In VF_DPPLungCancerScreeningOED then terminologyMaps (9000010.23-.01) using VF_DPPLungCancerScreeningOED"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-38-2224
Description: "If In VF_DPPLungCancerScreeningOEQ then source value from (9000010.23-220)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-38-2225
Description: "If In VF_DPPLungCancerScreeningOEQ then source value from (9000010.23-221)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dppo-38-2226
Description: "If In VF_DPPLungCancerScreeningOED then source value from (9000010.23-220)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DecisionPrecisionPlusObservationsocial
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "2223: terminologyMaps using VF_DPPLungCancerScreeningOEQ on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningOEQ"
* code -> "2233: terminologyMaps using VF_DPPLungCancerScreeningOED on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if In VF_DPPLungCancerScreeningOED"
* valueQuantity.value -> "2224: source value based on V HEALTH FACTORS - MAGNITUDE (9000010.23-220) if In VF_DPPLungCancerScreeningOEQ"
* valueQuantity.code -> "2225: source value based on V HEALTH FACTORS - UCUM CODE (9000010.23-221) if In VF_DPPLungCancerScreeningOEQ"
* valueDateTime -> "2226: source value based on V HEALTH FACTORS - MAGNITUDE (9000010.23-220) if In VF_DPPLungCancerScreeningOED" "I don't see magnitude values in CDW for the Year HF"
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
* code -> "HF.HealthFactor.HealthFactorTypeIEN"
* valueQuantity.value -> "HF.HealthFactor.Magnitude"
* valueQuantity.code -> "HF.HealthFactor.UCUMCodeIEN"
* valueDateTime -> "HF.HealthFactor.Magnitude"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime\nHF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusObservationsocial
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "SocialHistory.SocialHabit\nSocialHistory.SocialHabitCategory\nSocialHistory.Extension[SocialHistoryExtension].Category\nSocialHistory.Extension[SocialHistoryExtension].QuantityLabel\nSocialHistory.SocialHabitCategory.Description\nVaccination.OrderItem\nFamilyHistory.Diagnosis\nFamilyHistory.Extension[FamilyHistoryExtension].Category\nFamilyHistory.Diagnosis.Description"
* code -> "SocialHistory.SocialHabit\nSocialHistory.SocialHabitCategory\nSocialHistory.Extension[SocialHistoryExtension].Category\nSocialHistory.Extension[SocialHistoryExtension].QuantityLabel\nSocialHistory.SocialHabitCategory.Description\nVaccination.OrderItem\nFamilyHistory.Diagnosis\nFamilyHistory.Extension[FamilyHistoryExtension].Category\nFamilyHistory.Diagnosis.Description"
* valueQuantity.value -> "SocialHistory.Extension[SocialHistoryExtension].Quantity"
* valueDateTime -> "SocialHistory.Extension[SocialHistoryExtension].Quantity"
* effectiveDateTime -> "SocialHistory.FromTime\nVaccination.FromTime\nVaccination.ToTime\nFamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments\nVaccination.Administration.RefusalReason\nFamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber\nSocialHistory.EnteredAt\nSocialHistory.EnteredBy\nSocialHistory.EnteredOn\nVaccination.EncounterNumber\nVaccination.EnteredAt\nVaccination.EnteredBy\nVaccination.EnteredOn\nVaccination.Administration.AdministeredAtLocation\nFamilyHistory.EncounterNumber\nFamilyHistory.EnteredAt\nFamilyHistory.EnteredBy\nFamilyHistory.EnteredOn"

Mapping: vpr-to-DecisionPrecisionPlusObservationsocial
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: DecisionPrecisionPlusObservationsocial
* code -> "healthFactor.category (>9999999.64-.03)\nhealthFactor.name (>9999999.64-.01)"
* code -> "healthFactor.category (>9999999.64-.03)\nhealthFactor.name (>9999999.64-.01)"
* note -> "healthFactor.comment"
* encounter -> "healthFactor.encounter\nhealthFactor.facility (>9000010-.06)\nhealthFactor.recorded (>9000010-.01)"