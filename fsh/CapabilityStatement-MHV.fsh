Instance: MHV
InstanceOf: CapabilityStatement
Title: "My HealtheVet"
Usage: #definition
* description = "This CapabilityStatement contains an example for My HealtheVet"
* status = #draft
* date = "2024-08-14T15:14:10.918Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Immunization
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/ImmunizationImmunization"
* rest.resource[+].type = #Observation
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/ImmunizationObservation"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/MedicationDispenseRefill"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/MedicationDispensePartial"
* rest.resource[+].type = #Patient
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #MedicationRequest
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/MedicationRequestOutpatient"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].profile = "http://va.gov/fhir/StructureDefinition/MedicationDispenseOriginal"