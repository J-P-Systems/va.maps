Profile: VitalSignsObservationSpO2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Id: VitalSignsObservationSpO2
Title: "Vital Signs {Observation}: SpO2"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft

Mapping: vista-to-VitalSignsObservationSpO2
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservationSpO2
* component[FlowRate].valueQuantity.value -> "1239: transform using Split_SpO2_value.Flow on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* component[Concentration].valueQuantity.value -> "1240: transform using Split_SpO2_value.Consentraion on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"

Mapping: cdw-to-VitalSignsObservationSpO2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservationSpO2
* component[FlowRate].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* component[Concentration].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"