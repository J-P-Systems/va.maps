Instance: ExamStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/ExamStatus"
* name = "ExamStatus"
* title = "ExamStatus"
* status = #active
* experimental = false
* description = "Terminology Maps ExamStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ExamStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ExamStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/396.4-.04"
* group[=].target = "http://hl7.org/fhir/observation-status"
* group[=].element[0].code = #X
* group[=].element[=].display = "CANCELLED BY MAS"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #RX
* group[=].element[=].display = "CANCELLED BY RO"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #C
* group[=].element[=].display = "COMPLETED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #O
* group[=].element[=].display = "OPEN"
* group[=].element[=].target.code = #registered
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "369.4-70 = NULL"
* group[=].element[+].code = #O
* group[=].element[=].display = "OPEN"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "396.4-70 != NULL"
* group[=].element[+].code = #T
* group[=].element[=].display = "TRANSFERRED OUT"
* group[=].element[=].target.equivalence = #unmatched

ValueSet: ExamStatus
Title: "ExamStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps ExamStatus"
* ^experimental = false
* ^status = #active
* ^name = "ExamStatus"
* include http://hl7.org/fhir/observation-status#cancelled 
* include http://hl7.org/fhir/observation-status#final 
* include http://hl7.org/fhir/observation-status#registered 
* include http://hl7.org/fhir/observation-status#preliminary 

ValueSet: ExamStatus-vista
Title: "ExamStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps ExamStatus"
* ^experimental = false
* ^status = #active
* ^name = "ExamStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/396.4-.04#X "CANCELLED BY MAS"
* include http://va.gov/terminology/vistaDefinedTerms/396.4-.04#RX "CANCELLED BY RO"
* include http://va.gov/terminology/vistaDefinedTerms/396.4-.04#C "COMPLETED"
* include http://va.gov/terminology/vistaDefinedTerms/396.4-.04#O "OPEN"
* include http://va.gov/terminology/vistaDefinedTerms/396.4-.04#T "TRANSFERRED OUT"