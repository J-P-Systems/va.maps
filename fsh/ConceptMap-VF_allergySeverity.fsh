Instance: CMVFallergySeverity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergySeverity"
* name = "VF_allergySeverity"
* title = "VF_allergySeverity"
* status = #active
* experimental = true
* description = "Terminology Maps VF_allergySeverity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySeverity"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.85-14.5"
* group[=].target = "http://hl7.org/fhir/reaction-event-severity"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #mild
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "MILD"
* group[=].element[+].code = #2
* group[=].element[=].target.code = #moderate
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "MODERATE"
* group[=].element[+].code = #3
* group[=].element[=].target.code = #severe
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "SEVERE"