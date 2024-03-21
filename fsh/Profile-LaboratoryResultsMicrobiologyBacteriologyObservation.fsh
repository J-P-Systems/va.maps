Profile: LaboratoryResultsMicrobiologyBacteriologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsMicrobiologyBacteriologyObservation
Title: "Laboratory Results: Microbiology Bacteriology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status and valueCodeableConcept.coding and valueString and component.code and component.valueString and component.interpretation MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LaboratoryResultsMicrobiologyBacteriologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyBacteriologyObservation
* code -> "1525: fixed value = http://loinc.org#42803-7 Bacteria identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1488: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - BACT RPT STATUS (#63.05-11.5)"
* valueCodeableConcept.coding -> "1516: terminologyMaps using null on MICROBIOLOGY - URINE SCREEN (#63.05-11.57)"
* valueString -> "1517: source value from MICROBIOLOGY - SPUTUM SCREEN (#63.05-11.58)"
* valueString -> "1518: source value from MICROBIOLOGY - GRAM STAIN > GRAM STAIN - GRAM STAIN (#63.05-11.6 > 63.29-.01)"
* component.code -> "1522: transform using null on MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM (#63.05-12 > 63.3-5+to+160)" "antibiotic sensitivity\nWhat is default if no LOINC? Use text or is there a default LOINC?\n48611-8 Antibiotic tested [Identifier] against isolate"
* component.valueString -> "1523: source value from MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM (#63.05-12 > 63.3-5+to+160)" "antibiotic sensitivity.AntibioticSensitivityValue"
* component.interpretation -> "1524: terminologyMaps using null on MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM (#63.05-12 > 63.3-5.1+to+160.1)" "antibiotic sensitivity.AntibioticSensitivityInterpretation"

Mapping: cdw-to-LaboratoryResultsMicrobiologyBacteriologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyBacteriologyObservation
* status -> "Micro.Microbiology.BacteriologyReportStatus"
* valueCodeableConcept.coding -> "Micro.Microbiology.UrineScreen"
* valueString -> "Micro.Microbiology.SputumScreen"
* valueString -> "Micro.BacteriologyReports.GramStain"