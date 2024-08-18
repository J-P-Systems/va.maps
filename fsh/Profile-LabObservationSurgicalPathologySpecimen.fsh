Profile: LabObservationSurgicalPathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationSurgicalPathologySpecimen
Title: "Lab Observation: Surgical Pathology Specimen"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (63.08) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationSurgicalPathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologySpecimen
* accessionIdentifier -> "1702: source value from SURGICAL PATHOLOGY - SURGICAL PATH ACC # (63.08-.06)"
* type.text -> "1703: source value from SURGICAL PATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (63.08-.012 > 63.812-.01)"

Mapping: cdw-to-LabObservationSurgicalPathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologySpecimen
* accessionIdentifier -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"
* type.text -> "Pathology.SurgPathSpecimen.Specimen"