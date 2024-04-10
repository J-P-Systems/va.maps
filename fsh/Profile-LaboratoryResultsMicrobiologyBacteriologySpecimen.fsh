Profile: LaboratoryResultsMicrobiologyBacteriologySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsMicrobiologyBacteriologySpecimen
Title: "Laboratory Results: Microbiology Bacteriology Specimen"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsMicrobiologyBacteriologySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyBacteriologySpecimen
* accessionIdentifier -> "1469: source value from MICROBIOLOGY - MICROBIOLOGY ACCESSION (63.05-.06)"
* type.text -> "1470: source value from MICROBIOLOGY - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.05-.055 > 62-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyBacteriologySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyBacteriologySpecimen
* accessionIdentifier -> "Micro.Microbiology.MicrobiologyAccession"
* type.text -> "Dim.CollectionSample.CollectionSample,Dim.Topography.CollectionSample"