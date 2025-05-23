Profile: LabObservationMicrobiologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologySpecimen
Title: "Lab Observation: Microbiology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen."
* ^status = #active
* ^abstract = true
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationMicrobiologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologySpecimen
* accessionIdentifier -> "1469: source value based on MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value based on MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Micro.Microbiology.CollectionSampleIEN\nDim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"

Mapping: sda-to-LabObservationMicrobiologySpecimen
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologySpecimen
* accessionIdentifier -> "LabOrder.Extension[ResultExtension].GroupName"