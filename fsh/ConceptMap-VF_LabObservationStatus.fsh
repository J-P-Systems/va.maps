Instance: CMVFLabObservationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFLabObservationStatus"
* name = "VF_LabObservationStatus"
* title = "VF_LabObservationStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_LabObservationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFLabObservationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/63.05-34"
* group[=].target = "http://hl7.org/fhir/observation-status"
* group[=].element[0].code = #F
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "FINAL REPORT"
* group[=].element[+].code = #P
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "PRELIMINARY REPORT"
* group[=].element[+].code = #NULL
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #equivalent