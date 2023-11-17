Profile: LabObservationObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationObservation
Title: "Lab Observation {Observation}"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR Observation"
* ^status = #draft
* category.coding.code obeys inv-9

Invariant: inv-9
Description: "843: fixed value = laboratory"
Severity: #warning

Mapping: vista-to-LabObservationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationObservation
* category.coding.code -> "843: fixed value = laboratory"
* subject -> "844: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (#2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN\nMicro.AntibioticSensitivityComment.LRDFN\nPathology.Autopsy.LRDFN\nMicro.BacteriologyReports.LRDFN\nPathology.CytoOrganTissueFunction.StaffIEN\nMicro.MicroAntibioticLevel.LRDFN\nMicro.MicroAudit.LRDFN\nMicro.Microbiology.LRDFN\nMicro.MicroOrderedTest.LRDFN\nMicro.MicroSterilityResults.LRDFN\nMicro.MycobacteriologyReports.LRDFN\nMicro.Mycology.LRDFN\nMicro.MycologyReports.LRDFN\nMicro.Parasitology.LRDFN\nMicro.ParasitologyReports.LRDFN\nMicro.ParasitologyStage.LRDFN\nSStaff.SMicroOrderedTest.LRDFN\nMicro.Virology.LRDFN\nMicro.VirologyReports.LRDFN"