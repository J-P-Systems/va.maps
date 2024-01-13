Instance: CMVFallergyVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyVerificationStatus"
* name = "VF_allergyVerificationStatus"
* title = "VF_allergyVerificationStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_allergyVerificationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.8-19"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].element[0].code = #0
* group[=].element[=].display = "VERIFIED - NO"
* group[=].element[=].target.code = #unconfirmed
* group[=].element[=].target.display = "unconfirmed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "VERIFIED - YES"
* group[=].element[=].target.code = #confirmed
* group[=].element[=].target.display = "confirmed"
* group[=].element[=].target.equivalence = #equal