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
* vaccineCode -> "1934: source value from ADERS - 22_PVac3_TypeBrand (A-22.31)"
* manufacturer.display -> "1935: source value from ADERS - 22_PVac3_Mfgr (A-22.32)"
* lotNumber -> "1936: source value from ADERS - 22_PVac3_Lot (A-22.33)"
* route -> "1937: source value from ADERS - 22_PVac3_Route (A-22.34)"
* site -> "1938: source value from ADERS - 22_PVac3_Site (A-22.35)"
* protocolApplied.doseNumberString -> "1939: source value from ADERS - 22_PVac3_DoseInSeries (A-22.36)"
* occurrenceDateTime -> "1940: source value from ADERS - 22_PVac3_Date (A-22.37)"

Mapping: cdw-to-VAERSImmunization-pvac3
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac3