Instance: CMVFOperatingRoomStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFOperatingRoomStatus"
* name = "VF_OperatingRoomStatus"
* title = "VF_OperatingRoomStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_OperatingRoomStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFOperatingRoomStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFOperatingRoomStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/131.7-99"
* group[=].target = "http://hl7.org/fhir/ValueSet/location-status"
* group[=].element[0].code = #1
* group[=].element[=].display = "YES"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.display = "Inactive"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0
* group[=].element[=].display = "NO"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "Active"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "confirm that value is 0 for active OR"

ValueSet: VSVFOperatingRoomStatus
Title: "VF_OperatingRoomStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_OperatingRoomStatus"
* ^experimental = false
* ^name = "VF_OperatingRoomStatus"
* include http://hl7.org/fhir/ValueSet/location-status#inactive "Inactive"
* include http://hl7.org/fhir/ValueSet/location-status#active "Active"

ValueSet: VSVFOperatingRoomStatus-vista
Title: "VF_OperatingRoomStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_OperatingRoomStatus"
* ^experimental = false
* ^name = "VF_OperatingRoomStatus"
* include http://va.gov/terminology/vistaDefinedTerms/131.7-99#1 "YES"
* include http://va.gov/terminology/vistaDefinedTerms/131.7-99#0 "NO"