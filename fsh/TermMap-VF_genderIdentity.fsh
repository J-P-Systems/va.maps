Instance: CMVFgenderIdentity
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFgenderIdentity"
* name = "VF_genderIdentity"
* title = "VF_genderIdentity"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_genderIdentity"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFgenderIdentity-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFgenderIdentity"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2-.024"
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

ValueSet: VSVFgenderIdentity
Title: "VF_genderIdentity"
Description: "FHIR Target ValueSet for Terminology Maps VF_genderIdentity"
* ^experimental = false
* ^name = "VF_genderIdentity"
* include http://hl7.org/fhir/administrative-gender#unknown 
* include http://hl7.org/fhir/administrative-gender#female 
* include http://hl7.org/fhir/administrative-gender#male 
* include http://hl7.org/fhir/administrative-gender#other 

ValueSet: VSVFgenderIdentity-vista
Title: "VF_genderIdentity VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_genderIdentity"
* ^experimental = false
* ^name = "VF_genderIdentity"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#N "DOES NOT WISH TO DISCLOSE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#F "FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#M "MALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#B "NON-BINARY"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#O "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#TF "TRANSGENDER FEMALE"
* include http://va.gov/terminology/vistaDefinedTerms/2-.024#TM "TRANSGENDER MALE"