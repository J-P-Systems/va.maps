Profile: LabObservationMicrobiologyObservationVirology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyObservationVirology
Title: "Lab Observation: Microbiology {Observation}: Virology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR Observation"
* ^status = #draft
* code obeys inv-15
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Invariant: inv-15
Description: "1529: fixed value without value? if MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
Severity: #warning

Mapping: vista-to-LabObservationMicrobiologyObservationVirology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyObservationVirology
* code -> "1529: fixed value without value? if MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
* status -> "1492: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - VIROLOGY REPORT STATUS (#63.05-34)"

Mapping: cdw-to-LabObservationMicrobiologyObservationVirology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyObservationVirology
* status -> "Micro.Microbiology.VirologyReportStatus"