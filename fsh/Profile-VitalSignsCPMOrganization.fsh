Profile: VitalSignsCPMOrganization
Parent: http://hl7.org/fhir/StructureDefinition/Organization
Id: VitalSignsCPMOrganization
Title: "Vital Signs: CPM Organization"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to Organization"
* ^status = #draft
* identifier and name MS

Mapping: vista-to-VitalSignsCPMOrganization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsCPMOrganization
* identifier -> "1654: source value from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION > INSTITUTION - STATION NUMBER (120.5-.05 > 4-99)"
* name -> "654: source value from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION > INSTITUTION - NAME (120.5-.05 > 4-.01)" "Institution file 4 is joined via Location file 44"

Mapping: cdw-to-VitalSignsCPMOrganization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsCPMOrganization
* identifier -> "Vital.VitalSign.LocationIEN\nDim.Institution.InstitutionCode,Dim.Institution.InstitutionCode,Dim.InstitutionTimeZone.StationNumber,NDim.MVIInstitution.InstitutionCode"
* name -> "Vital.VitalSign.LocationIEN\nDim.AutoDiscontinuedRule.InstitutionName,Dim.Institution.InstitutionName,Dim.Institution.InstitutionName,Dim.InstitutionTimeZone.Institution,Dim.RequestService.IFCRoutingInstitution,NDim.MVIInstitution.InstitutionName"