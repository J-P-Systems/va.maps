Instance: VF-raceCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-raceCategory"
* name = "VF_raceCategory"
* title = "VF_raceCategory"
* status = #active
* experimental = false
* description = "Terminology Maps VF_raceCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/raceCategory-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/raceCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #7
* group[=].element[=].display = "*Unknown at this time*"
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #D
* group[=].element[=].display = "DECLINED TO ANSWER"
* group[=].element[=].target.code = #ASKU
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #U
* group[=].element[=].display = "UNKNOWN BY PATIENT"
* group[=].element[=].target.code = #ASKU
* group[=].element[=].target.equivalence = #wider
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "urn:oid:2.16.840.1.113883.6.238"
* group[=].element[0].code = #3
* group[=].element[=].display = "AMERICAN INDIAN OR ALASKA NATIVE"
* group[=].element[=].target.code = #1002-5
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #B
* group[=].element[=].display = "BLACK OR AFRICAN AMERICAN"
* group[=].element[=].target.code = #2054-5
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #H
* group[=].element[=].display = "NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER"
* group[=].element[=].target.code = #2076-8
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #W
* group[=].element[=].display = "WHITE"
* group[=].element[=].target.code = #2106-3
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #6
* group[=].element[=].display = "WHITE NOT OF HISP ORIG"
* group[=].element[=].target.code = #2106-3
* group[=].element[=].target.equivalence = #equal

ValueSet: raceCategory
Title: "raceCategory FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_raceCategory](ConceptMap-VF-raceCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "RaceCategory"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK 
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#ASKU 
* include urn:oid:2.16.840.1.113883.6.238#1002-5 
* include urn:oid:2.16.840.1.113883.6.238#2054-5 
* include urn:oid:2.16.840.1.113883.6.238#2076-8 
* include urn:oid:2.16.840.1.113883.6.238#2106-3 

ValueSet: raceCategory-vista
Title: "raceCategory VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_raceCategory](ConceptMap-VF-raceCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "RaceCategory_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#7 "*Unknown at this time*"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DECLINED TO ANSWER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#U "UNKNOWN BY PATIENT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#3 "AMERICAN INDIAN OR ALASKA NATIVE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#B "BLACK OR AFRICAN AMERICAN"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#H "NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#W "WHITE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#6 "WHITE NOT OF HISP ORIG"