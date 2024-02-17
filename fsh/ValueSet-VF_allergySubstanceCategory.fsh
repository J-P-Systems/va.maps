ValueSet: VSVFallergySubstanceCategory
Title: "VF_allergySubstanceCategory"
Description: "Navigate to [ConceptMap VF_allergySubstanceCategory](ConceptMap-CMVFallergySubstanceCategory.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_allergySubstanceCategory"
* include http://hl7.org/fhir/allergy-intolerance-category#medication "medication"
* include http://va.gov/terminology/vistaDefinedElements/120.8-3.1#D "DRUG"
* include http://hl7.org/fhir/allergy-intolerance-category#food 
* include http://va.gov/terminology/vistaDefinedElements/120.8-3.1#F "FOOD"
* include http://va.gov/terminology/vistaDefinedElements/120.8-3.1#O "OTHER"