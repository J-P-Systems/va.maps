Profile: LaboratoryResultsElectronMicroscopySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsElectronMicroscopySpecimen
Title: "Laboratory Results: Electron Microscopy Specimen"
Description: "This StructureDefinition contains the maps for VistA file EM (63.02) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsElectronMicroscopySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsElectronMicroscopySpecimen
* accessionIdentifier -> "1698: source value from EM - EM ACC # (63.02-.06)" "There could be more data to map for specimen, but mapped the minimum because it is not in US Core and not sure if this is data to be shown to the patient @MZ: ref-issue: Should be split into Specimen"
* type.text -> "1699: source value from EM - SPECIMEN > SPECIMEN - SPECIMEN (63.02-.012 > 63.202-.01)"

Mapping: cdw-to-LaboratoryResultsElectronMicroscopySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsElectronMicroscopySpecimen
* accessionIdentifier -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"
* type.text -> "Pathology.EMSpecimen.ElectronMicroscopySpecimen"