Profile: DiagnosticReportNoteElectronMicroscopySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: DiagnosticReportNoteElectronMicroscopySpecimen
Title: "Diagnostic Report Note: Electron Microscopy Specimen"
Description: "This StructureDefinition contains the maps for VistA file EM (63.02) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-DiagnosticReportNoteElectronMicroscopySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteElectronMicroscopySpecimen
* accessionIdentifier -> "1698: source value based on EM - EM ACC # (63.02-.06)" "There could be more data to map for specimen, but mapped the minimum because it is not in US Core and not sure if this is data to be shown to the patient @MZ: ref-issue: Should be split into Specimen"
* type.text -> "1699: source value based on EM - SPECIMEN > SPECIMEN - SPECIMEN (63.02-.012 > 63.202-.01)"

Mapping: cdw-to-DiagnosticReportNoteElectronMicroscopySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteElectronMicroscopySpecimen
* accessionIdentifier -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"
* type.text -> "Pathology.EMSpecimen.ElectronMicroscopySpecimen"