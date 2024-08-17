Profile: VAERSImmunization-pvac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-pvac4
Title: "VAERS Immunization-pvac4"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: vista-to-VAERSImmunization-pvac4
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSImmunization-pvac4
* vaccineCode -> "1941: source value from ADERS - 22_PVac4_TypeBrand"
* manufacturer.display -> "1942: source value from ADERS - 22_PVac4_Mfgr"
* lotNumber -> "1943: source value from ADERS - 22_PVac4_Lot"
* route -> "1944: source value from ADERS - 22_PVac4_Route"
* site -> "1945: source value from ADERS - 22_PVac4_Site"
* protocolApplied.doseNumberString -> "1946: source value from ADERS - 22_PVac4_DoseInSeries"
* occurrenceDateTime -> "1947: source value from ADERS - 22_PVac4_Date"

Mapping: cdw-to-VAERSImmunization-pvac4
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac4