Instance: VF-ethnicityCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ethnicityCategory"
* name = "VF_ethnicityCategory"
* title = "VF_ethnicityCategory"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ethnicityCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ethnicityCategory-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ethnicityCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #_Unknown_at_this_time_
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
* group[=].element[0].code = #H
* group[=].element[=].display = "HISPANIC OR LATINO"
* group[=].element[=].target.code = #2135-2
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #N
* group[=].element[=].display = "NOT HISPANIC OR LATINO"
* group[=].element[=].target.code = #2186-5
* group[=].element[=].target.equivalence = #equal

ValueSet: ethnicityCategory
Title: "ethnicityCategory FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ethnicityCategory](ConceptMap-VF-ethnicityCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "EthnicityCategory"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK 
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#ASKU 
* include urn:oid:2.16.840.1.113883.6.238#2135-2 
* include urn:oid:2.16.840.1.113883.6.238#2186-5 

ValueSet: ethnicityCategory-vista
Title: "ethnicityCategory VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ethnicityCategory](ConceptMap-VF-ethnicityCategory.html)"
* ^experimental = false
* ^status = #active
* ^name = "EthnicityCategory_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#_Unknown_at_this_time_ "*Unknown at this time*"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#D "DECLINED TO ANSWER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#U "UNKNOWN BY PATIENT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#H "HISPANIC OR LATINO"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#N "NOT HISPANIC OR LATINO"