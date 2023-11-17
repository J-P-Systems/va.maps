Instance: CMVFBoolean
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFBoolean"
* name = "VF_Boolean"
* title = "VF_Boolean"
* status = #active
* experimental = true
* description = "Terminology Maps VF_Boolean"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFBoolean"
* group[0].source = "undefined"
* group[=].target = "undefined"
* group[=].element[0].code = #0
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].display = "No"
* group[=].element[+].code = #1
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "Yes"