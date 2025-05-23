Profile: DecisionPrecisionPlusabstract
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: DecisionPrecisionPlusabstract
Title: "Decision Precision Plus: abstract"
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
* encounter -> "HF.HealthFactor.VisitDateTime\nHF.HealthFactor.VisitIEN"

Mapping: sda-to-DecisionPrecisionPlusabstract
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DecisionPrecisionPlusabstract
* effectiveDateTime -> "SocialHistory.FromTime\nVaccination.FromTime\nVaccination.ToTime\nFamilyHistory.FromTime"
* note -> "SocialHistory.SocialHabitComments\nVaccination.Administration.RefusalReason\nFamilyHistory.NoteText"
* encounter -> "SocialHistory.EncounterNumber\nSocialHistory.EnteredAt\nSocialHistory.EnteredBy\nSocialHistory.EnteredOn\nVaccination.EncounterNumber\nVaccination.EnteredAt\nVaccination.EnteredBy\nVaccination.EnteredOn\nVaccination.Administration.AdministeredAtLocation\nFamilyHistory.EncounterNumber\nFamilyHistory.EnteredAt\nFamilyHistory.EnteredBy\nFamilyHistory.EnteredOn"

Mapping: vpr-to-DecisionPrecisionPlusabstract
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: DecisionPrecisionPlusabstract
* note -> "healthFactor.comment"
* encounter -> "healthFactor.encounter\nhealthFactor.facility (>9000010-.06)\nhealthFactor.recorded (>9000010-.01)"