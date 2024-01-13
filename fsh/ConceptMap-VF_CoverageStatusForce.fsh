Instance: CMVFCoverageStatusForce
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCoverageStatusForce"
* name = "VF_CoverageStatusForce"
* title = "VF_CoverageStatusForce"
* status = #active
* experimental = true
* description = "Terminology Maps VF_CoverageStatusForce"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageStatusForce"
* group[0].source = "undefined"
* group[=].target = "null"
* group[=].element[0].code = #"0' FOR NOT COVERED;"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"1' FOR COVERED;"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"2' FOR CONDITIONAL COVERAGE;"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent