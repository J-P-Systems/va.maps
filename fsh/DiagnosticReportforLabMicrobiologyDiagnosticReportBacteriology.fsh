Profile: DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
Title: "Diagnostic Report for Lab: Microbiology {DiagnosticReport}: Bacteriology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
* conclusion -> "1442: source value from MICROBIOLOGY - BACT RPT REMARK > BACT RPT REMARK - BACT RPT REMARK (#63.05-13 > 63.33-.01)"

Mapping: cdw-to-DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportBacteriology
* conclusion -> "Micro.BacteriologyReports.BacteriologyReportRemark"