Profile: LabObservationCytopathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationCytopathologySpecimen
Title: "Lab Observation: Cytopathology {Specimen}"
Description: "This StructureDefinition contains the maps for VistA CYTOPATHOLOGY (file 63.09) to FHIR Specimen"
* ^status = #draft

Mapping: vista-to-LabObservationCytopathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationCytopathologySpecimen
* accessionIdentifier -> "1473: source value from CYTOPATHOLOGY - CYTOPATH ACC # (#63.09-.06)" "@MZ: ref-issue: Should be split into Specimen"
* type.text -> "1474: source value from CYTOPATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (#63.09-.012 > 63.902-.01)" "@MZ: ref-issue: Should be split into Specimen"

Mapping: cdw-to-LabObservationCytopathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationCytopathologySpecimen
* accessionIdentifier -> "Pathology.Cytopathology.CytopathAccessionNumber"
* type.text -> "Pathology.CytoSpecimen.CytopathologySpecimen"