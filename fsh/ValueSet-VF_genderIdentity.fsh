ValueSet: VSVFgenderIdentity
Title: "VF_genderIdentity"
Description: "Navigate to [ConceptMap VF_genderIdentity](ConceptMap-CMVFgenderIdentity.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_genderIdentity"
* include http://hl7.org/fhir/administrative-gender#unknown 
* include http://va.gov/terminology/vistaDefinedElements/2-.024#N "DOES NOT WISH TO DISCLOSE"
* include http://hl7.org/fhir/administrative-gender#female 
* include http://va.gov/terminology/vistaDefinedElements/2-.024#F "FEMALE"
* include http://hl7.org/fhir/administrative-gender#male 
* include http://va.gov/terminology/vistaDefinedElements/2-.024#M "MALE"
* include http://hl7.org/fhir/administrative-gender#other 
* include http://va.gov/terminology/vistaDefinedElements/2-.024#B "NON-BINARY"
* include http://va.gov/terminology/vistaDefinedElements/2-.024#O "OTHER"
* include http://va.gov/terminology/vistaDefinedElements/2-.024#TF "TRANSGENDER FEMALE"
* include http://va.gov/terminology/vistaDefinedElements/2-.024#TM "TRANSGENDER MALE"