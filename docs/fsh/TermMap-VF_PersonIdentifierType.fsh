Instance: PersonIdentifierType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/PersonIdentifierType"
* name = "PersonIdentifierType"
* title = "PersonIdentifierType"
* status = #active
* experimental = false
* description = "Terminology Maps PersonIdentifierType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/PersonIdentifierType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/PersonIdentifierType"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2.312-5.12"
* group[=].target = "http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType"
* group[=].element[0].code = #23
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Account number"
* group[=].element[=].target.equivalence = #equal
* group[+].source = "http://va.gov/terminology/vistaDefinedTerms/2.312-5.12"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v2-0203"
* group[=].element[0].code = #IG
* group[=].element[=].target.code = #MB
* group[=].element[=].target.display = "Member number"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #SY
* group[=].element[=].target.code = #SS
* group[=].element[=].target.display = "Social Security Number"
* group[=].element[=].target.equivalence = #equal

ValueSet: PersonIdentifierType
Title: "PersonIdentifierType FHIR"
Description: "FHIR Target ValueSet for Terminology Maps PersonIdentifierType"
* ^experimental = false
* ^status = #active
* ^name = "PersonIdentifierType"
* include http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#pat "Account number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security Number"

ValueSet: PersonIdentifierType-vista
Title: "PersonIdentifierType VistA"
Description: "VistA Source ValueSet for Terminology Maps PersonIdentifierType"
* ^experimental = false
* ^status = #active
* ^name = "PersonIdentifierType_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#23 
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#IG 
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#SY 