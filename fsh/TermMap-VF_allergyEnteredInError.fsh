Instance: CMVFallergyEnteredInError
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyEnteredInError"
* name = "VF_allergyEnteredInError"
* title = "VF_allergyEnteredInError"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_allergyEnteredInError"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyEnteredInError-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyEnteredInError"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-22"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].element[0].code = #1
* group[=].element[=].display = "ENTERED IN ERROR - YES"
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "Entered In Error"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFallergyEnteredInError
Title: "VF_allergyEnteredInError"
Description: "FHIR Target ValueSet for Terminology Maps VF_allergyEnteredInError"
* ^experimental = false
* ^name = "VF_allergyEnteredInError"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#entered-in-error "Entered In Error"

ValueSet: VSVFallergyEnteredInError-vista
Title: "VF_allergyEnteredInError VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_allergyEnteredInError"
* ^experimental = false
* ^name = "VF_allergyEnteredInError"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-22#1 "ENTERED IN ERROR - YES"