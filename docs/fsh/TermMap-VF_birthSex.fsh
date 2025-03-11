Instance: VF-birthSex
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-birthSex"
* name = "VF_birthSex"
* title = "VF_birthSex"
* status = #active
* experimental = false
* description = "Terminology Maps VF_birthSex"
* sourceCanonical = "http://va.gov/fhir/ValueSet/birthSex-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/birthSex"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender"
* group[=].element[0].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #F
* group[=].element[=].target.display = "female"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #M
* group[=].element[=].target.display = "male"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.display = "unknown"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "NULL"

ValueSet: birthSex
Title: "birthSex FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_birthSex](ConceptMap-VF-birthSex.html)"
* ^experimental = false
* ^status = #active
* ^name = "BirthSex"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F "female"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M "male"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"

ValueSet: birthSex-vista
Title: "birthSex VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_birthSex](ConceptMap-VF-birthSex.html)"
* ^experimental = false
* ^status = #active
* ^name = "BirthSex_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#null 