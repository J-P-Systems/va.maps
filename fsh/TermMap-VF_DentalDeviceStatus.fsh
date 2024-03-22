Instance: CMVFDentalDeviceStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFDentalDeviceStatus"
* name = "VF_DentalDeviceStatus"
* title = "VF_DentalDeviceStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_DentalDeviceStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus"
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

ValueSet: VSVFDentalDeviceStatus
Title: "VF_DentalDeviceStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_DentalDeviceStatus"
* ^experimental = false
* ^name = "VF_DentalDeviceStatus"
* include http://hl7.org/fhir/device-status#entered-in-error "Entered in Error"
* include http://hl7.org/fhir/device-status#active "Active"
* include http://hl7.org/fhir/device-status#inactive "Inactive"

ValueSet: VSVFDentalDeviceStatus-vista
Title: "VF_DentalDeviceStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_DentalDeviceStatus"
* ^experimental = false
* ^name = "VF_DentalDeviceStatus"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#2 "Deleted"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#0 "Existing"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#1 "Removed"