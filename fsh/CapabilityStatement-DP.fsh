Instance: DP
InstanceOf: CapabilityStatement
Title: "Debt Portal"
Usage: #definition
* description = "This CapabilityStatement contains an example for Debt Portal"
* status = #draft
* date = "2024-08-26T15:23:59.259Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Invoice
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalInvoice"
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalPatient"
* rest.resource[+].type = #ChargeItem
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalChargeItem"