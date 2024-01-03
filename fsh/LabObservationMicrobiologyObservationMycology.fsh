Profile: LabObservationMicrobiologyObservationMycology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyObservationMycology
Title: "Lab Observation: Microbiology {Observation}: Mycology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code obeys inv-13
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Invariant: inv-13
Description: "1527: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
Severity: #warning

Mapping: vista-to-LabObservationMicrobiologyObservationMycology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyObservationMycology
* code -> "1527: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
* status -> "1490: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - MYCOLOGY RPT STATUS (#63.05-19)"

Mapping: cdw-to-LabObservationMicrobiologyObservationMycology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyObservationMycology
* status -> "Micro.Microbiology.MycologyReportStatus"