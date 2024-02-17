ValueSet: VSVFVitalsLaterality
Title: "VF_VitalsLaterality"
Description: "Navigate to [ConceptMap VF_VitalsLaterality](ConceptMap-CMVFVitalsLaterality.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_VitalsLaterality"
* include http://snomed.info/sct#31156008 "Structure of left half of body (body structure)"
* include urn:undefined#4688660 "LEFT"
* include http://snomed.info/sct#85421007 "Structure of right half of body (body structure)"
* include urn:undefined#4688680 "RIGHT"