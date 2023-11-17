Profile: DiagnosticReportforLabDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabDiagnosticReport
Title: "Diagnostic Report for Lab {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR DiagnosticReport"
* ^status = #draft
* category.coding obeys inv-2
* code.coding obeys inv-3

Invariant: inv-2
Description: "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074|LAB"
Severity: #warning

Invariant: inv-3
Description: "1521: fixed value without value?"
Severity: #warning

Mapping: vista-to-DiagnosticReportforLabDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabDiagnosticReport
* category.coding -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074|LAB"
* code.coding -> "1521: fixed value without value?"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (#2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Lab Observation (#null)"

Mapping: cdw-to-DiagnosticReportforLabDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabDiagnosticReport
* subject -> "Micro.AntibioticSensitivity.LRDFN\nMicro.AntibioticSensitivityComment.LRDFN\nPathology.Autopsy.LRDFN\nMicro.BacteriologyReports.LRDFN\nPathology.CytoOrganTissueFunction.StaffIEN\nMicro.MicroAntibioticLevel.LRDFN\nMicro.MicroAudit.LRDFN\nMicro.Microbiology.LRDFN\nMicro.MicroOrderedTest.LRDFN\nMicro.MicroSterilityResults.LRDFN\nMicro.MycobacteriologyReports.LRDFN\nMicro.Mycology.LRDFN\nMicro.MycologyReports.LRDFN\nMicro.Parasitology.LRDFN\nMicro.ParasitologyReports.LRDFN\nMicro.ParasitologyStage.LRDFN\nSStaff.SMicroOrderedTest.LRDFN\nMicro.Virology.LRDFN\nMicro.VirologyReports.LRDFN"