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
* subject and actuality and date and event.coding and event.text and outcome.coding[va-outcome1] and outcome.coding[va-outcome2] and outcome.coding[va-outcome3] and outcome.coding[va-outcome8] and outcome.coding[va-outcome9] and outcome.coding[va-outcome10] and outcome.coding[va-outcome13] and outcome.coding[va-outcome11] and outcome.coding[va-outcome12] and suspectEntity.instance MS
* subject only Reference(VAERSPatient)
* suspectEntity.instance only Reference(VAERSImmunizationvac1)
* actuality = #actual
* outcome.coding[va-outcome1] obeys vaersae-17-1906
* outcome.coding[va-outcome2] obeys vaersae-17-1907
* outcome.coding[va-outcome3] obeys vaersae-17-1908
* outcome.coding[va-outcome8] obeys vaersae-17-1913
* outcome.coding[va-outcome9] obeys vaersae-17-1914
* outcome.coding[va-outcome10] obeys vaersae-17-1915
* outcome.coding[va-outcome13] obeys vaersae-17-1916
* outcome.coding[va-outcome11] obeys vaersae-17-1918
* outcome.coding[va-outcome12] obeys vaersae-17-1919

Invariant: vaersae-17-1906
Description: "If (21-1) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#drvisit \"Doctor\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1907
Description: "If (21-2) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#ered \"Emergency Room\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1908
Description: "If (21-3) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#hospitalization \"Hospitalization\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1913
Description: "If (21-4) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#hospitalization \"Hospitalization\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1914
Description: "If (21-5) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#lti \"Life threatening illness\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1915
Description: "If (21-6) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#dis \"Disability or permanent damage\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1916
Description: "If (21-7) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#death \"Death\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1918
Description: "If (21-8) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#ca_db \"Congenital anomaly or birth defect\""
Severity: #warning
Expression: "true"

Invariant: vaersae-17-1919
Description: "If (21-9) is =1 then fixed value https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#noa \"None of the above\""
Severity: #warning
Expression: "true"

Mapping: source-to-VAERSAdverseEvent
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSAdverseEvent
* subject -> "1877: reference based on ADERS - 0_Pt_ICN_Full (0)"
* actuality -> "1877-1: fixed value = #actual" "generated from mapParameter line 1"
* date -> "1881: transform using concat(4_VacDate, 4_VacTime)"
* event.coding -> "1905: transform using parseCodesFromText() on ADERS - 18_VAE_Desc (18)" "Multiple event codes in coding"
* event.text -> "2217: source value based on ADERS - 18_VAE_Desc (18)"
* outcome.coding[va-outcome1] -> "1906: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#drvisit \"Doctor\" when ADERS - 21_VAE_Outcome_DrVisit (21-1) if =1"
* outcome.coding[va-outcome2] -> "1907: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#ered \"Emergency Room\" when ADERS - 21_VAE_Outcome_ErED (21-2) if =1"
* outcome.coding[va-outcome3] -> "1908: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#hospitalization \"Hospitalization\" when ADERS - 21_HospStay (21-3) if =1" "See Encounter & Location for details"
* outcome.coding[va-outcome8] -> "1913: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#hospitalization \"Hospitalization\" when ADERS - 21_ProlongHospStay (21-4) if =1"
* outcome.coding[va-outcome9] -> "1914: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#lti \"Life threatening illness\" when ADERS - 21_LTI (21-5) if =1"
* outcome.coding[va-outcome10] -> "1915: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#dis \"Disability or permanent damage\" when ADERS - 21_Dis (21-6) if =1"
* outcome.coding[va-outcome13] -> "1916: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#death \"Death\" when ADERS - 21_Death (21-7) if =1"
* outcome.coding[va-outcome11] -> "1918: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#ca_db \"Congenital anomaly or birth defect\" when ADERS - 21_CA_BD (21-8) if =1"
* outcome.coding[va-outcome12] -> "1919: fixed value = https://www.vaers.hhs.gov/data/datasets.html/Patientoutcomes#noa \"None of the above\" when ADERS - 21_NOA (21-9) if =1"
* suspectEntity.instance -> "1972: reference"