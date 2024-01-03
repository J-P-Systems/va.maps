Profile: CPMVitalSignsObservation
Parent: http://va.gov/fhir/StructureDefinition/VitalSignsObservation
Id: CPMVitalSignsObservation
Title: "CPM Vital Signs {Observation}"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to VitalSignsObservation"
* ^status = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFVitalsPosition

Mapping: vista-to-CPMVitalSignsObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: CPMVitalSignsObservation
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "866: terminologyMaps using VF_VitalsPosition on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)" "Not part of US core. Will need to handle the different program uses."