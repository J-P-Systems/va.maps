Instance: AMPL
InstanceOf: CapabilityStatement
Title: "AMPL GUI"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2025-01-17T13:35:35.923Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationRequestOutpatient"
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseOriginal"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseRefill"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispensePartial"
* rest.resource[+].type = #Location
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"