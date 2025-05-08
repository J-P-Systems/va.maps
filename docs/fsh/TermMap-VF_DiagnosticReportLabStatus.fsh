Instance: VF-DiagnosticReportLabStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DiagnosticReportLabStatus"
* name = "VF_DiagnosticReportLabStatus"
* title = "VF_DiagnosticReportLabStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DiagnosticReportLabStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DiagnosticReportLabStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DiagnosticReportLabStatus"
* group[0].source = "http://va.gov/terminology/vistADefinedTerms/64.061"
* group[=].target = "http://hl7.org/fhir/diagnostic-report-status"
* group[=].element[0].code = #C
* group[=].element[=].display = "CORRECTED RESULTS"
* group[=].element[=].target.code = #corrected
* group[=].element[=].target.display = "Corrected"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #F
* group[=].element[=].display = "FINAL RESULTS"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #Y
* group[=].element[=].display = "NO ORDER ON RECORD"
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #R
* group[=].element[=].display = "NOT VERIFIED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #X
* group[=].element[=].display = "ORDER CANCELED"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "Cancelled"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #O
* group[=].element[=].display = "ORDER RECIEVED"
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #P
* group[=].element[=].display = "PRELIMINARY"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #S
* group[=].element[=].display = "PROCEDURE SCHEDULED"
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #A
* group[=].element[=].display = "SOME RESULTS AVAILABLE"
* group[=].element[=].target.code = #partial
* group[=].element[=].target.display = "Partial"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"
* group[=].element[+].code = #I
* group[=].element[=].display = "SPECIMEN RECEIVED"
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "This system is based on http://terminology.hl7.org/CodeSystem/v2-0123"

ValueSet: DiagnosticReportLabStatus
Title: "DiagnosticReportLabStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DiagnosticReportLabStatus](ConceptMap-VF-DiagnosticReportLabStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DiagnosticReportLabStatus"
* include http://hl7.org/fhir/diagnostic-report-status#corrected "Corrected"
* include http://hl7.org/fhir/diagnostic-report-status#final "Final"
* include http://hl7.org/fhir/diagnostic-report-status#unknown "Unknown"
* include http://hl7.org/fhir/diagnostic-report-status#preliminary "Preliminary"
* include http://hl7.org/fhir/diagnostic-report-status#cancelled "Cancelled"
* include http://hl7.org/fhir/diagnostic-report-status#registered "Registered"
* include http://hl7.org/fhir/diagnostic-report-status#partial "Partial"

ValueSet: DiagnosticReportLabStatus-vista
Title: "DiagnosticReportLabStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DiagnosticReportLabStatus](ConceptMap-VF-DiagnosticReportLabStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DiagnosticReportLabStatus_VistA"
* include http://va.gov/terminology/vistADefinedTerms/64.061#C "CORRECTED RESULTS"
* include http://va.gov/terminology/vistADefinedTerms/64.061#F "FINAL RESULTS"
* include http://va.gov/terminology/vistADefinedTerms/64.061#Y "NO ORDER ON RECORD"
* include http://va.gov/terminology/vistADefinedTerms/64.061#R "NOT VERIFIED"
* include http://va.gov/terminology/vistADefinedTerms/64.061#X "ORDER CANCELED"
* include http://va.gov/terminology/vistADefinedTerms/64.061#O "ORDER RECIEVED"
* include http://va.gov/terminology/vistADefinedTerms/64.061#P "PRELIMINARY"
* include http://va.gov/terminology/vistADefinedTerms/64.061#S "PROCEDURE SCHEDULED"
* include http://va.gov/terminology/vistADefinedTerms/64.061#A "SOME RESULTS AVAILABLE"
* include http://va.gov/terminology/vistADefinedTerms/64.061#I "SPECIMEN RECEIVED"