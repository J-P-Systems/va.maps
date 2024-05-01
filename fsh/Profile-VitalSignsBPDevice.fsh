Profile: VitalSignsBPDevice
Parent: http://hl7.org/fhir/StructureDefinition/Device
Id: VitalSignsBPDevice
Title: "Vital Signs: BP Device"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to Device"
* ^status = #draft
* type MS
* type from http://va.gov/fhir/ValueSet/VSVFVitalsDevice

Mapping: vista-to-VitalSignsBPDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsBPDevice
* type -> "663: terminologyMaps using VF_VitalsDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"

Mapping: cdw-to-VitalSignsBPDevice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsBPDevice