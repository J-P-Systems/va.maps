Instance: exp-params
InstanceOf: Parameters
Title: "Parameters for Terminology selection of US SNOMED CT"
Description: "This parameter resource is used to specify the system version of US SNOMED CT to be used in the terminology service."
Usage: #definition
* parameter[0].name = "system-version"
* parameter[0].valueUri = "http://snomed.info/sct|http://snomed.info/sct/731000124108"

Extension: MedicationRequestPharmacyOrderStatus
Id: medicationrequest-pharmacyOrderStatus
Description: "Extension medicationrequest-pharmacyOrderStatus"
Context: MedicationRequest
* value[x] only Coding

Extension: MedicationRequestCancelDate
Id: medicationrequest-cancelDate
Description: "Extension medicationrequest-cancelDate"
Context: MedicationRequest
* value[x] only dateTime

Extension: MedicationRequestIncludeIndicationInSig
Id: medicationrequest-includeIndicationInSig
Description: "Extension medicationrequest-includeIndicationInSig"
Context: MedicationRequest
* value[x] only boolean

Extension: OrganizationAllowMultipleBedsections
Id: organization-allowMultipleBedsections
Description: "Extension organization-allowMultipleBedsections"
Context: Organization
* value[x] only boolean

Extension: OrganizationOneOutpatVisitOnBillOnly
Id: organization-oneOutpatVisitOnBillOnly
Description: "Extension organization-oneOutpatVisitOnBillOnly"
Context: Organization
* value[x] only boolean

Extension: OrganizationAnotherCompanyProcessesInpatClaims
Id: organization-anotherCompanyProcessesInpatClaims
Description: "Extension organization-anotherCompanyProcessesInpatClaims"
Context: Organization
* value[x] only boolean

Extension: MedicationrequestRecordedLocation
Id: medicationrequest-recordedLocation
Description: "Extension medicationrequest-recordedLocation"
Context: MedicationRequest
* value[x] only Reference

Extension: MedicationrequestRemainingRefillCount
Id: medicationrequest-remainingRefillCount
Description: "Extension medicationrequest-remainingRefillCount"
Context: MedicationRequest
* value[x] only integer

Extension: PatientAgeAtVaccination
Id: patient-ageAtVaccination
Description: "Extension patient-ageAtVaccination"
Context: Patient
* value[x] only string

Extension: AccountStatementGenerationDay
Id: account-statementGenerationDay
Description: "Extension account-statementGenerationDay"
Context: Account
* value[x] only integer

Extension: ResourceServiceConnection
Id: resource-serviceConnection
Description: "Extension resource-serviceConnection"
Context: Resource
* value[x] only Coding
* value[x] from http://va.gov/fhir/ValueSet/VSResourceServiceConnection

ValueSet: VSResourceServiceConnection
Title: "VSResourceServiceConnection"
Description: "FHIR ValueSet for Extension ResourceServiceConnection"
* ^experimental = false
* ^status = #active
* ^name = "VSResourceServiceConnection"
* include http://va.gov/terminology/vistaDefinedTerms/409.1#SC "Service Connected"
* include http://va.gov/terminology/vistaDefinedTerms/409.1#NSC "Not Service Connected"
