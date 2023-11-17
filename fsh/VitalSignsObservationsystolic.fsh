Profile: VitalSignsObservationsystolic
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure
Id: VitalSignsObservationsystolic
Title: "Vital Signs {Observation}: systolic"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft

Mapping: vista-to-VitalSignsObservationsystolic
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservationsystolic
* component.valueQuantity.value -> "666: source value from GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID = 4500634"

Mapping: cdw-to-VitalSignsObservationsystolic
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservationsystolic
* component.valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"