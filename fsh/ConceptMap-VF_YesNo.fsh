Instance: CMVFYesNo
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFYesNo"
* name = "VF_YesNo"
* title = "VF_YesNo"
* status = #active
* experimental = true
* description = "Terminology Maps VF_YesNo"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFYesNo"
* group[0].source = "undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v2-0136"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #Y
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "urn:oid:2.16.840.1.113883.18.347"
* group[=].element[+].code = #0
* group[=].element[=].target.code = #N
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "urn:oid:2.16.840.1.113883.18.347"