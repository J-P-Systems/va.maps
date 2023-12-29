Instance: CMVFraceCategory
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFraceCategory"
* name = "VF_raceCategory"
* title = "VF_raceCategory"
* status = #active
* experimental = true
* description = "Terminology Maps VF_raceCategory"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFraceCategory"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2-2"
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
* group[+].source = "http://va.gov/terminology/vistaDefinedElements/2-2"
* group[=].target = "urn:oid:2.16.840.1.113883.6.238"
* group[=].element[0].code = #null
* group[=].element[=].target.code = #1002-5
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "AMERICAN INDIAN OR ALASKA NATIVE"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #2054-5
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "BLACK OR AFRICAN AMERICAN"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #2076-8
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "NATIVE HAWAIIAN OR OTHER PACIFIC ISLANDER"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #2106-3
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WHITE"
* group[=].element[+].code = #null
* group[=].element[=].target.code = #2106-3
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "WHITE NOT OF HISP ORIG"