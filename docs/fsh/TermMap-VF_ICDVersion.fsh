Instance: VF-ICDVersion
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ICDVersion"
* name = "VF_ICDVersion"
* title = "VF_ICDVersion"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ICDVersion"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ICDVersion-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ICDVersion"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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
Description: "FHIR Target ValueSet for Terminology Maps [VF_ICDVersion](ConceptMap-VF-ICDVersion.html)"
* ^experimental = false
* ^status = #active
* ^name = "ICDVersion"
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-cm 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-10-pcs 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-pcs 
* include urn:ietf:rfc:3986#http://hl7.org/fhir/sid/icd-9-cm 

ValueSet: ICDVersion-vista
Title: "ICDVersion VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ICDVersion](ConceptMap-VF-ICDVersion.html)"
* ^experimental = false
* ^status = #active
* ^name = "ICDVersion_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#10D "ICD-10-CM"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#10P "ICD-10-PCS"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ICP "ICD-9 Proc"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#ICD "ICD-9-CM"