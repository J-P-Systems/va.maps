Instance: CMVFallergyMechanism
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyMechanism"
* name = "VF_allergyMechanism"
* title = "VF_allergyMechanism"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_allergyMechanism"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyMechanism"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/120.8-17"
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