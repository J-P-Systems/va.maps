Profile: LabObservationMicrobiologyMycobacteriologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologyMycobacteriologySpecimen
Title: "Lab Observation: Microbiology Mycobacteriology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationMicrobiologyMycobacteriologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologySpecimen
* accessionIdentifier -> "1469: source value based on MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value based on MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Micro.Microbiology.CollectionSampleIEN\nDim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"

Mapping: sda-to-LabObservationMicrobiologyMycobacteriologySpecimen
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologyMycobacteriologySpecimen
* accessionIdentifier -> "LabOrder.Extension[ResultExtension].GroupName"