Profile: LaboratoryResultsMicrobiologyVirologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyVirologyDiagnosticReport
Title: "Laboratory Results: Microbiology Virology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LaboratoryResultsMicrobiologyVirologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyVirologyDiagnosticReport
* conclusion -> "1446: source value from MICROBIOLOGY - VIROLOGY RPT REMARK > VIROLOGY RPT REMARK - VIROLOGY RPT REMARK (#63.05-37 > 63.44-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyVirologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyVirologyDiagnosticReport
* conclusion -> "Micro.VirologyReports.VirologyReportRemark"