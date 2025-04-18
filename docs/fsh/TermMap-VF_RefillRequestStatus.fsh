Instance: VF-RefillRequestStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-RefillRequestStatus"
* name = "VF_RefillRequestStatus"
* title = "VF_RefillRequestStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_RefillRequestStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/RefillRequestStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/RefillRequestStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/52.43-5"
* group[=].target = "http://hl7.org/fhir/task-status"
* group[=].element[0].code = #0
* group[=].element[=].display = "FOR NOT PROCESSED"
* group[=].element[=].target.code = #requested
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "FOR FILLED"
* group[=].element[=].target.code = #accepted
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2
* group[=].element[=].display = "FOR NOT FILLED"
* group[=].element[=].target.code = #rejected
* group[=].element[=].target.equivalence = #equal

ValueSet: RefillRequestStatus
Title: "RefillRequestStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_RefillRequestStatus](ConceptMap-VF-RefillRequestStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "RefillRequestStatus"
* include http://hl7.org/fhir/task-status#requested 
* include http://hl7.org/fhir/task-status#accepted 
* include http://hl7.org/fhir/task-status#rejected 

ValueSet: RefillRequestStatus-vista
Title: "RefillRequestStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_RefillRequestStatus](ConceptMap-VF-RefillRequestStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "RefillRequestStatus_VistA"
* include http://va.gov/terminology/vistaDefinedElements/52.43-5#0 "FOR NOT PROCESSED"
* include http://va.gov/terminology/vistaDefinedElements/52.43-5#1 "FOR FILLED"
* include http://va.gov/terminology/vistaDefinedElements/52.43-5#2 "FOR NOT FILLED"