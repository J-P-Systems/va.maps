Instance: CMVFRadiologyProcedureStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFRadiologyProcedureStatus"
* name = "VF_RadiologyProcedureStatus"
* title = "VF_RadiologyProcedureStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_RadiologyProcedureStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus"
* group[0].source = "undefined"
* group[=].target = "http://hl7.org/fhir/event-status"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #preparation
* group[=].element[=].target.display = "Preparation"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "CALLED FOR EXAM"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #not-done
* group[=].element[=].target.display = "Not Done"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "CANCELLED"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #completed
* group[=].element[=].target.display = "Completed"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "COMPLETE"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #in-progress
* group[=].element[=].target.display = "In Progress"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "EXAMINED"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #in-progress
* group[=].element[=].target.display = "In Progress"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "TRANSCRIBED"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #preparation
* group[=].element[=].target.display = "Preparation"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "WAITING FOR EXAM"