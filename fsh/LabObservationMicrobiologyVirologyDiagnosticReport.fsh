Profile: LabObservationMicrobiologyVirologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyVirologyDiagnosticReport
Title: "Lab Observation: Microbiology Virology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LabObservationMicrobiologyVirologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyDiagnosticReport
* conclusion -> "1446: source value from MICROBIOLOGY - VIROLOGY RPT REMARK > VIROLOGY RPT REMARK - VIROLOGY RPT REMARK (#63.05-37 > 63.44-.01)"

Mapping: cdw-to-LabObservationMicrobiologyVirologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirologyDiagnosticReport
* conclusion -> "Micro.VirologyReports.VirologyReportRemark"