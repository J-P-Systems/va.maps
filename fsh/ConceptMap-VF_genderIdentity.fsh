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
* group[=].element[=].target.code = #unknown
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DOES NOT WISH TO DISCLOSE"
* group[=].element[+].code = #F
* group[=].element[=].target.code = #female
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "FEMALE"
* group[=].element[+].code = #M
* group[=].element[=].target.code = #male
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "MALE"
* group[=].element[+].code = #B
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "NON-BINARY"
* group[=].element[+].code = #O
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "OTHER"
* group[=].element[+].code = #TF
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "TRANSGENDER FEMALE"
* group[=].element[+].code = #TM
* group[=].element[=].target.code = #other
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "TRANSGENDER MALE"