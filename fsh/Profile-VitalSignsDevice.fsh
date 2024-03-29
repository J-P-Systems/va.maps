Profile: VitalSignsDevice
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsDevice
Title: "Vital Signs Device"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to Device"
* ^status = #draft
* type MS
* type from http://va.gov/fhir/ValueSet/VSVFVitalsDevice

Mapping: vista-to-VitalSignsDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsDevice
* type -> "663: terminologyMaps using VF_VitalsDevice on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"