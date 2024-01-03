Profile: LabObservationMicrobiologyDiagnosticReportMycobacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyDiagnosticReportMycobacteriology
Title: "Lab Observation: Microbiology {DiagnosticReport}: Mycobacteriology"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft

Mapping: vista-to-LabObservationMicrobiologyDiagnosticReportMycobacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyDiagnosticReportMycobacteriology
* conclusion -> "1445: source value from MICROBIOLOGY - TB RPT REMARK > TB RPT REMARK - TB RPT REMARK (#63.05-27 > 63.41-.01)"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReportMycobacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReportMycobacteriology
* conclusion -> "Micro.MycobacteriologyReports.MycobacteriologyReportRemark"