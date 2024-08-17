Profile: VAERSImmunization-vac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-vac4
Title: "VAERS Immunization-vac4"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: vista-to-VAERSImmunization-vac4
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSImmunization-vac4
* vaccineCode -> "1899: source value from ADERS - 17_Vac4_TypeBrand"
* manufacturer.display -> "1900: source value from ADERS - 17_Vac4_Mfgr"
* lotNumber -> "1901: source value from ADERS - 17_Vac4_Lot"
* route -> "1902: source value from ADERS - 17_Vac4_Route"
* site -> "1903: source value from ADERS - 17_Vac4_Site"
* protocolApplied.doseNumberString -> "1904: source value from ADERS - 17_Vac4_DoseInSeries"

Mapping: cdw-to-VAERSImmunization-vac4
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac4