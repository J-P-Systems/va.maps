Instance: CMVFproviderGender
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFproviderGender"
* name = "VF_providerGender"
* title = "VF_providerGender"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_providerGender"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFproviderGender-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFproviderGender"
* group[0].source = "urn:undefined"
* group[=].target = "http://hl7.org/fhir/administrative-gender"
* group[=].element[0].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFproviderGender
Title: "VF_providerGender"
Description: "FHIR Target ValueSet for Terminology Maps VF_providerGender"
* ^experimental = false
* ^name = "VF_providerGender"
* include http://hl7.org/fhir/administrative-gender#female 
* include http://hl7.org/fhir/administrative-gender#male 

ValueSet: VSVFproviderGender-vista
Title: "VF_providerGender VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_providerGender"
* ^experimental = false
* ^name = "VF_providerGender"
* include urn:undefined#F "FEMALE"
* include urn:undefined#M "MALE"