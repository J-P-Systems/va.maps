Instance: CMVFDentalDeviceStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFDentalDeviceStatus"
* name = "VF_DentalDeviceStatus"
* title = "VF_DentalDeviceStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_DentalDeviceStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/228.9-.08"
* group[=].target = "http://hl7.org/fhir/ValueSet/device-status"
* group[=].element[0].code = #2
* group[=].element[=].display = "Deleted"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered in Error"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0
* group[=].element[=].display = "Existing"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "Active"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "Removed"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.display = "Inactive"
* group[=].element[=].target.equivalence = #equal