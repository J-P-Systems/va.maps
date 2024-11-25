Instance: providerGender
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/providerGender"
* name = "providerGender"
* title = "providerGender"
* status = #active
* experimental = false
* description = "Terminology Maps providerGender "
* sourceCanonical = "http://va.gov/fhir/ValueSet/providerGender-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/providerGender"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/200-4"
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
Description: "FHIR Target ValueSet for Terminology Maps providerGender"
* ^experimental = false
* ^status = #active
* ^name = "providerGender"
* include http://hl7.org/fhir/administrative-gender#female 
* include http://hl7.org/fhir/administrative-gender#male 

ValueSet: providerGender-vista
Title: "providerGender VistA"
Description: "VistA Source ValueSet for Terminology Maps providerGender"
* ^experimental = false
* ^status = #active
* ^name = "providerGender_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/200-4#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/200-4#M "MALE"