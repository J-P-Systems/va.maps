Profile: LabObservationCytopathology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationCytopathology
Title: "Lab Observation: Cytopathology"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to us-core-diagnosticreport-lab"
* ^status = #draft
* code.text and code and code.coding.code MS
* code = http://loinc.org#26438-2 "Cytology studies (set)"

Mapping: vista-to-LabObservationCytopathology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationCytopathology
* code.text -> "1815: source value from CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-.01)" "Local Title"
* code -> "1816: fixed value = http://loinc.org#26438-2 Cytology studies (set)"
* code.coding.code -> "1817: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"

Mapping: cdw-to-LabObservationCytopathology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationCytopathology