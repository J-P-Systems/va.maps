Instance: CMVFProcedureCodeSystem
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFProcedureCodeSystem"
* name = "VF_ProcedureCodeSystem"
* title = "VF_ProcedureCodeSystem"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ProcedureCodeSystem"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFProcedureCodeSystem-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFProcedureCodeSystem"
* group[0].source = "urn:undefined"
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

ValueSet: VSVFProcedureCodeSystem
Title: "VF_ProcedureCodeSystem"
Description: "FHIR Target ValueSet for Terminology Maps VF_ProcedureCodeSystem"
* ^experimental = false
* ^name = "VF_ProcedureCodeSystem"
* include urn:ietf:rfc:3986#http://www.ama-assn.org/go/cpt 
* include urn:ietf:rfc:3986#urn:oid:2.16.840.1.113883.6.285 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/ndc 
* include urn:ietf:rfc:3986#urn:oid:2.16.840.1.113883.3.8901.3.1.3658002.18001 

ValueSet: VSVFProcedureCodeSystem-vista
Title: "VF_ProcedureCodeSystem VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ProcedureCodeSystem"
* ^experimental = false
* ^name = "VF_ProcedureCodeSystem"
* include urn:undefined#CPT 
* include urn:undefined#HCPCS 
* include urn:undefined#ICD-9-CM 
* include urn:undefined#NATIONAL_DRUG_CODE 
* include urn:undefined#MUTUALLY_DEFINED 