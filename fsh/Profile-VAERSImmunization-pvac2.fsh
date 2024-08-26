Profile: VAERSImmunization-pvac2
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: VAERSImmunization-pvac2
Title: "VAERS Immunization-pvac2"
Description: "This StructureDefinition contains the maps for ADERS to Immunization"
* ^status = #draft
* vaccineCode.text and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunization-pvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-pvac2
* vaccineCode.text -> "1927: source value from ADERS - PVac2_TypeBrand (A-22.21)"
* manufacturer.display -> "1928: source value from ADERS - PVac2_Mfgr (A-22.22)"
* lotNumber -> "1929: source value from ADERS - PVac2_Lot (A-22.23)"
* route -> "1930: source value from ADERS - PVac2_Route (A-22.24)"
* site -> "1931: source value from ADERS - PVac2_Site (A-22.25)"
* protocolApplied.doseNumberString -> "1932: source value from ADERS - PVac2_DoseInSeries (A-22.26)"
* occurrenceDateTime -> "1933: source value from ADERS - PVac2_Date (A-22.27)"

Mapping: cdw-to-VAERSImmunization-pvac2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac2