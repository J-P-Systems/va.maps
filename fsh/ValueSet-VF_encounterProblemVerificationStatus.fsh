ValueSet: VSVFencounterProblemVerificationStatus
Title: "VF_encounterProblemVerificationStatus"
Description: "Navigate to [ConceptMap VF_encounterProblemVerificationStatus](ConceptMap-CMVFencounterProblemVerificationStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_encounterProblemVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional 
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#C "CONSIDER"
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#D "DOUBTFUL"
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#F "FOLLOW UP"
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#M "MAYBE, POSSIBLE, PERHAPS"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed 
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#P "PROBABLE"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#differential 
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#O "RULE OUT"
* include http://va.gov/terminology/vistaDefinedElements/9000010.07-.06#S "SUSPECT, SUSPICIOUS"