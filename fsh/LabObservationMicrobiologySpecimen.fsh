Profile: LabObservationMicrobiologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologySpecimen
Title: "Lab Observation: Microbiology {Specimen}"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to Specimen"
* ^status = #draft

Mapping: vista-to-LabObservationMicrobiologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologySpecimen
* accessionIdentifier -> "1469: source value from MICROBIOLOGY - MICROBIOLOGY ACCESSION (#63.05-.06)"
* type.text -> "1470: source value from MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (#63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Dim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"