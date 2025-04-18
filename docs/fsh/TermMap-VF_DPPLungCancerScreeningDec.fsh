Instance: VF-DPPLungCancerScreeningDec
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DPPLungCancerScreeningDec"
* name = "VF_DPPLungCancerScreeningDec"
* title = "VF_DPPLungCancerScreeningDec"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DPPLungCancerScreeningDec"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningDec-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningDec"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #LCS_PT_DECLINES/UNABLE_TO_GIVE_PK_YR_HX
* group[=].element[=].display = "LCS PT DECLINES/UNABLE TO GIVE PK YR HX"
* group[=].element[=].target.code = #11351000175103
* group[=].element[=].target.display = "Tobacco use screening declined (situation)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #VA-TOBACCO_USE_DECLINED_TO_ANSWER_CIGARETTES
* group[=].element[=].display = "VA-TOBACCO USE DECLINED TO ANSWER CIGARETTES"
* group[=].element[=].target.code = #11351000175103
* group[=].element[=].target.display = "Tobacco use screening declined (situation)"
* group[=].element[=].target.equivalence = #equal

ValueSet: DPPLungCancerScreeningDec
Title: "DPPLungCancerScreeningDec FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DPPLungCancerScreeningDec](ConceptMap-VF-DPPLungCancerScreeningDec.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningDec"
* include http://snomed.info/sct#11351000175103 "Tobacco use screening declined (situation)"

ValueSet: DPPLungCancerScreeningDec-vista
Title: "DPPLungCancerScreeningDec VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DPPLungCancerScreeningDec](ConceptMap-VF-DPPLungCancerScreeningDec.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningDec_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_PT_DECLINES/UNABLE_TO_GIVE_PK_YR_HX "LCS PT DECLINES/UNABLE TO GIVE PK YR HX"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#VA-TOBACCO_USE_DECLINED_TO_ANSWER_CIGARETTES "VA-TOBACCO USE DECLINED TO ANSWER CIGARETTES"