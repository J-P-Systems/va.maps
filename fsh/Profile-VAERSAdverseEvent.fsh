Profile: VAERSAdverseEvent
Parent: http://hl7.org/fhir/StructureDefinition/AdverseEvent
Id: VAERSAdverseEvent
Title: "VAERS AdverseEvent"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to AdverseEvent"
* ^status = #draft
* subject MS
* subject only Reference(VAERSPatient)

Mapping: vista-to-VAERSAdverseEvent
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSAdverseEvent
* subject -> "1877: reference from ADERS - 0_Pt_ICN_Full"

Mapping: cdw-to-VAERSAdverseEvent
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSAdverseEvent