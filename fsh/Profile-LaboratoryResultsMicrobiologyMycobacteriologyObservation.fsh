Profile: LaboratoryResultsMicrobiologyMycobacteriologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsMicrobiologyMycobacteriologyObservation
Title: "Laboratory Results: Microbiology Mycobacteriology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status and valueString MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LaboratoryResultsMicrobiologyMycobacteriologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyMycobacteriologyObservation
* code -> "1526: fixed value = http://loinc.org#9825-1 Mycobacterium sp identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1491: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - TB RPT STATUS (#63.05-23)"
* valueString -> "1519: source value from MICROBIOLOGY - ACID FAST STAIN (#63.05-24)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyMycobacteriologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyMycobacteriologyObservation
* status -> "Micro.Microbiology.MycobacteriologyReportStatus"
* valueString -> "Micro.Microbiology.AcidFastStain"