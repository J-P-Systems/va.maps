Instance: CMVFImageStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFImageStatus"
* name = "VF_ImageStatus"
* title = "VF_ImageStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ImageStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFImageStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/691.5-1506"
* group[=].target = "http://hl7.org/fhir/ValueSet/observation-status"
* group[=].element[0].code = #D
* group[=].element[=].display = "DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PD
* group[=].element[=].display = "PROBLEM DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #RNV
* group[=].element[=].display = "RELEASED NOT VERIFIED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ROV
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SROV
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #RV
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SRV
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #S
* group[=].element[=].display = "SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent