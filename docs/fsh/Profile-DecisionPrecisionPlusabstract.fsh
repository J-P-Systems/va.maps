Profile: DecisionPrecisionPlusabstract
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: DecisionPrecisionPlusabstract
Title: "DecisionPrecisionPlus: abstract"
Description: "This StructureDefinition contains the maps for VistA file V HEALTH FACTORS (9000010.23) to Observation."
* ^status = #draft
* ^abstract = true
* effectiveDateTime and note and encounter and category and status MS
* encounter only Reference(EncounterOutpatient)
* category = #social-history
* status = #final

Mapping: source-to-DecisionPrecisionPlusabstract
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DecisionPrecisionPlusabstract
* effectiveDateTime -> "2227: source value based on V HEALTH FACTORS - EVENT DATE AND TIME (9000010.23-1201)"
* note -> "2228: source value based on V HEALTH FACTORS - COMMENTS (9000010.23-81101)"
* encounter -> "2229: reference based on V HEALTH FACTORS - VISIT (9000010.23-.03)"
* category -> "2230: fixed value = #social-history"
* status -> "2231: fixed value = #final"

Mapping: cdw-to-DecisionPrecisionPlusabstract
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DecisionPrecisionPlusabstract
* effectiveDateTime -> "HF.HealthFactor.EventDateTime"
* note -> "HF.HealthFactor.Comments"
* encounter -> "HF.HealthFactor.VisitDateTime,HF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusabstract
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusabstract
* effectiveDateTime -> "SocialHistory.FromTime,Vaccination.FromTime,Vaccination.ToTime,FamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments,Vaccination.Administration.RefusalReason,FamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber,SocialHistory.EnteredAt,SocialHistory.EnteredBy,SocialHistory.EnteredOn,Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.EnteredBy,Vaccination.EnteredOn,Vaccination.Administration.AdministeredAtLocation,FamilyHistory.EncounterNumber,FamilyHistory.EnteredAt,FamilyHistory.EnteredBy,FamilyHistory.EnteredOn"