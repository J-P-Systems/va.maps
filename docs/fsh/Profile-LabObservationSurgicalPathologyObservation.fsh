Profile: LabObservationSurgicalPathologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationSurgicalPathologyObservation
Title: "Lab Observation: Surgical Pathology Observation"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-observation-lab"
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* category and subject MS
* subject only Reference(Patient)
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Mapping: source-to-LabObservationSurgicalPathologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologyObservation
* category -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* dataAbsentReason -> "2031: target not supported" "because of must-support"
* subject -> "844: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationSurgicalPathologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologyObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"

Mapping: vpr-to-LabObservationSurgicalPathologyObservation
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: LabObservationSurgicalPathologyObservation
* subject -> "demographics.lrdfn"