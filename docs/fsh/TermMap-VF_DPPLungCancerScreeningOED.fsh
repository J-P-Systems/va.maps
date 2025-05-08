Instance: VF-DPPLungCancerScreeningOED
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DPPLungCancerScreeningOED"
* name = "VF_DPPLungCancerScreeningOED"
* title = "VF_DPPLungCancerScreeningOED"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DPPLungCancerScreeningOED"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOED-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOED"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #LCS_QUIT_YEAR_(ACTUAL)
* group[=].element[=].display = "LCS QUIT YEAR (ACTUAL)"
* group[=].element[=].target.code = #160625004
* group[=].element[=].target.display = "Date ceased smoking (observable entity)"
* group[=].element[=].target.equivalence = #equal

ValueSet: DPPLungCancerScreeningOED
Title: "DPPLungCancerScreeningOED FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOED](ConceptMap-VF-DPPLungCancerScreeningOED.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOED"
* include http://snomed.info/sct#160625004 "Date ceased smoking (observable entity)"

ValueSet: DPPLungCancerScreeningOED-vista
Title: "DPPLungCancerScreeningOED VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOED](ConceptMap-VF-DPPLungCancerScreeningOED.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOED_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_QUIT_YEAR_(ACTUAL) "LCS QUIT YEAR (ACTUAL)"