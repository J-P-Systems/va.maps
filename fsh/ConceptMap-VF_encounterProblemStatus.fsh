Instance: CMVFencounterProblemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterProblemStatus"
* name = "VF_encounterProblemStatus"
* title = "VF_encounterProblemStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_encounterProblemStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterProblemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.07-.06"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #R
* group[=].element[=].display = "RESOLVED"
* group[=].element[=].target.code = #resolved
* group[=].element[=].target.display = "resolved"
* group[=].element[=].target.equivalence = #equal