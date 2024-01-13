Profile: LabObservationMicrobiologyMycobacteriologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyMycobacteriologyDiagnosticReport
Title: "Lab Observation: Microbiology Mycobacteriology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LabObservationMicrobiologyMycobacteriologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyDiagnosticReport
* conclusion -> "1445: source value from MICROBIOLOGY - TB RPT REMARK > TB RPT REMARK - TB RPT REMARK (#63.05-27 > 63.41-.01)"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologyDiagnosticReport
* conclusion -> "Micro.MycobacteriologyReports.MycobacteriologyReportRemark"