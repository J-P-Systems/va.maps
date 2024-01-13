Profile: LabObservationMicrobiologyParasitologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyParasitologyObservation
Title: "Lab Observation: Microbiology Parasitology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Mapping: vista-to-LabObservationMicrobiologyParasitologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyParasitologyObservation
* code -> "1528: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
* status -> "1489: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - PARASITE RPT STATUS (#63.05-15)"

Mapping: cdw-to-LabObservationMicrobiologyParasitologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyParasitologyObservation
* status -> "Micro.Microbiology.ParasitologyReportStatus"