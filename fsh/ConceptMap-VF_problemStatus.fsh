Instance: CMVFproblemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFproblemStatus"
* name = "VF_problemStatus"
* title = "VF_problemStatus"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_problemStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFproblemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000011-.12"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #A
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #active
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I
* group[=].element[=].display = "INACTIVE"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.equivalence = #equal