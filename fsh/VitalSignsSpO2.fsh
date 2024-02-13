Profile: VitalSignsSpO2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Id: VitalSignsSpO2
Title: "Vital Signs: SpO2"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to us-core-pulse-oximetry"
* ^status = #draft
* component[FlowRate].valueQuantity.value and component[Concentration].valueQuantity.value MS

Mapping: vista-to-VitalSignsSpO2
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsSpO2
* component[FlowRate].valueQuantity.value -> "1239: transform using Split_SpO2_value.Flow on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* component[Concentration].valueQuantity.value -> "1240: transform using Split_SpO2_value.Consentraion on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"

Mapping: cdw-to-VitalSignsSpO2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsSpO2
* component[FlowRate].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* component[Concentration].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"