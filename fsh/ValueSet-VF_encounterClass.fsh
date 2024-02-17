ValueSet: VSVFencounterClass
Title: "VF_encounterClass"
Description: "Navigate to [ConceptMap VF_encounterClass](ConceptMap-CMVFencounterClass.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_encounterClass"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* include urn:undefined#1 "IN"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"
* include urn:undefined#0 "OUT"