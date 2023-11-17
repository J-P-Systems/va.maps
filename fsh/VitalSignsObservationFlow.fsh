Profile: VitalSignsObservationFlow
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Id: VitalSignsObservationFlow
Title: "Vital Signs {Observation}: Flow"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft

Mapping: vista-to-VitalSignsObservationFlow
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservationFlow
* component.valueQuantity.value -> "1239: source value from GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"

Mapping: cdw-to-VitalSignsObservationFlow
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservationFlow
* component.valueQuantity.value -> "Vital.VitalSign.SupplementalO2"