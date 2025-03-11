Instance: VF-ImageStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ImageStatus"
* name = "VF_ImageStatus"
* title = "VF_ImageStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ImageStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImageStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImageStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/observation-status"
* group[=].element[0].code = #D
* group[=].element[=].display = "DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PD
* group[=].element[=].display = "PROBLEM DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #RNV
* group[=].element[=].display = "RELEASED NOT VERIFIED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ROV
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SROV
* group[=].element[=].display = "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #RV
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SRV
* group[=].element[=].display = "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #S
* group[=].element[=].display = "SUPERSEDED"
* group[=].element[=].target.code = #amended
* group[=].element[=].target.display = "Amended"
* group[=].element[=].target.equivalence = #equal

ValueSet: ImageStatus
Title: "ImageStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ImageStatus](ConceptMap-VF-ImageStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatus"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://hl7.org/fhir/observation-status#amended "Amended"

ValueSet: ImageStatus-vista
Title: "ImageStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ImageStatus](ConceptMap-VF-ImageStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PD "PROBLEM DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#RNV "RELEASED NOT VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ROV "RELEASED OFF-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#SROV "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#RV "RELEASED ON-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#SRV "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#S "SUPERSEDED"