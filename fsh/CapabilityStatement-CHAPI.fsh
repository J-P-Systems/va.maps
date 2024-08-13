Instance: CHAPI
InstanceOf: CapabilityStatement
Title: "Lighthouse Clinical Health API"
Usage: #definition
* description = "This CapabilityStatement contains an example for Lighthouse Clinical Health API"
* status = #draft
* date = "2024-08-13T15:04:23.485Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyVirologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserObservation"
* rest.resource[+].type = #Specimen
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserSpecimen"
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/AllergyIntolerance"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationSurgicalPathologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationCytopathologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyParasitologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationElectronMicroscopyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyBacteriologyObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/SmokingStatusObservation"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/VitalSigns"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/VitalSignsBP"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/VitalSignsSpO2"