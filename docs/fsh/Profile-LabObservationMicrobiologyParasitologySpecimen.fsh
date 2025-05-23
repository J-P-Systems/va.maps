Profile: LabObservationMicrobiologyParasitologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologyParasitologySpecimen
Title: "Lab Observation: Microbiology Parasitology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationMicrobiologyParasitologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyParasitologySpecimen
* accessionIdentifier -> "1469: source value based on MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value based on MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologyParasitologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyParasitologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Micro.Microbiology.CollectionSampleIEN\nDim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"

Mapping: sda-to-LabObservationMicrobiologyParasitologySpecimen
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologyParasitologySpecimen
* accessionIdentifier -> "LabOrder.Extension[ResultExtension].GroupName"