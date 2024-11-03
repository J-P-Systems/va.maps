Instance: DP
InstanceOf: CapabilityStatement
Title: "Debt Portal"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2024-11-03T11:22:20.186Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Account
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalAccount"
* rest.resource[+].type = #Invoice
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalBillInvoice"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalChargesInvoice"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalInterestFeesInvoice"
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalBillPatient"
* rest.resource[+].type = #ChargeItem
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalChargesChargeItem"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalInterestFeesChargeItem"
* rest.resource[+].type = #PaymentReconciliation
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalPayments"