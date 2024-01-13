Instance: CMVFExamStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFExamStatus"
* name = "VF_ExamStatus"
* title = "VF_ExamStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ExamStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFExamStatus"
* group[0].source = "undefined"
* group[=].target = "null"
* group[=].element[0].code = #X
* group[=].element[=].display = "CANCELLED BY MAS"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #RX
* group[=].element[=].display = "CANCELLED BY RO"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #C
* group[=].element[=].display = "COMPLETED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #O
* group[=].element[=].display = "OPEN"
* group[=].element[=].target.code = #registred
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #O
* group[=].element[=].display = "OPEN"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #T
* group[=].element[=].target.code = #null
* group[=].element[=].target.equivalence = #equivalent