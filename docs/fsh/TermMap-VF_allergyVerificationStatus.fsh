Instance: allergyVerificationStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/allergyVerificationStatus"
* name = "allergyVerificationStatus"
* title = "allergyVerificationStatus"
* status = #active
* experimental = false
* description = "Terminology Maps allergyVerificationStatus "
* sourceCanonical = "http://va.gov/fhir/ValueSet/allergyVerificationStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/allergyVerificationStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/120.8-19"
* group[=].target = "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification"
* group[=].element[0].code = #0
* group[=].element[=].display = "VERIFIED - NO"
* group[=].element[=].target.code = #unconfirmed
* group[=].element[=].target.display = "unconfirmed"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "VERIFIED - YES"
* group[=].element[=].target.code = #confirmed
* group[=].element[=].target.display = "confirmed"
* group[=].element[=].target.equivalence = #equal

ValueSet: allergyVerificationStatus
Title: "allergyVerificationStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps allergyVerificationStatus"
* ^experimental = false
* ^status = #active
* ^name = "allergyVerificationStatus"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed "unconfirmed"
* include http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed "confirmed"

ValueSet: allergyVerificationStatus-vista
Title: "allergyVerificationStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps allergyVerificationStatus"
* ^experimental = false
* ^status = #active
* ^name = "allergyVerificationStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-19#0 "VERIFIED - NO"
* include http://va.gov/terminology/vistaDefinedTerms/120.8-19#1 "VERIFIED - YES"