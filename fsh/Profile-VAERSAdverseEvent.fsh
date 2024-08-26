Profile: VAERSAdverseEvent
Parent: http://hl7.org/fhir/StructureDefinition/AdverseEvent
Id: VAERSAdverseEvent
Title: "VAERS AdverseEvent"
Description: "This StructureDefinition contains the maps for ADERS to AdverseEvent"
* ^status = #draft
* subject and actuality and date and event and outcome and suspectEntity.instance MS
* subject only Reference(VAERSPatient)
* suspectEntity.instance only Reference(VAERSImmunization-vac1)
* actuality = #actual

Mapping: source-to-VAERSAdverseEvent
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSAdverseEvent
* subject -> "1877: reference from ADERS - Pt_ICN_Full (A-0)"
* actuality -> "1877-1: fixed value = #actual" "from mapParameter 1"
* date -> "1881: transform using concat(4_VacDate, 4_VacTime) on ADERS - (A-)"
* event -> "1905: source value from ADERS - VAE_Desc (A-18)" "split the source value in event.codings → medra codes + displays\nAnd put source in event.text"
* outcome -> "1906: source value from ADERS - VAE_Outcome_DrVisit (A-21.11)"
* outcome -> "1907: source value from ADERS - VAE_Outcome_ErED (A-21.12)"
* outcome -> "1908: source value from ADERS - HospStay (A-21.21)"
* outcome -> "1909: source value from ADERS - HospStay_NumDays (A-21.22)"
* outcome -> "1910: source value from ADERS - HospStay_Name (A-21.23)"
* outcome -> "1911: source value from ADERS - HospStay_City (A-21.24)"
* outcome -> "1912: source value from ADERS - HospStay_State (A-21.25)"
* outcome -> "1913: source value from ADERS - ProlongHospStay (A-21.3)"
* outcome -> "1914: source value from ADERS - LTI (A-21.4)"
* outcome -> "1915: source value from ADERS - Dis (A-21.5)"
* outcome -> "1918: source value from ADERS - CA_BD (A-21.8)"
* outcome -> "1919: source value from ADERS - NOA (A-21.9)"
* suspectEntity.instance -> "1972: reference"

Mapping: cdw-to-VAERSAdverseEvent
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSAdverseEvent