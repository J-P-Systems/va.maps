Instance: MHV
InstanceOf: CapabilityStatement
Title: "My HealtheVet"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2025-06-13T16:10:16.847Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSPatient"
* rest.resource[+].type = #Immunization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac4"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac4"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSabstract"
* rest.resource[+].type = #AdverseEvent
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSAdverseEvent"
* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSBundle"