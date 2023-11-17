Instance: CMVFProcedureCodeSystem
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFProcedureCodeSystem"
* name = "VF_ProcedureCodeSystem"
* title = "VF_ProcedureCodeSystem"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ProcedureCodeSystem"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFProcedureCodeSystem"
* group[0].source = "undefined"
* group[=].target = "undefined"
* group[=].element[0].code = #CPT
* group[=].element[=].target.code = #http://www.ama-assn.org/go/cpt
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #HCPCS
* group[=].element[=].target.code = #urn:oid:2.16.840.1.113883.6.285
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #ICD-9-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"NATIONAL DRUG CODE"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/ndc
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"MUTUALLY DEFINED"
* group[=].element[=].target.code = #urn:oid:2.16.840.1.113883.3.8901.3.1.3658002.18001
* group[=].element[=].target.equivalence = #equivalent