Instance: VF-DPPLungCancerScreeningOE
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DPPLungCancerScreeningOE"
* name = "VF_DPPLungCancerScreeningOE"
* title = "VF_DPPLungCancerScreeningOE"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DPPLungCancerScreeningOE"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOE-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOE"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #LCS_YEARS_SMOKED
* group[=].element[=].display = "LCS YEARS SMOKED"
* group[=].element[=].target.code = #11651000161100
* group[=].element[=].target.display = "Number of years smoked cigarettes (observable entity)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #LCS_PACKS/DAY
* group[=].element[=].display = "LCS PACKS/DAY"
* group[=].element[=].target.code = #11641000161103
* group[=].element[=].target.display = "Average number of packs of cigarettes smoked per day (observable entity)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #LCS_QUIT_YEAR_(ACTUAL)
* group[=].element[=].display = "LCS QUIT YEAR (ACTUAL)"
* group[=].element[=].target.code = #160625004
* group[=].element[=].target.display = "Date ceased smoking (observable entity)"
* group[=].element[=].target.equivalence = #equal

ValueSet: DPPLungCancerScreeningOE
Title: "DPPLungCancerScreeningOE FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOE](ConceptMap-VF-DPPLungCancerScreeningOE.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOE"
* include http://snomed.info/sct#11651000161100 "Number of years smoked cigarettes (observable entity)"
* include http://snomed.info/sct#11641000161103 "Average number of packs of cigarettes smoked per day (observable entity)"
* include http://snomed.info/sct#160625004 "Date ceased smoking (observable entity)"

ValueSet: DPPLungCancerScreeningOE-vista
Title: "DPPLungCancerScreeningOE VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOE](ConceptMap-VF-DPPLungCancerScreeningOE.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOE_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_YEARS_SMOKED "LCS YEARS SMOKED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_PACKS/DAY "LCS PACKS/DAY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_QUIT_YEAR_(ACTUAL) "LCS QUIT YEAR (ACTUAL)"