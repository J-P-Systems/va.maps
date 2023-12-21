Instance: CMVFMaritalStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFMaritalStatus"
* name = "VF_MaritalStatus"
* title = "VF_MaritalStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_MaritalStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFMaritalStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2-.05"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* group[=].element[0].code = #DIVORCED
* group[=].element[=].target.code = #D
* group[=].element[=].target.display = "Divorced"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "DIVORCED"
* group[=].element[+].code = #MARRIED
* group[=].element[=].target.code = #M
* group[=].element[=].target.display = "Married"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "MARRIED"
* group[=].element[+].code = #"NEVER MARRIED"
* group[=].element[=].target.code = #S
* group[=].element[=].target.display = "Never Married"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "NEVER MARRIED"
* group[=].element[+].code = #SEPARATED
* group[=].element[=].target.code = #L
* group[=].element[=].target.display = "Legally Separated"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "SEPARATED"
* group[=].element[+].code = #WIDOWED
* group[=].element[=].target.code = #W
* group[=].element[=].target.display = "Widowed"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "WIDOWED"
* group[+].source = "http://va.gov/terminology/vistaDefinedElements/2-.05"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-NullFlavor"
* group[=].element[0].code = #UNKNOWN
* group[=].element[=].target.code = #UNK
* group[=].element[=].target.display = "unknown"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].display = "UNKNOWN"