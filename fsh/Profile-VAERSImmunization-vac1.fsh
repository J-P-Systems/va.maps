Profile: VAERSImmunization-vac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-vac1
Title: "VAERS Immunization-vac1"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-immunization"
* ^status = #draft
* occurrenceDateTime and patient and vaccineCode.text and route.text and manufacturer.display and lotNumber and site and protocolApplied.doseNumberString MS
* patient only Reference(VAERSPatient)

Mapping: vista-to-VAERSImmunization-vac1
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSImmunization-vac1
* occurrenceDateTime -> "1875: transform using concat(4_VacDate, 4_VacTime)"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* vaccineCode.text -> "1878: source value from ADERS - 17_Vac1_TypeBrand" "coding.display not really makes sense, since there is no code"
* route.text -> "1879: source value from ADERS - 17_Vac1_Route"
* manufacturer.display -> "1883: source value from ADERS - 17_Vac1_Mfgr"
* lotNumber -> "1884: source value from ADERS - 17_Vac1_Lot"
* site -> "1885: source value from ADERS - 17_Vac1_Site"
* protocolApplied.doseNumberString -> "1886: source value from ADERS - 17_Vac1_DoseInSeries"

Mapping: cdw-to-VAERSImmunization-vac1
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac1