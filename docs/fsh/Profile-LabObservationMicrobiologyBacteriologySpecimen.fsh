Profile: LabObservationMicrobiologyBacteriologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationMicrobiologyBacteriologySpecimen
Title: "Lab Observation: Microbiology Bacteriology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationMicrobiologyBacteriologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologySpecimen
* accessionIdentifier -> "1469: source value based on MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value based on MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Micro.Microbiology.CollectionSampleIEN\nDim.CollectionSample.CollectionSample\nDim.Topography.CollectionSample"

Mapping: sda-to-LabObservationMicrobiologyBacteriologySpecimen
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationMicrobiologyBacteriologySpecimen
* accessionIdentifier -> "LabOrder.Extension[ResultExtension].GroupName"