Profile: LabObservationElectronMicroscopy
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationElectronMicroscopy
Title: "Lab Observation: Electron Microscopy"
Description: "This StructureDefinition contains the maps for VistA file EM (63.02) to us-core-diagnosticreport-lab"
* ^status = #draft
* code.text and code and code.coding.code MS
* code = http://loinc.org#50668-3 "Microscopic observation in Unspecified specimen by Electron microscopy Narrative"

Mapping: vista-to-LabObservationElectronMicroscopy
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopy
* code.text -> "1812: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-.01)" "Local Title"
* code -> "1813: fixed value = http://loinc.org#50668-3 Microscopic observation in Unspecified specimen by Electron microscopy Narrative"
* code.coding.code -> "1814: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"

Mapping: cdw-to-LabObservationElectronMicroscopy
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopy