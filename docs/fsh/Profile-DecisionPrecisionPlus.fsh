Profile: DecisionPrecisionPlus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-social-history
Id: DecisionPrecisionPlus
Title: "DecisionPrecisionPlus"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to us-core-observation-social-history."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-social-history|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-social-history|7.0.0"
* valueCodeableConcept and code and valueQuantity.value and valueQuantity.code and effectiveDateTime and note and encounter and category and status and dataAbsentReason MS
* valueCodeableConcept obeys dpp-21-2222
* code obeys dpp-21-2222-1
* code obeys dpp-21-2223
* valueQuantity.value obeys dpp-21-2224
* valueQuantity.code obeys dpp-21-2225
* category = #social-history
* status = #final
* dataAbsentReason obeys dpp-21-2232

Invariant: dpp-21-2222
Description: "If finding then source value from (9000010.23-.01)"
Severity: #warning
Expression: "true"

Invariant: dpp-21-2222-1
Description: "If finding then fixed value http://loinc.org#72166-2 \"Tobacco smoking status NHIS\""
Severity: #warning
Expression: "true"

Invariant: dpp-21-2223
Description: "If observable then source value from (9000010.23-.01)"
Severity: #warning
Expression: "true"

Invariant: dpp-21-2224
Description: "If observable Q then source value from (9000010.23-220)"
Severity: #warning
Expression: "true"

Invariant: dpp-21-2225
Description: "If observable Q then source value from (9000010.23-221)"
Severity: #warning
Expression: "true"

Invariant: dpp-21-2232
Description: "If situation then source value from (9000010.23-.01)"
Severity: #warning
Expression: "true"

Mapping: source-to-DecisionPrecisionPlus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlus
* valueCodeableConcept -> "2222: source value based on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if finding"
* code -> "2222-1: fixed value = http://loinc.org#72166-2 \"Tobacco smoking status NHIS\" if finding" "generated from mapParameter line 1"
* code -> "2223: source value based on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if observable"
* valueQuantity.value -> "2224: source value based on V HEALTH FACTORS - MAGNITUDE (9000010.23-220) if observable Q"
* valueQuantity.code -> "2225: source value based on V HEALTH FACTORS - UCUM CODE (9000010.23-221) if observable Q"
* effectiveDateTime -> "2227: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* note -> "2228: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"
* encounter -> "2229: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* category -> "2230: fixed value = #social-history"
* status -> "2231: fixed value = #final"
* dataAbsentReason -> "2232: source value based on V HEALTH FACTORS - HEALTH FACTOR (9000010.23-.01) if situation"

Mapping: cdw-to-DecisionPrecisionPlus
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlus
* valueCodeableConcept -> "HF.HealthFactor.HealthFactorTypeIEN"
* code -> "HF.HealthFactor.HealthFactorTypeIEN"
* valueQuantity.value -> "HF.HealthFactor.Magnitude"
* valueQuantity.code -> "HF.HealthFactor.UCUMCodeIEN"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"
* dataAbsentReason -> "HF.HealthFactor.HealthFactorTypeIEN"

Mapping: sda-to-DecisionPrecisionPlus
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlus
* valueCodeableConcept -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* code -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* valueQuantity.value -> "SocialHistory.Extension[SocialHistoryExtension].Quantity"
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"
* dataAbsentReason -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"