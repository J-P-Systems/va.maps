Instance: problemVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/problemVerificationStatus"
* name = "problemVerificationStatus"
* title = "problemVerificationStatus"
* status = #active
* experimental = false
* description = "Terminology Maps problemVerificationStatus "
* sourceCanonical = "http://va.gov/fhir/ValueSet/problemVerificationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/problemVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000011-1.02"
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
Description: "FHIR Target ValueSet for Terminology Maps problemVerificationStatus"
* ^experimental = false
* ^status = #active
* ^name = "problemVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted "refuted"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "confirmed"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional "provisional"

ValueSet: problemVerificationStatus-vista
Title: "problemVerificationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps problemVerificationStatus"
* ^experimental = false
* ^status = #active
* ^name = "problemVerificationStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/9000011-1.02#H "HIDDEN"
* include http://va.gov/terminology/vistaDefinedTerms/9000011-1.02#P "PERMANENT"
* include http://va.gov/terminology/vistaDefinedTerms/9000011-1.02#T "TRANSCRIBED"