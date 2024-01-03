Profile: VitalSignsObservationBP
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure
Id: VitalSignsObservationBP
Title: "Vital Signs {Observation}: BP"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to us-core-blood-pressure"
* ^status = #draft

Mapping: vista-to-VitalSignsObservationBP
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservationBP
* component[systolic].valueQuantity.value -> "666: transform using Split_rate_value.Systolic on GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID = 4500634" "Value needs to be parsed from VistA"
* component[diastolic].valueQuantity.value -> "667: transform using Split_rate_value.Diastolic on GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID = 4500634" "Value needs to be parsed from VistA"

Mapping: cdw-to-VitalSignsObservationBP
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservationBP
* component[systolic].valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"
* component[diastolic].valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"