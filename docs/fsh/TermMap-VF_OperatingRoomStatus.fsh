Instance: OperatingRoomStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/OperatingRoomStatus"
* name = "OperatingRoomStatus"
* title = "OperatingRoomStatus"
* status = #active
* experimental = false
* description = "Terminology Maps OperatingRoomStatus "
* sourceCanonical = "http://va.gov/fhir/ValueSet/OperatingRoomStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/OperatingRoomStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/131.7-99"
* group[=].target = "http://hl7.org/fhir/location-status"
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
* group[=].element[=].target.comment = "confirm that  value is 0 for active OR"

ValueSet: OperatingRoomStatus
Title: "OperatingRoomStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps OperatingRoomStatus"
* ^experimental = false
* ^status = #active
* ^name = "OperatingRoomStatus"
* include http://hl7.org/fhir/location-status#inactive "Inactive"
* include http://hl7.org/fhir/location-status#active "Active"

ValueSet: OperatingRoomStatus-vista
Title: "OperatingRoomStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps OperatingRoomStatus"
* ^experimental = false
* ^status = #active
* ^name = "OperatingRoomStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/131.7-99#1 "YES"
* include http://va.gov/terminology/vistaDefinedTerms/131.7-99#0 "NO"