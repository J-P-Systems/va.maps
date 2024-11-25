Instance: birthSex
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/birthSex"
* name = "birthSex"
* title = "birthSex"
* status = #active
* experimental = false
* description = "Terminology Maps birthSex "
* sourceCanonical = "http://va.gov/fhir/ValueSet/birthSex-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/birthSex"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2-.02"
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
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/2-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #[NULL]
* group[=].element[=].display = "[NULL]"
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.display = "unknown"
* group[=].element[=].target.equivalence = #equal

ValueSet: birthSex
Title: "birthSex FHIR"
Description: "FHIR Target ValueSet for Terminology Maps birthSex"
* ^experimental = false
* ^status = #active
* ^name = "birthSex"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F "female"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M "male"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"

ValueSet: birthSex-vista
Title: "birthSex VistA"
Description: "VistA Source ValueSet for Terminology Maps birthSex"
* ^experimental = false
* ^status = #active
* ^name = "birthSex_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#[NULL] "[NULL]"