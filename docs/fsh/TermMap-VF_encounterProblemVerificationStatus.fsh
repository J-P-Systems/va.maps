Instance: VF-encounterProblemVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-encounterProblemVerificationStatus"
* name = "VF_encounterProblemVerificationStatus"
* title = "VF_encounterProblemVerificationStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_encounterProblemVerificationStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/encounterProblemVerificationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/encounterProblemVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* group[=].element[0].code = #C
* group[=].element[=].display = "CONSIDER"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #D
* group[=].element[=].display = "DOUBTFUL"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #F
* group[=].element[=].display = "FOLLOW UP"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #M
* group[=].element[=].display = "MAYBE, POSSIBLE, PERHAPS"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "PROBABLE"
* group[=].element[=].target.code = #unconfirmed
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #O
* group[=].element[=].display = "RULE OUT"
* group[=].element[=].target.code = #differential
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #S
* group[=].element[=].display = "SUSPECT, SUSPICIOUS"
* group[=].element[=].target.code = #provisional
* group[=].element[=].target.equivalence = #equal

ValueSet: encounterProblemVerificationStatus
Title: "encounterProblemVerificationStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_encounterProblemVerificationStatus](ConceptMap-VF-encounterProblemVerificationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "EncounterProblemVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional 
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#unconfirmed 
* include http://terminology.hl7.org/CodeSystem/condition-ver-status#differential 

ValueSet: encounterProblemVerificationStatus-vista
Title: "encounterProblemVerificationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_encounterProblemVerificationStatus](ConceptMap-VF-encounterProblemVerificationStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "EncounterProblemVerificationStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#C "CONSIDER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DOUBTFUL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#F "FOLLOW UP"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#M "MAYBE, POSSIBLE, PERHAPS"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#P "PROBABLE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#O "RULE OUT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#S "SUSPECT, SUSPICIOUS"