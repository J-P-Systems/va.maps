Profile: ProcedureSurgeryLocationOR
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Id: ProcedureSurgeryLocationOR
Title: "Procedure: Surgery Location[OR]"
Description: "This StructureDefinition contains the maps for VistA file OPERATING ROOM (131.7) to us-core-location"
* ^status = #draft
* name and telecom.value and status and partOf MS
* partOf only Reference(Location)
* status from http://va.gov/fhir/ValueSet/VSVFOperatingRoomStatus

Mapping: source-to-ProcedureSurgeryLocationOR
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureSurgeryLocationOR
* name -> "2014: source value from OPERATING ROOM - NAME > HOSPITAL LOCATION - NAME (131.7-.01 > 44-.01)"
* telecom.value -> "2015: source value from OPERATING ROOM - TELEPHONE (131.7-3)"
* address -> "2016: target not supported"
* status -> "2017: terminologyMaps using VF_OperatingRoomStatus on OPERATING ROOM - INACTIVE? (131.7-99)"
* partOf -> "2018: reference from OPERATING ROOM - NAME > HOSPITAL LOCATION - PRINCIPAL CLINIC (131.7-.01 > 44-1916)"

Mapping: cdw-to-ProcedureSurgeryLocationOR
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureSurgeryLocationOR
* name -> "Dim.OperatingRoom.OperatingRoomLocationIEN\nDim.Location.LocationName,Dim.Location.LocationName"
* telecom.value -> "Dim.OperatingRoom.Telephone"
* status -> "Dim.OperatingRoom.InactiveFlag"
* partOf -> "Dim.OperatingRoom.OperatingRoomLocationIEN\nDim.Location.PrincipalLocationIEN"