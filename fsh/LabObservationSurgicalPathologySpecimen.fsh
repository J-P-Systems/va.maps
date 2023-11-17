Profile: LabObservationSurgicalPathologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationSurgicalPathologySpecimen
Title: "Lab Observation: Surgical Pathology {Specimen}"
Description: "This StructureDefinition contains the maps for VistA SURGICAL PATHOLOGY (file 63.08) to FHIR Specimen"
* ^status = #draft

Mapping: vista-to-LabObservationSurgicalPathologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologySpecimen
* accessionIdentifier -> "1471: source value from SURGICAL PATHOLOGY - SURGICAL PATH ACC # (#63.08-.06)" "@MZ: ref-issue: Should be split into Specimen"
* type.text -> "1472: source value from SURGICAL PATHOLOGY - SPECIMEN > SPECIMEN - SPECIMEN (#63.08-.012 > 63.812-.01)" "@MZ: ref-issue: Should be split into Specimen"

Mapping: cdw-to-LabObservationSurgicalPathologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologySpecimen
* accessionIdentifier -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"
* type.text -> "Pathology.SurgPathSpecimen.Specimen"