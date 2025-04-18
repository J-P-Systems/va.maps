Instance: VF-allergyMechanism
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-allergyMechanism"
* name = "VF_allergyMechanism"
* title = "VF_allergyMechanism"
* status = #active
* experimental = false
* description = "Terminology Maps VF_allergyMechanism"
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergyMechanism-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergyMechanism"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/allergy-intolerance-type"
* group[=].element[0].code = #A
* group[=].element[=].display = "ALLERGY"
* group[=].element[=].target.code = #allergy
* group[=].element[=].target.display = "allergy"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "PHARMACOLOGIC"
* group[=].element[=].target.code = #intolerance
* group[=].element[=].target.display = "intolerance"
* group[=].element[=].target.equivalence = #equal

ValueSet: allergyMechanism
Title: "allergyMechanism FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_allergyMechanism](ConceptMap-VF-allergyMechanism.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergyMechanism"
* include http://hl7.org/fhir/allergy-intolerance-type#allergy "allergy"
* include http://hl7.org/fhir/allergy-intolerance-type#intolerance "intolerance"

ValueSet: allergyMechanism-vista
Title: "allergyMechanism VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_allergyMechanism](ConceptMap-VF-allergyMechanism.html)"
* ^experimental = false
* ^status = #active
* ^name = "AllergyMechanism_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#A "ALLERGY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#P "PHARMACOLOGIC"