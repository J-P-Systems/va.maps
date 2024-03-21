Instance: CMVFallergyMechanism
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyMechanism"
* name = "VF_allergyMechanism"
* title = "VF_allergyMechanism"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_allergyMechanism"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyMechanism-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyMechanism"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-17"
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

ValueSet: VSVFallergyMechanism
Title: "VF_allergyMechanism"
Description: "FHIR Target ValueSet for Terminology Maps VF_allergyMechanism"
* ^experimental = false
* ^name = "VF_allergyMechanism"
* include http://hl7.org/fhir/allergy-intolerance-type#allergy "allergy"
* include http://hl7.org/fhir/allergy-intolerance-type#intolerance "intolerance"

ValueSet: VSVFallergyMechanism-vista
Title: "VF_allergyMechanism VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_allergyMechanism"
* ^experimental = false
* ^name = "VF_allergyMechanism"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-17#A "ALLERGY"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-17#P "PHARMACOLOGIC"