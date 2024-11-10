Instance: LCS
InstanceOf: CapabilityStatement
Title: "Lung Cancer Screening"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2024-11-10T09:44:10.204Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreening"
* rest.resource[+].type = #ServiceRequest
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreeningDRNA"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreeningCRNA"