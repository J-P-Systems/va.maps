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

Extension: AccountStatementGeneratedDay
Id: account-statementGeneratedDay
Description: "Extension account-statementGeneratedDay"
Context: Account
* value[x] only integer

ValueSet: ResourceServiceConnection
Title: "ResourceServiceConnection"
Description: "FHIR ValueSet for Extension ResourceServiceConnection"
* ^experimental = false
* ^status = #active
* ^name = "ResourceServiceConnection"
* include http://va.gov/fhir/vistaDefinedTerms/409.1#SC "Service Connected"
* include http://va.gov/fhir/vistaDefinedTerms/409.1#NSC "Not Service Connected"

Extension: ResourceServiceConnection
Id: resource-serviceConnection
Description: "Extension resource-serviceConnection"
Context: Resource
* value[x] only Coding
* value[x] from http://va.gov/fhir/ValueSet/ResourceServiceConnection