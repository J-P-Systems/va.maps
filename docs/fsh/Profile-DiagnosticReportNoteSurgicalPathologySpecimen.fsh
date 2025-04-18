Profile: DiagnosticReportNoteSurgicalPathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: DiagnosticReportNoteSurgicalPathologySpecimen
Title: "Diagnostic Report Note: Surgical Pathology Specimen"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (63.08) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-DiagnosticReportNoteSurgicalPathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteSurgicalPathologySpecimen
* accessionIdentifier -> "1702: source value based on SURGICAL PATHOLOGY - SURGICAL PATH ACC # (63.08-.06)"
* type.text -> "1703: source value based on SURGICAL PATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (63.08-.012 > 63.812-.01)"

Mapping: cdw-to-DiagnosticReportNoteSurgicalPathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteSurgicalPathologySpecimen
* accessionIdentifier -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"
* type.text -> "Pathology.SurgPathSpecimen.Specimen"