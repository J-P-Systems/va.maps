Instance: AMPL
InstanceOf: CapabilityStatement
Title: "AMPL GUI"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2025-05-08T08:38:11.047Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #Immunization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/ImmunizationImmunization"
* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/EncounterOutpatient"
* rest.resource[+].type = #Observation
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/ImmunizationObservation"
* rest.resource[+].type = #Location
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Location"
* rest.resource[+].type = #DiagnosticReport
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/LungCancerScreening"
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationRequestOutpatient"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseOriginal"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseRefill"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispensePartial"
* rest.resource[+].type = #Practitioner
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Practitioner"
* rest.resource[+].type = #Task
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedRefillRequestMHVTask"
* rest.resource[+].type = #Organization
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Organization"
* rest.resource[+].type = #Provenance
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedRefillRequestMHVProvenancereview"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedRefillRequestMHVProvenancecreate"