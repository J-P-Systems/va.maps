Profile: LabObservationMicrobiologyVirologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirologyObservation
Title: "Lab Observation: Microbiology Virology Observation"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSundefined

Mapping: vista-to-LabObservationMicrobiologyVirologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyObservation
* code -> "1529: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03 > 95.03-) case NULL"
* status -> "1492: terminologyMaps using null on MICROBIOLOGY - VIROLOGY REPORT STATUS (#63.05-34)"

Mapping: cdw-to-LabObservationMicrobiologyVirologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirologyObservation
* status -> "Micro.Microbiology.VirologyReportStatus"