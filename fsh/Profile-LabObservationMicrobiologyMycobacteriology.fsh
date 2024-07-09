Profile: LabObservationMicrobiologyMycobacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriology
Title: "Lab Observation: Microbiology Mycobacteriology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Mapping: vista-to-LabObservationMicrobiologyMycobacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriology
* code -> "1526: fixed value = http://loinc.org#9825-1 Mycobacterium sp identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* status -> "1491: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - TB RPT STATUS (63.05-23)"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriology
* status -> "Micro.Microbiology.MycobacteriologyReportStatus"