Profile: LabObservationMicrobiologyObservationMycobacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyObservationMycobacteriology
Title: "Lab Observation: Microbiology {Observation}: Mycobacteriology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-observation-lab"
* ^status = #draft
* code obeys inv-12
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Invariant: inv-12
Description: "1526: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
Severity: #warning

Mapping: vista-to-LabObservationMicrobiologyObservationMycobacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyObservationMycobacteriology
* code -> "1526: fixed value without value? when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.05-.35 > 63.5-13 > 60-100 > 60.01-95.03) case NULL"
* status -> "1491: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - TB RPT STATUS (#63.05-23)"
* valueString -> "1519: source value from MICROBIOLOGY - ACID FAST STAIN (#63.05-24)"

Mapping: cdw-to-LabObservationMicrobiologyObservationMycobacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyObservationMycobacteriology
* status -> "Micro.Microbiology.MycobacteriologyReportStatus"
* valueString -> "Micro.Microbiology.AcidFastStain"