Profile: VitalSignsSpO2Device
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsSpO2Device
Title: "Vital Signs: SpO2 Device"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to Device"
* ^status = #draft
* type MS
* type from http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice

Mapping: vista-to-VitalSignsSpO2Device
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsSpO2Device
* type -> "663: terminologyMaps using VF_VitalsMeasurementDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"

Mapping: cdw-to-VitalSignsSpO2Device
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsSpO2Device