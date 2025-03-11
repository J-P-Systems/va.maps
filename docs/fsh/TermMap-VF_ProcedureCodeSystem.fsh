Instance: VF-ProcedureCodeSystem
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ProcedureCodeSystem"
* name = "VF_ProcedureCodeSystem"
* title = "VF_ProcedureCodeSystem"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ProcedureCodeSystem"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ProcedureCodeSystem-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ProcedureCodeSystem"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "urn:ietf:rfc:3986"
* group[=].element[0].code = #CPT
* group[=].element[=].target.code = #http://www.ama-assn.org/go/cpt
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #HCPCS
* group[=].element[=].target.code = #urn:oid:2.16.840.1.113883.6.285
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-9-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NATIONAL_DRUG_CODE
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/ndc
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #MUTUALLY_DEFINED
* group[=].element[=].target.code = #urn:oid:2.16.840.1.113883.3.8901.3.1.3658002.18001
* group[=].element[=].target.equivalence = #equal

ValueSet: ProcedureCodeSystem
Title: "ProcedureCodeSystem FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ProcedureCodeSystem](ConceptMap-VF-ProcedureCodeSystem.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProcedureCodeSystem"
* include urn:ietf:rfc:3986#http://www.ama-assn.org/go/cpt 
* include urn:ietf:rfc:3986#urn:oid:2.16.840.1.113883.6.285 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/ndc 
* include urn:ietf:rfc:3986#urn:oid:2.16.840.1.113883.3.8901.3.1.3658002.18001 

ValueSet: ProcedureCodeSystem-vista
Title: "ProcedureCodeSystem VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ProcedureCodeSystem](ConceptMap-VF-ProcedureCodeSystem.html)"
* ^experimental = false
* ^status = #active
* ^name = "ProcedureCodeSystem_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CPT 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#HCPCS 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ICD-9-CM 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#NATIONAL_DRUG_CODE 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#MUTUALLY_DEFINED 