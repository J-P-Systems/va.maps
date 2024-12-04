Instance: LCS
InstanceOf: CapabilityStatement
Title: "Lung Cancer Screening"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2024-12-04T11:27:17.399Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreening"
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/EncounterOutpatient"
* rest.resource[+].type = #ServiceRequest
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreeningDRNA"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreeningCRNA"