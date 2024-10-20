Instance: CMVFImageStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFImageStatus"
* name = "VF_ImageStatus"
* title = "VF_ImageStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ImageStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFImageStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFImageStatus"
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

ValueSet: VSVFImageStatus
Title: "VF_ImageStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_ImageStatus"
* ^experimental = false
* ^name = "VF_ImageStatus"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#final "Final"
* include http://hl7.org/fhir/observation-status#amended "Amended"

ValueSet: VSVFImageStatus-vista
Title: "VF_ImageStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ImageStatus"
* ^experimental = false
* ^name = "VF_ImageStatus"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#D "DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#PD "PROBLEM DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#RNV "RELEASED NOT VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#ROV "RELEASED OFF-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#SROV "RELEASED OFF-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#RV "RELEASED ON-LINE VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#SRV "RELEASED ON-LINE VERIFIED OF SUPERSEDED"
* include http://va.gov/terminology/vistaDefinedTerms/691.5-1506#S "SUPERSEDED"