Instance: VF-DentalDeviceStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DentalDeviceStatus"
* name = "VF_DentalDeviceStatus"
* title = "VF_DentalDeviceStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DentalDeviceStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DentalDeviceStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DentalDeviceStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/228.9-.08"
* group[=].target = "http://hl7.org/fhir/device-status"
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

ValueSet: DentalDeviceStatus
Title: "DentalDeviceStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DentalDeviceStatus](ConceptMap-VF-DentalDeviceStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DentalDeviceStatus"
* include http://hl7.org/fhir/device-status#entered-in-error "Entered in Error"
* include http://hl7.org/fhir/device-status#active "Active"
* include http://hl7.org/fhir/device-status#inactive "Inactive"

ValueSet: DentalDeviceStatus-vista
Title: "DentalDeviceStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DentalDeviceStatus](ConceptMap-VF-DentalDeviceStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "DentalDeviceStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#2 "Deleted"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#0 "Existing"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#1 "Removed"