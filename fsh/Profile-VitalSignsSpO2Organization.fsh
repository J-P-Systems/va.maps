Profile: VitalSignsSpO2Organization
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: VitalSignsSpO2Organization
Title: "Vital Signs: SpO2 Organization"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to Organization"
* ^status = #draft
* identifier and name MS

Mapping: vista-to-VitalSignsSpO2Organization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsSpO2Organization
* identifier -> "1654: source value from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION > INSTITUTION - STATION NUMBER (120.5-.05 > 4-99)"
* name -> "654: source value from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION > INSTITUTION - NAME (120.5-.05 > 4-.01)" "Institution file 4 is joined via Location file 44"

Mapping: cdw-to-VitalSignsSpO2Organization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsSpO2Organization
* identifier -> "Dim.Institution.InstitutionCode"
* name -> "Dim.AutoDiscontinuedRule.InstitutionName,Dim.Institution.InstitutionName,Dim.RequestService.IFCRoutingInstitution"