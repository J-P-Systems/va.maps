Instance: CMVFproviderGender
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFproviderGender"
* name = "VF_providerGender"
* title = "VF_providerGender"
* status = #active
* experimental = true
* description = "Terminology Maps VF_providerGender"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFproviderGender"
* group[0].source = "undefined"
* group[=].target = "http://hl7.org/fhir/administrative-gender"
* group[=].element[0].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equal