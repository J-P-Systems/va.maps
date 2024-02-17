ValueSet: VSVFproblemVerificationStatus
Title: "VF_problemVerificationStatus"
Description: "Navigate to [ConceptMap VF_problemVerificationStatus](ConceptMap-CMVFproblemVerificationStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_problemVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#refuted "refuted"
* include http://va.gov/terminology/vistaDefinedElements/9000011-1.02#H "HIDDEN"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed "confirmed"
* include http://va.gov/terminology/vistaDefinedElements/9000011-1.02#P "PERMANENT"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional "provisional"
* include http://va.gov/terminology/vistaDefinedElements/9000011-1.02#T "TRANSCRIBED"