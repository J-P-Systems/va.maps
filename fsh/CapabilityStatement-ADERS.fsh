Instance: ADERS
InstanceOf: CapabilityStatement
Title: "VA Adverse Drug Event Reporting System"
Usage: #definition
* description = "This CapabilityStatement contains an example for VA Adverse Drug Event Reporting System"
* status = #draft
* date = "2024-10-18T16:02:17.817Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSPatient"
* rest.resource[+].type = #Immunization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationvac4"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunizationpvac4"
* rest.resource[+].type = #AdverseEvent
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSAdverseEvent"
* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSBundle"