Instance: CMVFExamStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFExamStatus"
* name = "VF_ExamStatus"
* title = "VF_ExamStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ExamStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFExamStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFExamStatus"
* group[0].source = "urn:undefined"
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
* group[=].element[=].target.code = #registred
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

ValueSet: VSVFExamStatus
Title: "VF_ExamStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_ExamStatus"
* ^experimental = false
* ^name = "VF_ExamStatus"
* include http://hl7.org/fhir/observation-status#cancelled 
* include http://hl7.org/fhir/observation-status#final 
* include http://hl7.org/fhir/observation-status#registred 
* include http://hl7.org/fhir/observation-status#preliminary 

ValueSet: VSVFExamStatus-vista
Title: "VF_ExamStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ExamStatus"
* ^experimental = false
* ^name = "VF_ExamStatus"
* include urn:undefined#X "CANCELLED BY MAS"
* include urn:undefined#RX "CANCELLED BY RO"
* include urn:undefined#C "COMPLETED"
* include urn:undefined#O "OPEN"
* include urn:undefined#T "TRANSFERRED OUT"