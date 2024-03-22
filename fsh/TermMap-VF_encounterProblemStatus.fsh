Instance: CMVFencounterProblemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterProblemStatus"
* name = "VF_encounterProblemStatus"
* title = "VF_encounterProblemStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_encounterProblemStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterProblemStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterProblemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000010.07-.06"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #R
* group[=].element[=].display = "RESOLVED"
* group[=].element[=].target.code = #resolved
* group[=].element[=].target.display = "resolved"
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFencounterProblemStatus
Title: "VF_encounterProblemStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_encounterProblemStatus"
* ^experimental = false
* ^name = "VF_encounterProblemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#resolved "resolved"

ValueSet: VSVFencounterProblemStatus-vista
Title: "VF_encounterProblemStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_encounterProblemStatus"
* ^experimental = false
* ^name = "VF_encounterProblemStatus"
* include http://va.gov/terminology/vistaDefinedTerms/9000010.07-.06#R "RESOLVED"