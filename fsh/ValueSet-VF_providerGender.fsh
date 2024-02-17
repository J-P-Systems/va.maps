ValueSet: VSVFproviderGender
Title: "VF_providerGender"
Description: "Navigate to [ConceptMap VF_providerGender](ConceptMap-CMVFproviderGender.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_providerGender"
* include http://hl7.org/fhir/administrative-gender#female 
* include urn:undefined#F "FEMALE"
* include http://hl7.org/fhir/administrative-gender#male 
* include urn:undefined#M "MALE"