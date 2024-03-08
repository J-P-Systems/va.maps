Profile: LaboratoryResultsMicrobiologyParasitologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsMicrobiologyParasitologyObservation
Title: "Laboratory Results: Microbiology Parasitology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS

Mapping: vista-to-LaboratoryResultsMicrobiologyParasitologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyParasitologyObservation
* code -> "1528: fixed value = http://loinc.org#42807-8 Parasite identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1489: terminologyMaps using null on MICROBIOLOGY - PARASITE RPT STATUS (#63.05-15)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyParasitologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyParasitologyObservation
* status -> "Micro.Microbiology.ParasitologyReportStatus"