Instance: VF-DPPLungCancerScreeningOEQ
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DPPLungCancerScreeningOEQ"
* name = "VF_DPPLungCancerScreeningOEQ"
* title = "VF_DPPLungCancerScreeningOEQ"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DPPLungCancerScreeningOEQ"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOEQ-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreeningOEQ"
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

ValueSet: DPPLungCancerScreeningOEQ
Title: "DPPLungCancerScreeningOEQ FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOEQ](ConceptMap-VF-DPPLungCancerScreeningOEQ.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOEQ"
* include http://snomed.info/sct#11651000161100 "Number of years smoked cigarettes (observable entity)"
* include http://snomed.info/sct#11641000161103 "Average number of packs of cigarettes smoked per day (observable entity)"

ValueSet: DPPLungCancerScreeningOEQ-vista
Title: "DPPLungCancerScreeningOEQ VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DPPLungCancerScreeningOEQ](ConceptMap-VF-DPPLungCancerScreeningOEQ.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreeningOEQ_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_YEARS_SMOKED "LCS YEARS SMOKED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_PACKS/DAY "LCS PACKS/DAY"