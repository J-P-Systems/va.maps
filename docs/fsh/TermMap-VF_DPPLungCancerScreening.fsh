Instance: VF-DPPLungCancerScreening
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-DPPLungCancerScreening"
* name = "VF_DPPLungCancerScreening"
* title = "VF_DPPLungCancerScreening"
* status = #active
* experimental = false
* description = "Terminology Maps VF_DPPLungCancerScreening"
* sourceCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreening-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/DPPLungCancerScreening"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #LCS_CURRENT_SMOKER
* group[=].element[=].display = "LCS CURRENT SMOKER"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #LCS_FORMER_SMOKER
* group[=].element[=].display = "LCS FORMER SMOKER"
* group[=].element[=].target.code = #8517006
* group[=].element[=].target.display = "Ex-smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #LCS_LIFETIME_NON-SMOKER
* group[=].element[=].display = "LCS LIFETIME NON-SMOKER"
* group[=].element[=].target.code = #266919005
* group[=].element[=].target.display = "Never smoked tobacco (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #LCS_QUIT_SMOKING_>/=_15_YEARS
* group[=].element[=].display = "LCS QUIT SMOKING >/= 15 YEARS"
* group[=].element[=].target.code = #13351000161107
* group[=].element[=].target.display = "Quit smoking tobacco fifteen or more years ago (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #VA-TOBACCO_USE_EVERY_DAY_CIGARETTES
* group[=].element[=].display = "VA-TOBACCO USE EVERY DAY CIGARETTES"
* group[=].element[=].target.code = #881661000124108
* group[=].element[=].target.display = "Smokes cigarette daily (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #VA-TOBACCO_USE_SOME_DAYS_CIGARETTES
* group[=].element[=].display = "VA-TOBACCO USE SOME DAYS CIGARETTES"
* group[=].element[=].target.code = #230059006
* group[=].element[=].target.display = "Occasional cigarette smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #VA-TOBACCO_USE_FORMER_CIGARETTES
* group[=].element[=].display = "VA-TOBACCO USE FORMER CIGARETTES"
* group[=].element[=].target.code = #281018007
* group[=].element[=].target.display = "Ex-cigarette smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #VA-TOBACCO_NEVER_USED_CIGARETTES
* group[=].element[=].display = "VA-TOBACCO NEVER USED CIGARETTES"
* group[=].element[=].target.code = #881671000124101
* group[=].element[=].target.display = "Never smoked cigarettes (finding)"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://va.gov/terminology/vistaDefinedTerms/9999999.64"
* group[=].element[0].code = #LCS_QUIT_SMOKING_<_15_YEARS_AGO
* group[=].element[=].display = "LCS QUIT SMOKING < 15 YEARS AGO"
* group[=].element[=].target.code = #LCS_QUIT_SMOKING_<_15_YEARS_AGO
* group[=].element[=].target.display = "LCS QUIT SMOKING < 15 YEARS AGO"
* group[=].element[=].target.equivalence = #equal

ValueSet: DPPLungCancerScreening
Title: "DPPLungCancerScreening FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_DPPLungCancerScreening](ConceptMap-VF-DPPLungCancerScreening.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreening"
* include http://snomed.info/sct#77176002 "Smoker (finding)"
* include http://snomed.info/sct#8517006 "Ex-smoker (finding)"
* include http://snomed.info/sct#266919005 "Never smoked tobacco (finding)"
* include http://snomed.info/sct#13351000161107 "Quit smoking tobacco fifteen or more years ago (finding)"
* include http://snomed.info/sct#881661000124108 "Smokes cigarette daily (finding)"
* include http://snomed.info/sct#230059006 "Occasional cigarette smoker (finding)"
* include http://snomed.info/sct#281018007 "Ex-cigarette smoker (finding)"
* include http://snomed.info/sct#881671000124101 "Never smoked cigarettes (finding)"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#LCS_QUIT_SMOKING_<_15_YEARS_AGO "LCS QUIT SMOKING < 15 YEARS AGO"

ValueSet: DPPLungCancerScreening-vista
Title: "DPPLungCancerScreening VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_DPPLungCancerScreening](ConceptMap-VF-DPPLungCancerScreening.html)"
* ^experimental = false
* ^status = #active
* ^name = "DPPLungCancerScreening_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_CURRENT_SMOKER "LCS CURRENT SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_FORMER_SMOKER "LCS FORMER SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_LIFETIME_NON-SMOKER "LCS LIFETIME NON-SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_QUIT_SMOKING_>/=_15_YEARS "LCS QUIT SMOKING >/= 15 YEARS"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#VA-TOBACCO_USE_EVERY_DAY_CIGARETTES "VA-TOBACCO USE EVERY DAY CIGARETTES"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#VA-TOBACCO_USE_SOME_DAYS_CIGARETTES "VA-TOBACCO USE SOME DAYS CIGARETTES"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#VA-TOBACCO_USE_FORMER_CIGARETTES "VA-TOBACCO USE FORMER CIGARETTES"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#VA-TOBACCO_NEVER_USED_CIGARETTES "VA-TOBACCO NEVER USED CIGARETTES"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#LCS_QUIT_SMOKING_<_15_YEARS_AGO "LCS QUIT SMOKING < 15 YEARS AGO"