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
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "DRAFT"
* group[=].element[+].code = #PD
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "PROBLEM DRAFT"
* group[=].element[+].code = #RNV
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "RELEASED NOT VERIFIED"
* group[=].element[+].code = #ROV
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED"
* group[=].element[+].code = #SROV
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* group[=].element[+].code = #RV
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED"
* group[=].element[+].code = #SRV
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* group[=].element[+].code = #S
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "SUPERSEDED"