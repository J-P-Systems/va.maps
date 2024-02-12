Instance: CMVFBoolean
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFBoolean"
* name = "VF_Boolean"
* title = "VF_Boolean"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_Boolean"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFBoolean"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/51-129"
* group[=].element[0].code = #0
* group[=].element[=].display = "No"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #1
* group[=].element[=].display = "Yes"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equivalent