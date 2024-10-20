Instance: CMVFbirthSex
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFbirthSex"
* name = "VF_birthSex"
* title = "VF_birthSex"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_birthSex"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFbirthSex-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFbirthSex"
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

ValueSet: VSVFbirthSex
Title: "VF_birthSex"
Description: "FHIR Target ValueSet for Terminology Maps VF_birthSex"
* ^experimental = false
* ^name = "VF_birthSex"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#F "female"
* include http://terminology.hl7.org/CodeSystem/v3-AdministrativeGender#M "male"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK "unknown"

ValueSet: VSVFbirthSex-vista
Title: "VF_birthSex VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_birthSex"
* ^experimental = false
* ^name = "VF_birthSex"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.02#[NULL] "[NULL]"