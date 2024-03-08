Profile: LabObservationMicrobiologyMycobacteriologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriologyObservation
Title: "Lab Observation: Microbiology Mycobacteriology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status and valueString MS

Mapping: vista-to-LabObservationMicrobiologyMycobacteriologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyObservation
* code -> "1526: fixed value = http://loinc.org#9825-1 Mycobacterium sp identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1491: terminologyMaps using null on MICROBIOLOGY - TB RPT STATUS (#63.05-23)"
* valueString -> "1519: source value from MICROBIOLOGY - ACID FAST STAIN (#63.05-24)"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologyObservation
* status -> "Micro.Microbiology.MycobacteriologyReportStatus"
* valueString -> "Micro.Microbiology.AcidFastStain"