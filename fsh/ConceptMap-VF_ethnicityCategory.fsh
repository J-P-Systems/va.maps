Instance: CMVFethnicityCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFethnicityCategory"
* name = "VF_ethnicityCategory"
* title = "VF_ethnicityCategory"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ethnicityCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFethnicityCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2-6"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "*Unknown at this time*"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #ASKU
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "DECLINED TO ANSWER"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #ASKU
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "UNKNOWN BY PATIENT"
* group[+].source = "http://va.gov/terminology/vistaDefinedElements/2-6"
* group[=].target = "urn:oid:2.16.840.1.113883.6.238"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #2135-2
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "HISPANIC OR LATINO"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #2186-5
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "NOT HISPANIC OR LATINO"