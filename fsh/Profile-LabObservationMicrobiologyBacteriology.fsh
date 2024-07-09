Profile: LabObservationMicrobiologyBacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriology
Title: "Lab Observation: Microbiology Bacteriology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* status MS
* status from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus

Mapping: vista-to-LabObservationMicrobiologyBacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriology
* status -> "1488: terminologyMaps using VF_LabObservationStatus on MICROBIOLOGY - BACT RPT STATUS (63.05-11.5)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriology
* status -> "Micro.Microbiology.BacteriologyReportStatus"