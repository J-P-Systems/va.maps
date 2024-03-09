Instance: CMVFallergySubstanceCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergySubstanceCategory"
* name = "VF_allergySubstanceCategory"
* title = "VF_allergySubstanceCategory"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_allergySubstanceCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySubstanceCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-3.1"
* group[=].target = "http://hl7.org/fhir/allergy-intolerance-category"
* group[=].element[0].code = #D
* group[=].element[=].display = "DRUG"
* group[=].element[=].target.code = #medication
* group[=].element[=].target.display = "medication"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #O
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #F
* group[=].element[=].display = "FOOD"
* group[=].element[=].target.code = #food
* group[=].element[=].target.equivalence = #equal