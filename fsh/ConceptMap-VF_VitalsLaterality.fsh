Instance: CMVFVitalsLaterality
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFVitalsLaterality"
* name = "VF_VitalsLaterality"
* title = "VF_VitalsLaterality"
* status = #active
* experimental = true
* description = "Terminology Maps VF_VitalsLaterality"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFVitalsLaterality"
* group[0].source = "undefined"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #4711355
* group[=].element[=].target.code = #31156008
* group[=].element[=].target.display = "Structure of left half of body (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "LEFT"
* group[=].element[+].code = #4711356
* group[=].element[=].target.code = #85421007
* group[=].element[=].target.display = "Structure of right half of body (body structure)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "RIGHT"