Instance: CMVFICDCodingSystems
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFICDCodingSystems"
* name = "VF_ICDCodingSystems"
* title = "VF_ICDCodingSystems"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ICDCodingSystems"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFICDCodingSystems"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/80.4-.01"
* group[=].target = "null"
* group[=].element[0].code = #ICD-10-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-9-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-9_Proc
* group[=].element[=].target.code = #null
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-10-PCS
* group[=].element[=].target.code = #http://www.cms.gov/Medicare/Coding/ICD10
* group[=].element[=].target.equivalence = #equal