Instance: VF-problemVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-problemVerificationStatus"
* name = "VF_problemVerificationStatus"
* title = "VF_problemVerificationStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_problemVerificationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/problemVerificationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/problemVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* group[=].element[0].code = #H
* group[=].element[=].display = "HIDDEN"
* group[=].element[=].target.code = #refuted
* group[=].element[=].target.display = "refuted"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "PERMANENT"
* group[=].element[=].target.code = #confirmed
* group[=].element[=].target.display = "confirmed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #T
* group[=].element[=].display = "TRANSCRIBED"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.display = "provisional"
* group[=].element[=].target.equivalence = #equal

ValueSet: problemVerificationStatus
Title: "problemVerificationStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_problemVerificationStatus](ConceptMap-VF-problemVerificationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProblemVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted "refuted"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "confirmed"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional "provisional"

ValueSet: problemVerificationStatus-vista
Title: "problemVerificationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_problemVerificationStatus](ConceptMap-VF-problemVerificationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProblemVerificationStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#H "HIDDEN"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#P "PERMANENT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#T "TRANSCRIBED"