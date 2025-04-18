Instance: VF-VitalsCuffSize
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-VitalsCuffSize"
* name = "VF_VitalsCuffSize"
* title = "VF_VitalsCuffSize"
* status = #active
* experimental = false
* description = "Terminology Maps VF_VitalsCuffSize"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VitalsCuffSize-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VitalsCuffSize"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #ADULT
* group[=].element[=].display = "ADULT"
* group[=].element[=].target.code = #720737000
* group[=].element[=].target.display = "Blood pressure cuff, adult size (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4500641
* group[=].element[=].display = "ADULT CUFF"
* group[=].element[=].target.code = #720737000
* group[=].element[=].target.display = "Blood pressure cuff, adult size (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688661
* group[=].element[=].display = "LG ADULT CUFF"
* group[=].element[=].target.code = #255509001
* group[=].element[=].target.display = "Large (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4711339
* group[=].element[=].display = "PEDIATRIC CUFF"
* group[=].element[=].target.code = #720736009
* group[=].element[=].target.display = "Blood pressure cuff, pediatric size (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688705
* group[=].element[=].display = "SM ADULT CUFF"
* group[=].element[=].target.code = #255507004
* group[=].element[=].target.display = "Small (qualifier value)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #4688708
* group[=].element[=].display = "THIGH"
* group[=].element[=].target.code = #720740000
* group[=].element[=].target.display = "Blood pressure cuff, adult thigh type (physical object)"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.dependsOn[+].property = "condition"
* group[=].element[=].target.dependsOn[=].value = "BP"
* group[=].element[+].code = #4688709
* group[=].element[=].display = "THIGH CUFF"
* group[=].element[=].target.code = #720740000
* group[=].element[=].target.display = "Blood pressure cuff, adult thigh type (physical object)"
* group[=].element[=].target.equivalence = #equal

ValueSet: VitalsCuffSize
Title: "VitalsCuffSize FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_VitalsCuffSize](ConceptMap-VF-VitalsCuffSize.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsCuffSize"
* include http://snomed.info/sct#720737000 "Blood pressure cuff, adult size (physical object)"
* include http://snomed.info/sct#255509001 "Large (qualifier value)"
* include http://snomed.info/sct#720736009 "Blood pressure cuff, pediatric size (physical object)"
* include http://snomed.info/sct#255507004 "Small (qualifier value)"
* include http://snomed.info/sct#720740000 "Blood pressure cuff, adult thigh type (physical object)"

ValueSet: VitalsCuffSize-vista
Title: "VitalsCuffSize VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_VitalsCuffSize](ConceptMap-VF-VitalsCuffSize.html)"
* ^experimental = false
* ^status = #active
* ^name = "VitalsCuffSize_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ADULT "ADULT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4500641 "ADULT CUFF"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4688661 "LG ADULT CUFF"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4711339 "PEDIATRIC CUFF"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4688705 "SM ADULT CUFF"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4688708 "THIGH"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#4688709 "THIGH CUFF"