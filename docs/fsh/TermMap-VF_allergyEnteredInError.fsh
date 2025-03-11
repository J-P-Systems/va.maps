Instance: VF-allergyEnteredInError
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-allergyEnteredInError"
* name = "VF_allergyEnteredInError"
* title = "VF_allergyEnteredInError"
* status = #active
* experimental = false
* description = "Terminology Maps VF_allergyEnteredInError"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergyEnteredInError-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergyEnteredInError"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].element[0].code = #1
* group[=].element[=].display = "ENTERED IN ERROR - YES"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered In Error"
* group[=].element[=].target.equivalence = #equal

ValueSet: allergyEnteredInError
Title: "allergyEnteredInError FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_allergyEnteredInError](ConceptMap-VF-allergyEnteredInError.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergyEnteredInError"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error "Entered In Error"

ValueSet: allergyEnteredInError-vista
Title: "allergyEnteredInError VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_allergyEnteredInError](ConceptMap-VF-allergyEnteredInError.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergyEnteredInError_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#1 "ENTERED IN ERROR - YES"