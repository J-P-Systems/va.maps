Profile: LaboratoryResultsMicrobiologyParasitologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsMicrobiologyParasitologySpecimen
Title: "Laboratory Results: Microbiology Parasitology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsMicrobiologyParasitologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyParasitologySpecimen
* accessionIdentifier -> "1469: source value from MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value from MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyParasitologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyParasitologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Dim.CollectionSample.CollectionSample,Dim.Topography.CollectionSample"