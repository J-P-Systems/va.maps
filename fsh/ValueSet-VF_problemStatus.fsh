ValueSet: VSVFproblemStatus
Title: "VF_problemStatus"
Description: "Navigate to [ConceptMap VF_problemStatus](ConceptMap-CMVFproblemStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_problemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#active 
* include http://va.gov/terminology/vistaDefinedElements/9000011-.12#A "ACTIVE"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#inactive 
* include http://va.gov/terminology/vistaDefinedElements/9000011-.12#I "INACTIVE"