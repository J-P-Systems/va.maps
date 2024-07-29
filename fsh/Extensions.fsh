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

Extension: DiagnosticReportNote
Id: extension-DiagnosticReport-note
Description: "R5 pre-adopt for http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.note"
Context: DiagnosticReport
* value[x] only string
