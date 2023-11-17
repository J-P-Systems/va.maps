Instance: CMVFallergyEnteredInError
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyEnteredInError"
* name = "VF_allergyEnteredInError"
* title = "VF_allergyEnteredInError"
* status = #active
* experimental = true
* description = "Terminology Maps VF_allergyEnteredInError"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyEnteredInError"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.8-22"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #entered-in-error
* group[=].element[=].target.display = "entered-in-error"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ENTERED IN ERROR - YES"