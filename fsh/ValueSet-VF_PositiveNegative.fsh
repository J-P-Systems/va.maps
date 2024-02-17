ValueSet: VSVFPositiveNegative
Title: "VF_PositiveNegative"
Description: "Navigate to [ConceptMap VF_PositiveNegative](ConceptMap-CMVFPositiveNegative.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_PositiveNegative"
* include http://snomed.info/sct#260385009 "Negative"
* include urn:undefined#N "NEGATIVE"
* include http://snomed.info/sct#10828004 "Positive"
* include urn:undefined#P "POSITIVE"