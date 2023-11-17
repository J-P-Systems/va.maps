Instance: CMVFDiagnosticReportLabStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFDiagnosticReportLabStatus"
* name = "VF_DiagnosticReportLabStatus"
* title = "VF_DiagnosticReportLabStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_DiagnosticReportLabStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/63.53-10"
* group[=].target = "http://hl7.org/fhir/diagnostic-report-status"
* group[=].element[0].code = #C
* group[=].element[=].target.code = #corrected
* group[=].element[=].target.display = "Corrected"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "CORRECTED RESULTS"
* group[=].element[+].code = #F
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "FINAL RESULTS"
* group[=].element[+].code = #Y
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "NO ORDER ON RECORD"
* group[=].element[+].code = #R
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Partial"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "NOT VERIFIED"
* group[=].element[+].code = #X
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "Cancelled"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "ORDER CANCELED"
* group[=].element[+].code = #O
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "ORDER RECIEVED"
* group[=].element[+].code = #P
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "PRELIMINARY"
* group[=].element[+].code = #S
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "PROCEDURE SCHEDULED"
* group[=].element[+].code = #A
* group[=].element[=].target.code = #partial
* group[=].element[=].target.display = "Partial"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "SOME RESULTS AVAILABLE"
* group[=].element[+].code = #I
* group[=].element[=].target.code = #registered
* group[=].element[=].target.display = "Registered"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "SPECIMEN RECEIVED"