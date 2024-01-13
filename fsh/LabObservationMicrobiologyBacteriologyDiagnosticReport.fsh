Profile: LabObservationMicrobiologyBacteriologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyBacteriologyDiagnosticReport
Title: "Lab Observation: Microbiology Bacteriology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LabObservationMicrobiologyBacteriologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyDiagnosticReport
* conclusion -> "1442: source value from MICROBIOLOGY - BACT RPT REMARK > BACT RPT REMARK - BACT RPT REMARK (#63.05-13 > 63.33-.01)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyDiagnosticReport
* conclusion -> "Micro.BacteriologyReports.BacteriologyReportRemark"