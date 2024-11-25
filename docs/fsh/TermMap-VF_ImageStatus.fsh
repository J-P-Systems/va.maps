Instance: ImageStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/ImageStatus"
* name = "ImageStatus"
* title = "ImageStatus"
* status = #active
* experimental = false
* description = "Terminology Maps ImageStatus "
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImageStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImageStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/691.5-1506"
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
Description: "FHIR Target ValueSet for Terminology Maps ImageStatus"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatus"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://hl7.org/fhir/observation-status#amended "Amended"

ValueSet: ImageStatus-vista
Title: "ImageStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps ImageStatus"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#D "DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#PD "PROBLEM DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#RNV "RELEASED NOT VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#ROV "RELEASED OFF-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#SROV "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#RV "RELEASED ON-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#SRV "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#S "SUPERSEDED"