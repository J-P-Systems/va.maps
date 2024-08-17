Profile: VAERSAdverseEvent
Parent: http://hl7.org/fhir/StructureDefinition/AdverseEvent
Id: VAERSAdverseEvent
Title: "VAERS AdverseEvent"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to AdverseEvent"
* ^status = #draft
* subject and actuality and date and event and outcome MS
* subject only Reference(VAERSPatient)
* actuality = #actual

Mapping: vista-to-VAERSAdverseEvent
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSAdverseEvent
* subject -> "1877: reference from ADERS - 0_Pt_ICN_Full"
* actuality -> "1877-1: fixed value = #actual" "from mapParameter 1"
* date -> "1881: transform using concat(4_VacDate, 4_VacTime)"
* event -> "1905: source value from ADERS - 18_VAE_Desc"
* outcome -> "1906: source value from ADERS - 21_VAE_Outcome_DrVisit"
* outcome -> "1907: source value from ADERS - 21_VAE_Outcome_ErED"
* outcome -> "1908: source value from ADERS - 21_HospStay"
* outcome -> "1909: source value from ADERS - 21_HospStay_NumDays"
* outcome -> "1910: source value from ADERS - 21_HospStay_Name"
* outcome -> "1911: source value from ADERS - 21_HospStay_City"
* outcome -> "1912: source value from ADERS - 21_HospStay_State"
* outcome -> "1913: source value from ADERS - 21_ProlongHospStay"
* outcome -> "1914: source value from ADERS - 21_LTI"
* outcome -> "1915: source value from ADERS - 21_Dis"
* outcome -> "1918: source value from ADERS - 21_CA_BD"
* outcome -> "1919: source value from ADERS - 21_NOA"

Mapping: cdw-to-VAERSAdverseEvent
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSAdverseEvent