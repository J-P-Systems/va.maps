Profile: LaboratoryResultsMicrobiologyVirologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsMicrobiologyVirologySpecimen
Title: "Laboratory Results: Microbiology Virology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsMicrobiologyVirologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyVirologySpecimen
* accessionIdentifier -> "1469: source value from MICROBIOLOGY - MICROBIOLOGY ACCESSION (#63.05-.06)"
* type.text -> "1470: source value from MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (#63.05-.055 > 62-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyVirologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyVirologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Dim.CollectionSample.CollectionSample,Dim.Topography.CollectionSample"