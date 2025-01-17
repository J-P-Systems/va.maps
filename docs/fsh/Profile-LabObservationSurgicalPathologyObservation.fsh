Profile: LabObservationSurgicalPathologyObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationSurgicalPathologyObservation
Title: "Lab Observation: Surgical Pathology Observation"
Description: "This StructureDefinition contains the maps for VistA file PATIENT (2) to us-core-observation-lab."
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
* status -> "2044: target not supported" "auto added because of must-support"
* code -> "2045: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2046: target not supported" "auto added because of must-support"
* valueQuantity -> "2047: target not supported" "auto added because of must-support"
* valueCodeableConcept -> "2048: target not supported" "auto added because of must-support"
* valueString -> "2049: target not supported" "auto added because of must-support"
* category -> "843: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#laboratory"
* dataAbsentReason -> "2031: target not supported" "because of must-support"
* subject -> "844: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"

Mapping: cdw-to-LabObservationSurgicalPathologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologyObservation
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"

Mapping: sda-to-LabObservationSurgicalPathologyObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationSurgicalPathologyObservation
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"