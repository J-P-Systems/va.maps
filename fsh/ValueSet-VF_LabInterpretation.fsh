ValueSet: VSVFLabInterpretation
Title: "VF_LabInterpretation"
Description: "Navigate to [ConceptMap VF_LabInterpretation](ConceptMap-CMVFLabInterpretation.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_LabInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#H "High"
* include http://va.gov/terminology/vistaDefinedElements/63.04-2+through+862#H 
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#L "Low"
* include http://va.gov/terminology/vistaDefinedElements/63.04-2+through+862#L 
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#HH "Critical high"
* include http://va.gov/terminology/vistaDefinedElements/63.04-2+through+862#H* 
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#LL "Critical low"
* include http://va.gov/terminology/vistaDefinedElements/63.04-2+through+862#L* 