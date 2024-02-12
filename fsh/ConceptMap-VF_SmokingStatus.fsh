Instance: CMVFSmokingStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFSmokingStatus"
* name = "VF_SmokingStatus"
* title = "VF_SmokingStatus"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_SmokingStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFSmokingStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9999999.64"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #5316637
* group[=].element[=].display = "CURRENT SMOKER"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316643
* group[=].element[=].display = "CURRENT TOBACCO USE"
* group[=].element[=].target.code = #110483000
* group[=].element[=].target.display = "Tobacco user (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316635
* group[=].element[=].display = "FORMER SMOKER - <100 LIFETIME CIGARETTES"
* group[=].element[=].target.code = #8517006
* group[=].element[=].target.display = "Ex-smoker (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316641
* group[=].element[=].display = "HF V9 CURRENT SMOKER"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316645
* group[=].element[=].display = "LIFETIME NON-SMOKER"
* group[=].element[=].target.code = #266919005
* group[=].element[=].target.display = "Never smoked tobacco (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316639
* group[=].element[=].display = "ONS RA MH CALMING ID-SMOKING"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316633
* group[=].element[=].display = "PREVIOUS SMOKER"
* group[=].element[=].target.code = #8517006
* group[=].element[=].target.display = "Ex-smoker (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"