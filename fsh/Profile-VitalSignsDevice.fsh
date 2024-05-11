Profile: VitalSignsDevice
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsDevice
Title: "Vital Signs Device"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to Device"
* ^status = #draft
* ^abstract = true
* type MS
* type from http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice

Mapping: vista-to-VitalSignsDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsDevice
* type -> "663: terminologyMaps using VF_VitalsMeasurementDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"

Mapping: cdw-to-VitalSignsDevice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsDevice