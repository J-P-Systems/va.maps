Instance: encounterProblemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/encounterProblemStatus"
* name = "EncounterProblemStatus"
* title = "encounterProblemStatus"
* status = #active
* experimental = false
* description = "Terminology Maps encounterProblemStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/encounterProblemStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/encounterProblemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000010.07-.06"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #R
* group[=].element[=].display = "RESOLVED"
* group[=].element[=].target.code = #resolved
* group[=].element[=].target.display = "resolved"
* group[=].element[=].target.equivalence = #equal

ValueSet: encounterProblemStatus
Title: "encounterProblemStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps encounterProblemStatus"
* ^experimental = false
* ^status = #active
* ^name = "EncounterProblemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#resolved "resolved"

ValueSet: encounterProblemStatus-vista
Title: "encounterProblemStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps encounterProblemStatus"
* ^experimental = false
* ^status = #active
* ^name = "EncounterProblemStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/9000010.07-.06#R "RESOLVED"