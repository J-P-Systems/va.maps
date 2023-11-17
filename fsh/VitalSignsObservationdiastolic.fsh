Profile: VitalSignsObservationdiastolic
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure
Id: VitalSignsObservationdiastolic
Title: "Vital Signs {Observation}: diastolic"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft

Mapping: vista-to-VitalSignsObservationdiastolic
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservationdiastolic
* component.valueQuantity.value -> "667: source value from GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID = 4500634"

Mapping: cdw-to-VitalSignsObservationdiastolic
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservationdiastolic
* component.valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"