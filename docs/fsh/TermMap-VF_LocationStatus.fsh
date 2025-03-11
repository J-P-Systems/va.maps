Instance: VF-LocationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-LocationStatus"
* name = "VF_LocationStatus"
* title = "VF_LocationStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_LocationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/LocationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/LocationStatus"
* group[0].source = "urn:VAST"
* group[=].target = "http://hl7.org/fhir/location-status"
* group[=].element[0].code = #A
* group[=].element[=].display = "Active"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "Active"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #D
* group[=].element[=].display = "Permanently Deactivated"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.display = "Inactive"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "Planned"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "There is no code for planned in FHIR"
* group[=].element[+].code = #T
* group[=].element[=].display = "Temporarily Deactivated"
* group[=].element[=].target.code = #suspended
* group[=].element[=].target.display = "Suspended"
* group[=].element[=].target.equivalence = #equal

ValueSet: LocationStatus
Title: "LocationStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_LocationStatus](ConceptMap-VF-LocationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "LocationStatus"
* include http://hl7.org/fhir/location-status#active "Active"
* include http://hl7.org/fhir/location-status#inactive "Inactive"
* include http://hl7.org/fhir/location-status#suspended "Suspended"

ValueSet: LocationStatus-vista
Title: "LocationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_LocationStatus](ConceptMap-VF-LocationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "LocationStatus_VistA"
* include urn:VAST#A "Active"
* include urn:VAST#D "Permanently Deactivated"
* include urn:VAST#P "Planned"
* include urn:VAST#T "Temporarily Deactivated"