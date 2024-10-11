Instance: PD
InstanceOf: CapabilityStatement
Title: "Lighthouse Provider Directory"
Usage: #definition
* description = "This CapabilityStatement contains an example for Lighthouse Provider Directory"
* status = #draft
* date = "2024-10-11T07:48:17.679Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[+].type = #PractitionerRole
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/PractitionerRole"