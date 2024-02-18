Instance: CMVFCoverageStatusForce
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCoverageStatusForce"
* name = "VF_CoverageStatusForce"
* title = "VF_CoverageStatusForce"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_CoverageStatusForce"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageStatusForce"
* group[0].source = "urn:undefined"
* group[=].element[0].code = #NOT_COVERED
* group[=].element[=].display = "NOT COVERED"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #1
* group[=].element[=].display = "COVERED"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2
* group[=].element[=].display = "CONDITIONAL COVERAGE"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent