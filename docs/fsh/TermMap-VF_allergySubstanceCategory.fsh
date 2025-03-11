Instance: VF-allergySubstanceCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-allergySubstanceCategory"
* name = "VF_allergySubstanceCategory"
* title = "VF_allergySubstanceCategory"
* status = #active
* experimental = false
* description = "Terminology Maps VF_allergySubstanceCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergySubstanceCategory-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergySubstanceCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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

ValueSet: allergySubstanceCategory
Title: "allergySubstanceCategory FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_allergySubstanceCategory](ConceptMap-VF-allergySubstanceCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergySubstanceCategory"
* include http://hl7.org/fhir/allergy-intolerance-category#medication "medication"
* include http://hl7.org/fhir/allergy-intolerance-category#food "food"

ValueSet: allergySubstanceCategory-vista
Title: "allergySubstanceCategory VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_allergySubstanceCategory](ConceptMap-VF-allergySubstanceCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergySubstanceCategory_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DRUG"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#O "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#F "FOOD"