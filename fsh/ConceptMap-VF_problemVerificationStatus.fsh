Instance: CMVFproblemVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFproblemVerificationStatus"
* name = "VF_problemVerificationStatus"
* title = "VF_problemVerificationStatus"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_problemVerificationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFproblemVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000011-1.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* group[=].element[0].code = #H
* group[=].element[=].display = "HIDDEN"
* group[=].element[=].target.code = #refuted
* group[=].element[=].target.display = "refuted"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #P
* group[=].element[=].display = "PERMANENT"
* group[=].element[=].target.code = #confirmed
* group[=].element[=].target.display = "confirmed"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #T
* group[=].element[=].display = "TRANSCRIBED"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.display = "provisional"
* group[=].element[=].target.equivalence = #equivalent