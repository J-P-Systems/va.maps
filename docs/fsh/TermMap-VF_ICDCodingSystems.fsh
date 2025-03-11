Instance: VF-ICDCodingSystems
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ICDCodingSystems"
* name = "VF_ICDCodingSystems"
* title = "VF_ICDCodingSystems"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ICDCodingSystems"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ICDCodingSystems-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ICDCodingSystems"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/80.4-.01"
* group[=].target = "urn:ietf:rfc:3986"
* group[=].element[0].code = #ICD-10-CM
* group[=].element[=].display = "10D"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "used in mapParameter"
* group[=].element[+].code = #ICD-9-CM
* group[=].element[=].display = "10P"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "used in mapParameter"
* group[=].element[+].code = #ICD-9_Proc
* group[=].element[=].display = "ICP"
* group[=].element[=].target.code = #urn:undefined
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "used in mapParameter"
* group[=].element[+].code = #ICD-10-PCS
* group[=].element[=].display = "ICD"
* group[=].element[=].target.code = #http://www.cms.gov/Medicare/Coding/ICD10
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "used in mapParameter"

ValueSet: ICDCodingSystems
Title: "ICDCodingSystems FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ICDCodingSystems](ConceptMap-VF-ICDCodingSystems.html)"
* ^experimental = false
* ^status = #active
* ^name = "ICDCodingSystems"
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 
* include urn:ietf:rfc:3986#urn:undefined 
* include urn:ietf:rfc:3986#http://www.cms.gov/Medicare/Coding/ICD10 

ValueSet: ICDCodingSystems-vista
Title: "ICDCodingSystems VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ICDCodingSystems](ConceptMap-VF-ICDCodingSystems.html)"
* ^experimental = false
* ^status = #active
* ^name = "ICDCodingSystems_VistA"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-10-CM "10D"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-9-CM "10P"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-9_Proc "ICP"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD-10-PCS "ICD"