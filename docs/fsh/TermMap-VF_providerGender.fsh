Instance: VF-providerGender
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-providerGender"
* name = "VF_providerGender"
* title = "VF_providerGender"
* status = #active
* experimental = false
* description = "Terminology Maps VF_providerGender"
* sourceCanonical = "http://va.gov/fhir/ValueSet/providerGender-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/providerGender"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/administrative-gender"
* group[=].element[0].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equal

ValueSet: providerGender
Title: "providerGender FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_providerGender](ConceptMap-VF-providerGender.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProviderGender"
* include http://hl7.org/fhir/administrative-gender#female 
* include http://hl7.org/fhir/administrative-gender#male 

ValueSet: providerGender-vista
Title: "providerGender VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_providerGender](ConceptMap-VF-providerGender.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProviderGender_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#M "MALE"