Profile: LabObservationSurgicalPathology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationSurgicalPathology
Title: "Lab Observation: Surgical Pathology"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (63.08) to us-core-diagnosticreport-lab"
* ^status = #draft
* code.text and code and code.coding.code MS
* code = http://loinc.org#27898-6 "Pathology studies (set)"

Mapping: vista-to-LabObservationSurgicalPathology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathology
* code.text -> "1809: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-.01)" "Local Title"
* code -> "1810: fixed value = http://loinc.org#27898-6 Pathology studies (set)"
* code.coding.code -> "1811: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"

Mapping: cdw-to-LabObservationSurgicalPathology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathology