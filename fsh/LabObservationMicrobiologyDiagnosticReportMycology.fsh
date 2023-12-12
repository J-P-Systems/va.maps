Profile: LabObservationMicrobiologyDiagnosticReportMycology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyDiagnosticReportMycology
Title: "Lab Observation: Microbiology {DiagnosticReport}: Mycology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-LabObservationMicrobiologyDiagnosticReportMycology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyDiagnosticReportMycology
* conclusion -> "1444: source value from MICROBIOLOGY - MYCOLOGY RPT REMARK > MYCOLOGY RPT REMARK - MYCOLOGY RPT REMARK (#63.05-21 > 63.38-.01)"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReportMycology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReportMycology
* conclusion -> "Micro.MycologyReports.MycologyReportRemark"