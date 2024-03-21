Instance: CMVFethnicityCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFethnicityCategory"
* name = "VF_ethnicityCategory"
* title = "VF_ethnicityCategory"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ethnicityCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFethnicityCategory-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFethnicityCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2-6"
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
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/2-6"
* group[=].target = "urn:oid:2.16.840.1.113883.6.238"
* group[=].element[0].code = #H
* group[=].element[=].display = "HISPANIC OR LATINO"
* group[=].element[=].target.code = #2135-2
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #N
* group[=].element[=].display = "NOT HISPANIC OR LATINO"
* group[=].element[=].target.code = #2186-5
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFethnicityCategory
Title: "VF_ethnicityCategory"
Description: "FHIR Target ValueSet for Terminology Maps VF_ethnicityCategory"
* ^experimental = false
* ^name = "VF_ethnicityCategory"
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#UNK 
* include http://terminology.hl7.org/CodeSystem/v3-NullFlavor#ASKU 
* include urn:oid:2.16.840.1.113883.6.238#2135-2 
* include urn:oid:2.16.840.1.113883.6.238#2186-5 

ValueSet: VSVFethnicityCategory-vista
Title: "VF_ethnicityCategory VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ethnicityCategory"
* ^experimental = false
* ^name = "VF_ethnicityCategory"
* include http://va.gov/terminology/vistaDefinedTerms/2-6#_Unknown_at_this_time_ "*Unknown at this time*"
* include http://va.gov/terminology/vistaDefinedTerms/2-6#D "DECLINED TO ANSWER"
* include http://va.gov/terminology/vistaDefinedTerms/2-6#U "UNKNOWN BY PATIENT"
* include http://va.gov/terminology/vistaDefinedTerms/2-6#H "HISPANIC OR LATINO"
* include http://va.gov/terminology/vistaDefinedTerms/2-6#N "NOT HISPANIC OR LATINO"