Instance: VF-SmokingStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-SmokingStatus"
* name = "VF_SmokingStatus"
* title = "VF_SmokingStatus"
* status = #active
* experimental = false
* description = "Terminology Maps VF_SmokingStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/SmokingStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/SmokingStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9999999.64"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #5316637
* group[=].element[=].display = "CURRENT SMOKER"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316643
* group[=].element[=].display = "CURRENT TOBACCO USE"
* group[=].element[=].target.code = #110483000
* group[=].element[=].target.display = "Tobacco user (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316635
* group[=].element[=].display = "FORMER SMOKER - <100 LIFETIME CIGARETTES"
* group[=].element[=].target.code = #8517006
* group[=].element[=].target.display = "Ex-smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316641
* group[=].element[=].display = "HF V9 CURRENT SMOKER"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316645
* group[=].element[=].display = "LIFETIME NON-SMOKER"
* group[=].element[=].target.code = #266919005
* group[=].element[=].target.display = "Never smoked tobacco (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316639
* group[=].element[=].display = "ONS RA MH CALMING ID-SMOKING"
* group[=].element[=].target.code = #77176002
* group[=].element[=].target.display = "Smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"
* group[=].element[+].code = #5316633
* group[=].element[=].display = "PREVIOUS SMOKER"
* group[=].element[=].target.code = #8517006
* group[=].element[=].target.display = "Ex-smoker (finding)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "Mapped values from VHIE Smoking Status effective 02/19/2019"

ValueSet: SmokingStatus
Title: "SmokingStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_SmokingStatus](ConceptMap-VF-SmokingStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "SmokingStatus"
* include http://snomed.info/sct#77176002 "Smoker (finding)"
* include http://snomed.info/sct#110483000 "Tobacco user (finding)"
* include http://snomed.info/sct#8517006 "Ex-smoker (finding)"
* include http://snomed.info/sct#266919005 "Never smoked tobacco (finding)"

ValueSet: SmokingStatus-vista
Title: "SmokingStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_SmokingStatus](ConceptMap-VF-SmokingStatus.html)"
* ^experimental = false
* ^status = #active
* ^name = "SmokingStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316637 "CURRENT SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316643 "CURRENT TOBACCO USE"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316635 "FORMER SMOKER - <100 LIFETIME CIGARETTES"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316641 "HF V9 CURRENT SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316645 "LIFETIME NON-SMOKER"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316639 "ONS RA MH CALMING ID-SMOKING"
* include http://va.gov/terminology/vistaDefinedTerms/9999999.64#5316633 "PREVIOUS SMOKER"