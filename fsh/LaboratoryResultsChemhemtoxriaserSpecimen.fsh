Profile: LaboratoryResultsChemhemtoxriaserSpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LaboratoryResultsChemhemtoxriaserSpecimen
Title: "Laboratory Results: Chem, hem, tox, ria, ser Specimen"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (#63.04) to Specimen"
* ^status = #draft
* accessionIdentifier and type.text MS

Mapping: vista-to-LaboratoryResultsChemhemtoxriaserSpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsChemhemtoxriaserSpecimen
* accessionIdentifier -> "849: source value from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (#63.04-.06)"
* type.text -> "859: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (#63.04-.35 > 63.07-9 > 62-.01)"

Mapping: cdw-to-LaboratoryResultsChemhemtoxriaserSpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsChemhemtoxriaserSpecimen
* accessionIdentifier -> "Chem.LabChem.ShortAccessionNumber\nChem.PatientLabChem.ShortAccessionNumber"