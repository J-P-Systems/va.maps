Profile: LaboratoryResultsMicrobiologyMycologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsMicrobiologyMycologyObservation
Title: "Laboratory Results: Microbiology Mycology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LaboratoryResultsMicrobiologyMycologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyMycologyObservation
* code -> "1527: fixed value = http://loinc.org#42804-5 Fungus identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1490: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - MYCOLOGY RPT STATUS (#63.05-19)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyMycologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyMycologyObservation
* status -> "Micro.Microbiology.MycologyReportStatus"