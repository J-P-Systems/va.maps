Profile: LaboratoryResultsSurgicalPathologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LaboratoryResultsSurgicalPathologyObservation
Title: "Laboratory Results: Surgical Pathology Observation"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-observation-lab"
* ^status = #draft
* category and subject MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Mapping: vista-to-LaboratoryResultsSurgicalPathologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsSurgicalPathologyObservation
* category -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* subject -> "844: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LaboratoryResultsSurgicalPathologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsSurgicalPathologyObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Pathology.Autopsy.LRDFN,Micro.BacteriologyReports.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,SStaff.SMicroOrderedTest.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN"