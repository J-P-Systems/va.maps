Instance: CMVFOutMedRequestStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFOutMedRequestStatus"
* name = "VF_OutMedRequestStatus"
* title = "VF_OutMedRequestStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_OutMedRequestStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFOutMedRequestStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/52-100"
* group[=].target = "http://hl7.org/fhir/ValueSet/medicationrequest-status"
* group[=].element[0].code = #0
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "ACTIVE"
* group[=].element[+].code = #NULL
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "ACTIVE"
* group[=].element[+].code = #13
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "entered-in-error"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "DELETED"
* group[=].element[+].code = #12
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DISCONTINUED"
* group[=].element[+].code = #12
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DISCONTINUED"
* group[=].element[+].code = #15
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DISCONTINUED (EDIT)"
* group[=].element[+].code = #14
* group[=].element[=].target.code = #stopped
* group[=].element[=].target.display = "stopped"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DISCONTINUED BY PROVIDER"
* group[=].element[+].code = #4
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DRUG INTERACTIONS"
* group[=].element[+].code = #11
* group[=].element[=].target.code = #completed
* group[=].element[=].target.display = "completed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "EXPIRED"
* group[=].element[+].code = #3
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "HOLD"
* group[=].element[+].code = #1
* group[=].element[=].target.code = #draft
* group[=].element[=].target.display = "draft"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "NON-VERIFIED"
* group[=].element[+].code = #16
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "PROVIDER HOLD"
* group[=].element[+].code = #5
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "SUSPENDED"