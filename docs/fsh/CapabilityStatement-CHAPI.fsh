Instance: CHAPI
InstanceOf: CapabilityStatement
Title: "Lighthouse Clinical Health API"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2024-12-08T09:27:04.741Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #AllergyIntolerance
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/AllergyIntolerance"
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #Appointment
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Appointment"
* rest.resource[+].type = #Location
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationSurgicalPathologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationElectronMicroscopyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyBacteriologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyParasitologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyMycobacteriologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationMicrobiologyVirologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationCytopathologyObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/SmokingStatusObservation"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSigns"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSignsBP"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VitalSignsSpO2"
* rest.resource[+].type = #Specimen
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LabObservationChemhemtoxriaserSpecimen"
* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/EncounterOutpatient"
* rest.resource[+].type = #Condition
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/ConditionEncounterDiagnosis"
* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Organization"
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"