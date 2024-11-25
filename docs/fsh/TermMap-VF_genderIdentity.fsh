Instance: genderIdentity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/genderIdentity"
* name = "genderIdentity"
* title = "genderIdentity"
* status = #active
* experimental = false
* description = "Terminology Maps genderIdentity "
* sourceCanonical = "http://va.gov/fhir/ValueSet/genderIdentity-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/genderIdentity"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2-.024"
* group[=].target = "http://hl7.org/fhir/gender-identity"
* group[=].element[0].code = #N
* group[=].element[=].display = "DOES NOT WISH TO DISCLOSE"
* group[=].element[=].target.code = #non-disclose
* group[=].element[=].target.display = "does not wish to disclose"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #female
* group[=].element[=].target.display = "female"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #male
* group[=].element[=].target.display = "male"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #B
* group[=].element[=].display = "NON-BINARY"
* group[=].element[=].target.code = #non-binary
* group[=].element[=].target.display = "non-binary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #O
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TF
* group[=].element[=].display = "TRANSGENDER FEMALE"
* group[=].element[=].target.code = #transgender-female
* group[=].element[=].target.display = "transgender female"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TM
* group[=].element[=].display = "TRANSGENDER MALE"
* group[=].element[=].target.code = #transgender-male
* group[=].element[=].target.display = "transgender male"
* group[=].element[=].target.equivalence = #equal

ValueSet: genderIdentity
Title: "genderIdentity FHIR"
Description: "FHIR Target ValueSet for Terminology Maps genderIdentity"
* ^experimental = false
* ^status = #active
* ^name = "genderIdentity"
* include http://hl7.org/fhir/gender-identity#non-disclose "does not wish to disclose"
* include http://hl7.org/fhir/gender-identity#female "female"
* include http://hl7.org/fhir/gender-identity#male "male"
* include http://hl7.org/fhir/gender-identity#non-binary "non-binary"
* include http://hl7.org/fhir/gender-identity#other "other"
* include http://hl7.org/fhir/gender-identity#transgender-female "transgender female"
* include http://hl7.org/fhir/gender-identity#transgender-male "transgender male"

ValueSet: genderIdentity-vista
Title: "genderIdentity VistA"
Description: "VistA Source ValueSet for Terminology Maps genderIdentity"
* ^experimental = false
* ^status = #active
* ^name = "genderIdentity_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#N "DOES NOT WISH TO DISCLOSE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#B "NON-BINARY"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#O "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#TF "TRANSGENDER FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#TM "TRANSGENDER MALE"