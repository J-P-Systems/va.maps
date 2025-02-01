Profile: VAERSAdverseEvent
Parent: http://hl7.org/fhir/StructureDefinition/AdverseEvent
Id: VAERSAdverseEvent
Title: "VAERS AdverseEvent"
Description: "This StructureDefinition contains the maps for ADERS to AdverseEvent."
* ^status = #draft
* outcome.coding ^slicing.discriminator.type = #value
* outcome.coding ^slicing.discriminator.path = "$this"
* outcome.coding ^slicing.rules = #open
* outcome.coding contains va-outcome1 0..1 and va-outcome2 0..1 and va-outcome3 0..1 and va-outcome8 0..1 and va-outcome9 0..1 and va-outcome10 0..1 and va-outcome13 0..1 and va-outcome11 0..1 and va-outcome12 0..1
* subject and actuality and date and event.coding and outcome.coding[va-outcome1] and outcome.coding[va-outcome2] and outcome.coding[va-outcome3] and outcome.coding[va-outcome8] and outcome.coding[va-outcome9] and outcome.coding[va-outcome10] and outcome.coding[va-outcome13] and outcome.coding[va-outcome11] and outcome.coding[va-outcome12] and suspectEntity.instance MS
* subject only Reference(VAERSPatient)
* suspectEntity.instance only Reference(VAERSImmunizationvac1)
* actuality = #actual

Mapping: source-to-VAERSAdverseEvent
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSAdverseEvent
* subject -> "1877: reference based on ADERS - 0_Pt_ICN_Full"
* actuality -> "1877-1: fixed value = #actual" "generated from mapParameter row 1"
* date -> "1881: transform using concat(4_VacDate, 4_VacTime)"
* event.coding -> "1905: transform using parseCodesFromText()" "Multiple event codes in coding"
* outcome.coding[va-outcome1] -> "1906: source value based on ADERS - 21_VAE_Outcome_DrVisit"
* outcome.coding[va-outcome2] -> "1907: source value based on ADERS - 21_VAE_Outcome_ErED"
* outcome.coding[va-outcome3] -> "1908: source value based on ADERS - 21_HospStay" "See Encounter & Location for details"
* outcome.coding[va-outcome8] -> "1913: source value based on ADERS - 21_ProlongHospStay"
* outcome.coding[va-outcome9] -> "1914: source value based on ADERS - 21_LTI"
* outcome.coding[va-outcome10] -> "1915: source value based on ADERS - 21_Dis"
* outcome.coding[va-outcome13] -> "1916: source value based on ADERS - 21_Death"
* outcome.coding[va-outcome11] -> "1918: source value based on ADERS - 21_CA_BD"
* outcome.coding[va-outcome12] -> "1919: source value based on ADERS - 21_NOA"
* suspectEntity.instance -> "1972: reference"