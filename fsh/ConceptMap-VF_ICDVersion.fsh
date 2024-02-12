Instance: CMVFICDVersion
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFICDVersion"
* name = "VF_ICDVersion"
* title = "VF_ICDVersion"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_ICDVersion"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFICDVersion"
* group[0].source = "urn:undefined"
* group[=].element[0].code = #10D
* group[=].element[=].display = "ICD-10-CM"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-cm
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #10P
* group[=].element[=].display = "ICD-10-PCS"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-pcs
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ICP
* group[=].element[=].display = "ICD-9 Proc"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-pcs
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ICD
* group[=].element[=].display = "ICD-9-CM"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equivalent