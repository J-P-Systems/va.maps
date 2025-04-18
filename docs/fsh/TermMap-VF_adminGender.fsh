Instance: VF-adminGender
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-adminGender"
* name = "VF_adminGender"
* title = "VF_adminGender"
* status = #active
* experimental = false
* description = "Terminology Maps VF_adminGender"
* sourceCanonical = "http://va.gov/fhir/ValueSet/adminGender-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/adminGender"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/administrative-gender"
* group[=].element[0].code = #N
* group[=].element[=].display = "DOES NOT WISH TO DISCLOSE"
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.display = "Unknown"
* group[=].element[=].target.equivalence = #wider
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
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "other"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #O
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TF
* group[=].element[=].display = "TRANSGENDER FEMALE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "other"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TM
* group[=].element[=].display = "TRANSGENDER MALE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "other"
* group[=].element[=].target.equivalence = #wider

ValueSet: adminGender
Title: "adminGender FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_adminGender](ConceptMap-VF-adminGender.html)"
* ^experimental = false
* ^status = #active
* ^name = "AdminGender"
* include http://hl7.org/fhir/administrative-gender#unknown "Unknown"
* include http://hl7.org/fhir/administrative-gender#female "female"
* include http://hl7.org/fhir/administrative-gender#male "male"
* include http://hl7.org/fhir/administrative-gender#other "other"

ValueSet: adminGender-vista
Title: "adminGender VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_adminGender](ConceptMap-VF-adminGender.html)"
* ^experimental = false
* ^status = #active
* ^name = "AdminGender_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#N "DOES NOT WISH TO DISCLOSE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#B "NON-BINARY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#O "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TF "TRANSGENDER FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TM "TRANSGENDER MALE"