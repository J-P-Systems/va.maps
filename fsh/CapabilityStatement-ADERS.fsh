Instance: ADERS
InstanceOf: CapabilityStatement
Title: "VA Adverse Drug Event Reporting System"
Usage: #definition
* description = "This CapabilityStatement contains an example for VA Adverse Drug Event Reporting System"
* status = #draft
* date = "2024-08-24T10:04:17.162Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSPatient"
* rest.resource[+].type = #Immunization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-vac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-vac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-vac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-vac4"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-pvac1"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-pvac2"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-pvac3"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSImmunization-pvac4"
* rest.resource[+].type = #AdverseEvent
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSAdverseEvent"
* rest.resource[+].type = #Bundle
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/VAERSBundle"