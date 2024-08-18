Instance: CHAPI
InstanceOf: CapabilityStatement
Title: "Lighthouse Clinical Health API"
Usage: #definition
* description = "This CapabilityStatement contains an example for Lighthouse Clinical Health API"
* status = #draft
* date = "2024-08-18T10:13:39.891Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyVirologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyParasitologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationSurgicalPathologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationCytopathologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationElectronMicroscopyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyBacteriologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/SmokingStatusObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSigns"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSignsBP"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSignsSpO2"
* rest.resource[+].type = #Specimen
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserSpecimen"
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/AllergyIntolerance"