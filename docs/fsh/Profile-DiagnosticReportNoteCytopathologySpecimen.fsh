Profile: DiagnosticReportNoteCytopathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: DiagnosticReportNoteCytopathologySpecimen
Title: "Diagnostic Report Note: Cytopathology Specimen"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-DiagnosticReportNoteCytopathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteCytopathologySpecimen
* accessionIdentifier -> "1693: source value based on CYTOPATHOLOGY - CYTOPATH ACC # (63.09-.06)"
* type.text -> "1695: source value based on CYTOPATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (63.09-.012 > 63.902-.01)"

Mapping: cdw-to-DiagnosticReportNoteCytopathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteCytopathologySpecimen
* accessionIdentifier -> "Pathology.Cytopathology.CytopathAccessionNumber"
* type.text -> "Pathology.CytoSpecimen.CytopathologySpecimen"