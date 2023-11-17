Profile: LabObservationChemhemtoxriaserSpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationChemhemtoxriaserSpecimen
Title: "Lab Observation: Chem, hem, tox, ria, ser {Specimen}"
Description: "This StructureDefinition contains the maps for VistA CHEM, HEM, TOX, RIA, SER, etc. (file 63.04) to FHIR Specimen"
* ^status = #draft

Mapping: vista-to-LabObservationChemhemtoxriaserSpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "849: source value from CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (#63.04-.06)" "@MZ: ref-issue: Should be split into Specimen"
* type.text -> "859: source value from CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (#63.04-.35 > 63.07-9 > 62-.01)" "@MZ: ref-issue: Should be split into Specimen"

Mapping: cdw-to-LabObservationChemhemtoxriaserSpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "Chem.LabChem.ShortAccessionNumber\nChem.PatientLabChem.ShortAccessionNumber"