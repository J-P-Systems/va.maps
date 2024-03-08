Profile: LabObservationDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationDiagnosticReport
Title: "Lab Observation DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file LABORATORY TEST (#60) to us-core-diagnosticreport-lab"
* ^status = #draft
* category and category.text and code.coding and code.text and subject and result MS
* category = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* result only Reference(LabObservationObservation)

Mapping: vista-to-LabObservationDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationDiagnosticReport
* category -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WLKD CODE - WKLD CODE LAB SECTION > WLKD CODE LAB SECT - NAME (#60-64 > 64-13 > 64.21-.01)" "Lab Section"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (#60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.text -> "1661: source value from LABORATORY TEST - NAME (#60-.01)" "Added the lab test name (non-standardized)"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (#2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Lab Observation"

Mapping: cdw-to-LabObservationDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationDiagnosticReport
* code.text -> "Dim.LabChemTest.LabChemTestName"
* subject -> "Micro.AntibioticSensitivity.LRDFN\nMicro.AntibioticSensitivityComment.LRDFN\nPathology.Autopsy.LRDFN\nMicro.BacteriologyReports.LRDFN\nPathology.CytoOrganTissueFunction.StaffIEN\nMicro.MicroAntibioticLevel.LRDFN\nMicro.MicroAudit.LRDFN\nMicro.Microbiology.LRDFN\nMicro.MicroOrderedTest.LRDFN\nMicro.MicroSterilityResults.LRDFN\nMicro.MycobacteriologyReports.LRDFN\nMicro.Mycology.LRDFN\nMicro.MycologyReports.LRDFN\nMicro.Parasitology.LRDFN\nMicro.ParasitologyReports.LRDFN\nMicro.ParasitologyStage.LRDFN\nSStaff.SMicroOrderedTest.LRDFN\nMicro.Virology.LRDFN\nMicro.VirologyReports.LRDFN"