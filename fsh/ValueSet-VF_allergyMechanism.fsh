ValueSet: VSVFallergyMechanism
Title: "VF_allergyMechanism"
Description: "Navigate to [ConceptMap VF_allergyMechanism](ConceptMap-CMVFallergyMechanism.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_allergyMechanism"
* include http://hl7.org/fhir/allergy-intolerance-type#allergy "allergy"
* include http://va.gov/terminology/vistaDefinedElements/120.8-17#A "ALLERGY"
* include http://hl7.org/fhir/allergy-intolerance-type#intolerance "intolerance"
* include http://va.gov/terminology/vistaDefinedElements/120.8-17#P "PHARMACOLOGIC"