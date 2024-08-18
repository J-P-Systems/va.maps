Profile: LabObservationCytopathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationCytopathologySpecimen
Title: "Lab Observation: Cytopathology Specimen"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationCytopathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationCytopathologySpecimen
* accessionIdentifier -> "1693: source value from CYTOPATHOLOGY - CYTOPATH ACC # (63.09-.06)"
* type.text -> "1695: source value from CYTOPATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (63.09-.012 > 63.902-.01)"

Mapping: cdw-to-LabObservationCytopathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationCytopathologySpecimen
* accessionIdentifier -> "Pathology.Cytopathology.CytopathAccessionNumber"
* type.text -> "Pathology.CytoSpecimen.CytopathologySpecimen"