Instance: CMVFLocationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFLocationStatus"
* name = "VF_LocationStatus"
* title = "VF_LocationStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_LocationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFLocationStatus"
* group[0].source = "VAST"
* group[=].target = "http://hl7.org/fhir/location-status"
* group[=].element[0].code = #A
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "Active"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Active"
* group[=].element[+].code = #D
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.display = "Inactive"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Permanently Deactivated"
* group[=].element[+].code = #P
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "There is no code for planned in FHIR"
* group[=].element[=].display = "Planned"
* group[=].element[+].code = #T
* group[=].element[=].target.code = #suspended
* group[=].element[=].target.display = "Suspended"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "Temporarily Deactivated"