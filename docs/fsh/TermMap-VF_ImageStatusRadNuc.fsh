Instance: VF-ImageStatusRadNuc
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ImageStatusRadNuc"
* name = "VF_ImageStatusRadNuc"
* title = "VF_ImageStatusRadNuc"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ImageStatusRadNuc"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ImageStatusRadNuc-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ImageStatusRadNuc"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/observation-status"
* group[=].element[0].code = #X
* group[=].element[=].display = "DELETED"
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.display = "Cancelled"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "X' (Deleted) status refers to a report that is deleted from a case, but remains in the database though not selectable from any Radiology options."
* group[=].element[+].code = #D
* group[=].element[=].display = "DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "D' (Draft) status or 'PD' (Problem Draft) status refers to a report that is available only for display in the Rad/Nuc Med Department. A statement describing the problem to the interpreting physician is printed at the end of reports with the 'PD' status."
* group[=].element[+].code = #EF
* group[=].element[=].display = "ELECTRONICALLY FILED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "EF' (Electronically Filed) status refers to a report that is interpreted outside the Rad/Nuc Med Department. The content is not the actual interpreted report, but canned text referring to the outside interpreted report."
* group[=].element[+].code = #PD
* group[=].element[=].display = "PROBLEM DRAFT"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "D' (Draft) status or 'PD' (Problem Draft) status refers to a report that is available only for display in the Rad/Nuc Med Department. A statement describing the problem to the interpreting physician is printed at the end of reports with the 'PD' status."
* group[=].element[+].code = #R
* group[=].element[=].display = "RELEASED/NOT VERIFIED"
* group[=].element[=].target.code = #preliminary
* group[=].element[=].target.display = "Preliminary"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "R' (Released/Not Verified) status refers to a report that is not verified by the interpreting physician and is available for display outside the Rad/Nuc Med Department. The 'R' status is allowed only when the parameter that controls this feature, 'Allow Released/Unverified' of the 'RAD/NUC MED DIVISION' file (#79), is set to 'Yes'."
* group[=].element[+].code = #V
* group[=].element[=].display = "VERIFIED"
* group[=].element[=].target.code = #final
* group[=].element[=].target.display = "Final"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "V' (Verified) status refers to a report that is verified by the interpreting physician and is available for display outside the Rad/Nuc Med Department to appropriate users, such as ward clerks, nurses, and physicians."

ValueSet: ImageStatusRadNuc
Title: "ImageStatusRadNuc FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ImageStatusRadNuc](ConceptMap-VF-ImageStatusRadNuc.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatusRadNuc"
* include http://hl7.org/fhir/observation-status#cancelled "Cancelled"
* include http://hl7.org/fhir/observation-status#preliminary "Preliminary"
* include http://hl7.org/fhir/observation-status#final "Final"

ValueSet: ImageStatusRadNuc-vista
Title: "ImageStatusRadNuc VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ImageStatusRadNuc](ConceptMap-VF-ImageStatusRadNuc.html)"
* ^experimental = false
* ^status = #active
* ^name = "ImageStatusRadNuc_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#X "DELETED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#EF "ELECTRONICALLY FILED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PD "PROBLEM DRAFT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#R "RELEASED/NOT VERIFIED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#V "VERIFIED"