Instance: VF-problemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-problemStatus"
* name = "VF_problemStatus"
* title = "VF_problemStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_problemStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/problemStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/problemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #A
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #active
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I
* group[=].element[=].display = "INACTIVE"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.equivalence = #equal

ValueSet: problemStatus
Title: "problemStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_problemStatus](ConceptMap-VF-problemStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProblemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#active 
* include http://terminology.hl7.org/CodeSystem/condition-clinical#inactive 

ValueSet: problemStatus-vista
Title: "problemStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_problemStatus](ConceptMap-VF-problemStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProblemStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#A "ACTIVE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#I "INACTIVE"