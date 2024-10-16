Instance: LCS
InstanceOf: CapabilityStatement
Title: "Lung Cancer Screening"
Usage: #definition
* description = "This CapabilityStatement contains an example for Lung Cancer Screening"
* status = #draft
* date = "2024-10-18T16:02:17.816Z"
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