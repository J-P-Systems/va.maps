Instance: CMVFencounterProblemVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterProblemVerificationStatus"
* name = "VF_encounterProblemVerificationStatus"
* title = "VF_encounterProblemVerificationStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_encounterProblemVerificationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterProblemVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.07-.06"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* group[=].element[0].code = #C
* group[=].element[=].display = "CONSIDER"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #D
* group[=].element[=].display = "DOUBTFUL"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #F
* group[=].element[=].display = "FOLLOW UP"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #M
* group[=].element[=].display = "MAYBE, POSSIBLE, PERHAPS"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #P
* group[=].element[=].display = "PROBABLE"
* group[=].element[=].target.code = #unconfirmed
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #O
* group[=].element[=].display = "RULE OUT"
* group[=].element[=].target.code = #differential
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #S
* group[=].element[=].display = "SUSPECT, SUSPICIOUS"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equivalent