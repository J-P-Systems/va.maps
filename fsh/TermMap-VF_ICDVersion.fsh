Instance: CMVFICDVersion
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFICDVersion"
* name = "VF_ICDVersion"
* title = "VF_ICDVersion"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_ICDVersion"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFICDVersion-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFICDVersion"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/80.4-.01"
* group[=].target = "urn:ietf:rfc:3986"
* group[=].element[0].code = #10D
* group[=].element[=].display = "ICD-10-CM"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-cm
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #10P
* group[=].element[=].display = "ICD-10-PCS"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-10-pcs
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICP
* group[=].element[=].display = "ICD-9 Proc"
* group[=].element[=].target.code = #urn:undefined
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD
* group[=].element[=].display = "ICD-9-CM"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFICDVersion
Title: "VF_ICDVersion"
Description: "FHIR Target ValueSet for Terminology Maps VF_ICDVersion"
* ^experimental = false
* ^name = "VF_ICDVersion"
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-pcs 
* include urn:ietf:rfc:3986#urn:undefined 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 

ValueSet: VSVFICDVersion-vista
Title: "VF_ICDVersion VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_ICDVersion"
* ^experimental = false
* ^name = "VF_ICDVersion"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#10D "ICD-10-CM"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#10P "ICD-10-PCS"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICP "ICD-9 Proc"
* include http://va.gov/terminology/vistaDefinedElements/80.4-.01#ICD "ICD-9-CM"