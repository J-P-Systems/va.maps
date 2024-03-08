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
* group[=].target = "http://hl7.org/fhir/StructureDefinition/boolean"
* group[=].element[0].code = #0
* group[=].element[=].display = "NOT COVERED"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #1
* group[=].element[=].display = "COVERED"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #2
* group[=].element[=].display = "CONDITIONAL COVERAGE"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent