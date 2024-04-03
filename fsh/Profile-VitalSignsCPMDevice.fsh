Profile: VitalSignsCPMDevice
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsCPMDevice
Title: "Vital Signs: CPM Device"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to Device"
* ^status = #draft
* type MS
* type from http://va.gov/fhir/ValueSet/VSVFVitalsDevice

Mapping: vista-to-VitalSignsCPMDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsCPMDevice
* type -> "663: terminologyMaps using VF_VitalsDevice on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"

Mapping: cdw-to-VitalSignsCPMDevice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsCPMDevice