Profile: SmokingStatusObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus
Id: SmokingStatusObservation
Title: "Smoking Status Observation"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to us-core-smokingstatus."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-smokingstatus|7.0.0"
* identifier.value and identifier.system and status and category[SocialHistory] and code and subject and encounter and effectiveDateTime and performer and valueCodeableConcept and valueCodeableConcept.text and note.text MS
* subject only Reference(Patient)
* encounter only Reference(EncounterOutpatient)
* performer only Reference(Practitioner)
* identifier.system = "http://va.gov/identifiers/$Sta3n/9000010.23"
* status = #final
* category[SocialHistory] = http://terminology.hl7.org/CodeSystem/observation-category#social-history
* code obeys sso-24-1244
* code obeys sso-24-1862
* valueCodeableConcept from http://va.gov/fhir/ValueSet/SmokingStatus
* valueCodeableConcept ^binding.description = "see mapping [VF_SmokingStatus](ConceptMap-VF-SmokingStatus.html)"

Invariant: sso-24-1244
Description: "If (9000010.23-.01 > 9999999.64-.03) is TOBACCO [C] then fixed value http://loinc.org#72166-2"
Severity: #warning
Expression: "true"

Invariant: sso-24-1862
Description: "If (9000010.23-.01 > 9999999.64-.03) is Not TOBACCO [C] then exclude record"
Severity: #warning
Expression: "true"

Mapping: source-to-SmokingStatusObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: SmokingStatusObservation
* identifier.value -> "1241: source value based on V HEALTH FACTORS - IEN (9000010.23-.001)"
* identifier.system -> "1241-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010.23" "generated from mapParameter line 1"
* status -> "1242: fixed value = #final"
* category[SocialHistory] -> "1243: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#social-history"
* code -> "1244: fixed value = http://loinc.org#72166-2 when V HEALTH FACTORS - HEALTH FACTOR > HEALTH FACTORS - CATEGORY (9000010.23-.01 > 9999999.64-.03) if TOBACCO [C]"
* code -> "1862: exclude record if Not TOBACCO [C]"
* subject -> "1245: reference based on V HEALTH FACTORS - PATIENT NAME > PATIENT/IHS - NAME (9000010.23-.02 > 9000001-.01)"
* encounter -> "1246: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* effectiveDateTime -> "1247: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* performer -> "1248: reference based on V HEALTH FACTORS - ENCOUNTER PROVIDER (9000010.23-1204)" "Only encounter provider is in CDW, so ordering provider was not included at this time. If ordering provider needs to be included in the future, will need to determine a way to distinguish ordering provider from encounter provider in the practitioner resource."
* valueCodeableConcept -> "1249: terminologyMaps using VF_SmokingStatus on V HEALTH FACTORS - HEALTH FACTOR > HEALTH FACTORS - FACTOR (9000010.23-.01 > 9999999.64-.01)" "If duplicates occur, the latest instance only should be sent."
* valueCodeableConcept.text -> "1249-1: source value based on V HEALTH FACTORS - HEALTH FACTOR > HEALTH FACTORS - FACTOR (9000010.23-.01 > 9999999.64-.01)" "generated from mapParameter line 1"
* note.text -> "1250: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"

Mapping: cdw-to-SmokingStatusObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: SmokingStatusObservation
* code -> "HF.HealthFactor.HealthFactorTypeIEN\nDim.HealthFactorType.CategoryHealthFactorTypeIEN"
* code -> "HF.HealthFactor.HealthFactorTypeIEN\nDim.HealthFactorType.CategoryHealthFactorTypeIEN"
* subject -> "HF.HealthFactor.PatientIEN"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* performer -> "HF.HealthFactor.EncounterStaffIEN"
* valueCodeableConcept -> "HF.HealthFactor.HealthFactorTypeIEN\nDim.HealthFactorType.HealthFactorCategory,Dim.HealthFactorType.HealthFactorType"
* valueCodeableConcept.text -> "HF.HealthFactor.HealthFactorTypeIEN\nDim.HealthFactorType.HealthFactorCategory,Dim.HealthFactorType.HealthFactorType"
* note.text -> "HF.HealthFactor.Comments"

Mapping: sda-to-SmokingStatusObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: SmokingStatusObservation
* code -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* code -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* performer -> "Vaccination.Administration.AdministeringProvider"
* valueCodeableConcept -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description\nVaccination.OrderItem[Order].Description"
* valueCodeableConcept.text -> "SocialHistory.SocialHabit,SocialHistory.SocialHabitCategory,SocialHistory.Extension[SocialHistoryExtension].Category,SocialHistory.Extension[SocialHistoryExtension].QuantityLabel,SocialHistory.SocialHabitCategory.Description,Vaccination.OrderItem,FamilyHistory.Diagnosis,FamilyHistory.Extension[FamilyHistoryExtension].Category,FamilyHistory.Diagnosis.Description\nVaccination.OrderItem[Order].Description"
* note.text -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"