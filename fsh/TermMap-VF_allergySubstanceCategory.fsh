Instance: CMVFallergySubstanceCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergySubstanceCategory"
* name = "VF_allergySubstanceCategory"
* title = "VF_allergySubstanceCategory"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_allergySubstanceCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySubstanceCategory-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFallergySubstanceCategory"
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
* group[=].element[=].target.display = "food"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFallergySubstanceCategory
Title: "VF_allergySubstanceCategory"
Description: "FHIR Target ValueSet for Terminology Maps VF_allergySubstanceCategory"
* ^experimental = false
* ^name = "VF_allergySubstanceCategory"
* include http://hl7.org/fhir/allergy-intolerance-category#medication "medication"
* include http://hl7.org/fhir/allergy-intolerance-category#food "food"

ValueSet: VSVFallergySubstanceCategory-vista
Title: "VF_allergySubstanceCategory VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_allergySubstanceCategory"
* ^experimental = false
* ^name = "VF_allergySubstanceCategory"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-3.1#D "DRUG"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-3.1#O "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-3.1#F "FOOD"