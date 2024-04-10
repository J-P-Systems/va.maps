Profile: LaboratoryResultsCytopathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsCytopathologySpecimen
Title: "Laboratory Results: Cytopathology Specimen"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsCytopathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsCytopathologySpecimen
* accessionIdentifier -> "1693: source value from CYTOPATHOLOGY - CYTOPATH ACC # (63.09-.06)"
* type.text -> "1695: source value from CYTOPATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (63.09-.012 > 63.902-.01)"

Mapping: cdw-to-LaboratoryResultsCytopathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsCytopathologySpecimen
* accessionIdentifier -> "Pathology.Cytopathology.CytopathAccessionNumber"
* type.text -> "Pathology.CytoSpecimen.CytopathologySpecimen"