ValueSet: VSVFImageStatusRadNuc
Title: "VF_ImageStatusRadNuc"
Description: "Navigate to [ConceptMap VF_ImageStatusRadNuc](ConceptMap-CMVFImageStatusRadNuc.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_ImageStatusRadNuc"
* include http://hl7.org/fhir/observation-status#cancelled "Cancelled"
* include http://va.gov/terminology/vistaDefinedElements/74-5#X "DELETED"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://va.gov/terminology/vistaDefinedElements/74-5#D "DRAFT"
* include http://va.gov/terminology/vistaDefinedElements/74-5#EF "ELECTRONICALLY FILED"
* include http://va.gov/terminology/vistaDefinedElements/74-5#PD "PROBLEM DRAFT"
* include http://va.gov/terminology/vistaDefinedElements/74-5#R "RELEASED/NOT VERIFIED"
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://va.gov/terminology/vistaDefinedElements/74-5#V "VERIFIED"