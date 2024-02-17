ValueSet: VSVFallergyActive
Title: "VF_allergyActive"
Description: "Navigate to [ConceptMap VF_allergyActive](ConceptMap-CMVFallergyActive.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_allergyActive"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active "active"
* include http://va.gov/terminology/vistaDefinedElements/120.8-22#<null> "ENTERED IN ERROR - NULL"