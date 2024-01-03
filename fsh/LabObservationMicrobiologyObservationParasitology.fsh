Profile: LabObservationMicrobiologyObservationParasitology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyObservationParasitology
Title: "Lab Observation: Microbiology {Observation}: Parasitology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code obeys inv-14
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Invariant: inv-14
Description: "1528: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
Severity: #warning

Mapping: vista-to-LabObservationMicrobiologyObservationParasitology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyObservationParasitology
* code -> "1528: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
* status -> "1489: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - PARASITE RPT STATUS (#63.05-15)"

Mapping: cdw-to-LabObservationMicrobiologyObservationParasitology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyObservationParasitology
* status -> "Micro.Microbiology.ParasitologyReportStatus"