Instance: ICDVersion
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/ICDVersion"
* name = "ICDVersion"
* title = "ICDVersion"
* status = #active
* experimental = false
* description = "Terminology Maps ICDVersion"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ICDVersion-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ICDVersion"
* group[0].source = "urn:undefined"
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
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-pcs
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #ICD
* group[=].element[=].display = "ICD-9-CM"
* group[=].element[=].target.code = #http://hl7.org/fhir/sid/icd-9-cm
* group[=].element[=].target.equivalence = #equal

ValueSet: ICDVersion
Title: "ICDVersion FHIR"
Description: "FHIR Target ValueSet for Terminology Maps ICDVersion"
* ^experimental = false
* ^status = #active
* ^name = "ICDVersion"
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-pcs 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-pcs 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 

ValueSet: ICDVersion-vista
Title: "ICDVersion VistA"
Description: "VistA Source ValueSet for Terminology Maps ICDVersion"
* ^experimental = false
* ^status = #active
* ^name = "ICDVersion_VistA"
* include urn:undefined#10D "ICD-10-CM"
* include urn:undefined#10P "ICD-10-PCS"
* include urn:undefined#ICP "ICD-9 Proc"
* include urn:undefined#ICD "ICD-9-CM"