Profile: LabObservationMicrobiologyVirology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirology
Title: "Lab Observation: Microbiology Virology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* code and status MS
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Mapping: vista-to-LabObservationMicrobiologyVirology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirology
* code -> "1529: fixed value = http://loinc.org#42808-6 Virus identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* status -> "1492: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - VIROLOGY REPORT STATUS (63.05-34)"

Mapping: cdw-to-LabObservationMicrobiologyVirology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirology
* status -> "Micro.Microbiology.VirologyReportStatus"