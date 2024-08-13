Profile: LabObservationObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationObservation
Title: "Lab Observation Observation"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-observation-lab"
* ^status = #draft
* ^abstract = true
* subject and category MS
* subject only Reference(Patient)
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Mapping: vista-to-LabObservationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationObservation
* subject -> "844: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"
* category -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"

Mapping: cdw-to-LabObservationObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"