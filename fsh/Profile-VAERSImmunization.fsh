Profile: VAERSImmunization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization
Title: "VAERS Immunization"
Description: "This StructureDefinition contains the maps for VistA file ADERS (undefined) to us-core-immunization"
* ^status = #draft
* occurrenceDateTime and patient MS
* patient only Reference(VAERSPatient)

Mapping: vista-to-VAERSImmunization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VAERSImmunization
* occurrenceDateTime -> "1875: source value from ADERS - 4_VacDate + 4_VacTime"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"

Mapping: cdw-to-VAERSImmunization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization