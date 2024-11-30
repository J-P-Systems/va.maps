Instance: DP
InstanceOf: CapabilityStatement
Title: "Debt Portal"
Usage: #definition
* description = "This CapabilityStatement enumerates the profiles that the API should address, in the estimation of the enterprise mapping team. Some elements may not be appropriate for those cases; consult the actual API specification published by the API provider"
* status = #draft
* date = "2024-11-30T14:00:37.715Z"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #xml
* format[1] = #json
* rest.mode = #server
* rest.resource[+].type = #Account
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalAccount"
* rest.resource[+].type = #Patient
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalBillPatient"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/Patient"
* rest.resource[+].type = #Invoice
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalBillInvoice"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalChargesInvoice"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalInterestFeesInvoice"
* rest.resource[+].type = #ChargeItem
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalChargesChargeItem"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalInterestFeesChargeItem"
* rest.resource[+].type = #Encounter
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/EncounterOutpatient"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/EncounterInpatientEncounter"
* rest.resource[+].type = #MedicationDispense
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseOriginal"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispenseRefill"
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/MedicationDispensePartial"
* rest.resource[+].type = #PaymentReconciliation
* rest.resource[=].supportedProfile[+] = "http://va.gov/fhir/StructureDefinition/DebtPortalPayments"