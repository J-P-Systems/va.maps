Instance: CMVFICDCodingSystems
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFICDCodingSystems"
* name = "VF_ICDCodingSystems"
* title = "VF_ICDCodingSystems"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ICDCodingSystems"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFICDCodingSystems-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFICDCodingSystems"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/80.4-.01"
* group[=].target = "urn:ietf:rfc:2141"
* group[=].element[0].code = #ICD-10-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-9-CM
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD-9_Proc
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[+].code = #ICD-10-PCS
* group[=].element[=].target.code = #http://www.cms.gov/Medicare/Coding/ICD10
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFICDCodingSystems
Title: "VF_ICDCodingSystems"
Description: "FHIR Target ValueSet for Terminology Maps VF_ICDCodingSystems"
* ^experimental = false
* ^name = "VF_ICDCodingSystems"
* include urn:ietf:rfc:2141#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:ietf:rfc:2141#http://hl7.org/fhir/sid/icd-9-cm 
* include urn:ietf:rfc:2141#http://www.cms.gov/Medicare/Coding/ICD10 

ValueSet: VSVFICDCodingSystems-vista
Title: "VF_ICDCodingSystems VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ICDCodingSystems"
* ^experimental = false
* ^name = "VF_ICDCodingSystems"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-10-CM 
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-9-CM 
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-9_Proc 
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-10-PCS 