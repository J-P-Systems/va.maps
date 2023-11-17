Profile: LabObservationElectronMicroscopySpecimen
Parent: http://hl7.org/fhir/StructureDefinition/Specimen
Id: LabObservationElectronMicroscopySpecimen
Title: "Lab Observation: Electron Microscopy {Specimen}"
Description: "This StructureDefinition contains the maps for VistA EM (file 63.02) to FHIR Specimen"
* ^status = #draft

Mapping: vista-to-LabObservationElectronMicroscopySpecimen
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopySpecimen
* accessionIdentifier -> "1467: source value from EM - EM ACC # (#63.02-.06)" "There could be more data to map for specimen, but mapped the minimum because it is not in US Core and not sure if this is data to be shown to the patient\n@MZ: ref-issue: Should be split into Specimen"
* type.text -> "1468: source value from EM - SPECIMEN > SPECIMEN - SPECIMEN (#63.02-.012 > 63.202-.01)" "@MZ: ref-issue: Should be split into Specimen"

Mapping: cdw-to-LabObservationElectronMicroscopySpecimen
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopySpecimen
* accessionIdentifier -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"
* type.text -> "Pathology.EMSpecimen.ElectronMicroscopySpecimen"