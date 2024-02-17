ValueSet: VSVFencounterProblemStatus
Title: "VF_encounterProblemStatus"
Description: "Navigate to [ConceptMap VF_encounterProblemStatus](ConceptMap-CMVFencounterProblemStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_encounterProblemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#resolved "resolved"
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#R "RESOLVED"