Profile: VitalSignsDevice
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsDevice
Title: "Vital Signs {Device}"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Device"
* ^status = #draft
* type from http://va.gov/fhir/ValueSet/VSVFVitalsDevice

Mapping: vista-to-VitalSignsDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsDevice
* type -> "663: terminologyMaps using VF_VitalsDevice on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"