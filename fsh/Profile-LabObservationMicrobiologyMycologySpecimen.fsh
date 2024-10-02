Profile: LabObservationMicrobiologyMycologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologyMycologySpecimen
Title: "Lab Observation: Microbiology Mycology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationMicrobiologyMycologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycologySpecimen
* accessionIdentifier -> "1469: source value from MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value from MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologyMycologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Micro.Microbiology.CollectionSampleIEN\nDim.CollectionSample.CollectionSample,Dim.Topography.CollectionSample"

Mapping: vpr-to-LabObservationMicrobiologyMycologySpecimen
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: LabObservationMicrobiologyMycologySpecimen
* type.text -> "Dim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"