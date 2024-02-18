Instance: CMVFallergyActive
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFallergyActive"
* name = "VF_allergyActive"
* title = "VF_allergyActive"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_allergyActive"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFallergyActive"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-22"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical"
* group[=].element[0].code = #<null>
* group[=].element[=].display = "ENTERED IN ERROR - NULL"
* group[=].element[=].target.code = #active
* group[=].element[=].target.display = "active"
* group[=].element[=].target.equivalence = #wider