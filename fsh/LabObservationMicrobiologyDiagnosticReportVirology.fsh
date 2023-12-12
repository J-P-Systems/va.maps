Profile: LabObservationMicrobiologyDiagnosticReportVirology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyDiagnosticReportVirology
Title: "Lab Observation: Microbiology {DiagnosticReport}: Virology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-LabObservationMicrobiologyDiagnosticReportVirology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyDiagnosticReportVirology
* conclusion -> "1446: source value from MICROBIOLOGY - VIROLOGY RPT REMARK > VIROLOGY RPT REMARK - VIROLOGY RPT REMARK (#63.05-37 > 63.44-.01)"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReportVirology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReportVirology
* conclusion -> "Micro.VirologyReports.VirologyReportRemark"