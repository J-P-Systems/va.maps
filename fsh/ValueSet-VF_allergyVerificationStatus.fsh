ValueSet: VSVFallergyVerificationStatus
Title: "VF_allergyVerificationStatus"
Description: "Navigate to [ConceptMap VF_allergyVerificationStatus](ConceptMap-CMVFallergyVerificationStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_allergyVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "unconfirmed"
* include http://va.gov/terminology/vistaDefinedElements/120.8-19#0 "VERIFIED - NO"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "confirmed"
* include http://va.gov/terminology/vistaDefinedElements/120.8-19#1 "VERIFIED - YES"