Instance: MDT
InstanceOf: CapabilityStatement
Title: "MDT"
Usage: #definition
* description = "This CapabilityStatement contains an example for MDT"
* status = #draft
* date = "2024-10-20T09:00:25.738Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationRequestOutpatient"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseOriginal"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseRefill"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispensePartial"