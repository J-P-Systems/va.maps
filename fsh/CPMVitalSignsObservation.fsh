Profile: CPMVitalSignsObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id: CPMVitalSignsObservation
Title: "CPM Vital Signs {Observation}"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFVitalsPosition

Mapping: vista-to-CPMVitalSignsObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: CPMVitalSignsObservation
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "866: terminologyMaps using VF_VitalsPosition on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)" "Not part of US core. Will need to handle the different program uses."