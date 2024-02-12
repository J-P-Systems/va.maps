Profile: LabObservationMicrobiologyMycologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycologyObservation
Title: "Lab Observation: Microbiology Mycology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSundefined

Mapping: vista-to-LabObservationMicrobiologyMycologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycologyObservation
* code -> "1527: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1490: terminologyMaps using null on MICROBIOLOGY - MYCOLOGY RPT STATUS (#63.05-19)"

Mapping: cdw-to-LabObservationMicrobiologyMycologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycologyObservation
* status -> "Micro.Microbiology.MycologyReportStatus"