Instance: CMVFgenderIdentity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFgenderIdentity"
* name = "VF_genderIdentity"
* title = "VF_genderIdentity"
* status = #active
* experimental = true
* description = "Terminology Maps VF_genderIdentity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFgenderIdentity"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2-.024"
* group[=].target = "http://hl7.org/fhir/administrative-gender"
* group[=].element[0].code = #N
* group[=].element[=].display = "DOES NOT WISH TO DISCLOSE"
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #F
* group[=].element[=].display = "FEMALE"
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MALE"
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #B
* group[=].element[=].display = "NON-BINARY"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #O
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #TF
* group[=].element[=].display = "TRANSGENDER FEMALE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TM
* group[=].element[=].display = "TRANSGENDER MALE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider