Profile: VAERSImmunization-pvac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-pvac3
Title: "VAERS Immunization-pvac3"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunization-pvac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-pvac3
* vaccineCode -> "1934: source value from ADERS - 22_PVac3_TypeBrand"
* manufacturer.display -> "1935: source value from ADERS - 22_PVac3_Mfgr"
* lotNumber -> "1936: source value from ADERS - 22_PVac3_Lot"
* route -> "1937: source value from ADERS - 22_PVac3_Route"
* site -> "1938: source value from ADERS - 22_PVac3_Site"
* protocolApplied.doseNumberString -> "1939: source value from ADERS - 22_PVac3_DoseInSeries"
* occurrenceDateTime -> "1940: source value from ADERS - 22_PVac3_Date"

Mapping: cdw-to-VAERSImmunization-pvac3
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac3