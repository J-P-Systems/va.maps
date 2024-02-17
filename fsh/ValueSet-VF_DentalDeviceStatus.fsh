ValueSet: VSVFDentalDeviceStatus
Title: "VF_DentalDeviceStatus"
Description: "Navigate to [ConceptMap VF_DentalDeviceStatus](ConceptMap-CMVFDentalDeviceStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_DentalDeviceStatus"
* include http://hl7.org/fhir/device-status#entered-in-error "Entered in Error"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#2 "Deleted"
* include http://hl7.org/fhir/device-status#active "Active"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#Existing "Existing"
* include http://hl7.org/fhir/device-status#inactive "Inactive"
* include http://va.gov/terminology/vistaDefinedTerms/228.9-.08#1 "Removed"