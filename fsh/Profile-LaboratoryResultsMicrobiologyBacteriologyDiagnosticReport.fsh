Profile: LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
Title: "Laboratory Results: Microbiology Bacteriology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
* conclusion -> "1442: source value from MICROBIOLOGY - BACT RPT REMARK > BACT RPT REMARK - BACT RPT REMARK (#63.05-13 > 63.33-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyBacteriologyDiagnosticReport
* conclusion -> "Micro.BacteriologyReports.BacteriologyReportRemark"