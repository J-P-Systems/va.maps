Profile: LabObservationChemhemtoxriaserSpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationChemhemtoxriaserSpecimen
Title: "Lab Observation: Chem, hem, tox, ria, ser Specimen"
Description: "This StructureDefinition contains the maps for VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04) to Specimen."
* ^status = #active
* accessionIdentifier and type.text MS

Mapping: source-to-LabObservationChemhemtoxriaserSpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "849: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ACCESSION (63.04-.06)"
* type.text -> "859: source value based on CHEM, HEM, TOX, RIA, SER, etc. - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - NAME (63.04-.35 > 63.07-9 > 62-.01)"

Mapping: cdw-to-LabObservationChemhemtoxriaserSpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "Chem.LabChem.ShortAccessionNumber,Chem.PatientLabChem.ShortAccessionNumber"

Mapping: sda-to-LabObservationChemhemtoxriaserSpecimen
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "LabOrder.Extension[ResultExtension].GroupName"

Mapping: vpr-to-LabObservationChemhemtoxriaserSpecimen
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LabObservationChemhemtoxriaserSpecimen
* accessionIdentifier -> "panel.groupName,accession.groupName,accession.name (>68-.01),lab.groupName"