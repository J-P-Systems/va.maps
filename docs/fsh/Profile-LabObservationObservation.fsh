Profile: LabObservationObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationObservation
Title: "Lab Observation Observation"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-observation-lab."
* ^status = #draft
* ^abstract = true
* category[Laboratory] and subject MS
* subject only Reference(Patient)
* category[Laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory

Mapping: source-to-LabObservationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationObservation
* category[Laboratory] -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* dataAbsentReason -> "2031: target not supported" "because of must-support"
* subject -> "844: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN\nMicro.AntibioticSensitivityComment.LRDFN\nMicro.BacteriologyReports.LRDFN\nMicro.MicroAntibioticLevel.LRDFN\nMicro.MicroAudit.LRDFN\nMicro.Microbiology.LRDFN\nMicro.MicroOrderedTest.LRDFN\nMicro.MicroSterilityResults.LRDFN\nMicro.MycobacteriologyReports.LRDFN\nMicro.Mycology.LRDFN\nMicro.MycologyReports.LRDFN\nMicro.Parasitology.LRDFN\nMicro.ParasitologyReports.LRDFN\nMicro.ParasitologyStage.LRDFN\nMicro.Virology.LRDFN\nMicro.VirologyReports.LRDFN\nPathology.Autopsy.LRDFN\nPathology.CytoOrganTissueFunction.StaffIEN\nSStaff.SMicroOrderedTest.LRDFN"

Mapping: sda-to-LabObservationObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationObservation
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"

Mapping: vpr-to-LabObservationObservation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LabObservationObservation
* subject -> "demographics.lrdfn"