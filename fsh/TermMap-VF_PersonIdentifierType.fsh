Instance: CMVFPersonIdentifierType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPersonIdentifierType"
* name = "VF_PersonIdentifierType"
* title = "VF_PersonIdentifierType"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_PersonIdentifierType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPersonIdentifierType-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFPersonIdentifierType"
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

ValueSet: VSVFPersonIdentifierType
Title: "VF_PersonIdentifierType"
Description: "FHIR Target ValueSet for Terminology Maps VF_PersonIdentifierType"
* ^experimental = false
* ^name = "VF_PersonIdentifierType"
* include http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType#pat "Account number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#MB "Member number"
* include http://terminology.hl7.org/CodeSystem/v2-0203#SS "Social Security Number"

ValueSet: VSVFPersonIdentifierType-vista
Title: "VF_PersonIdentifierType VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_PersonIdentifierType"
* ^experimental = false
* ^name = "VF_PersonIdentifierType"
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#23 
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#IG 
* include http://va.gov/terminology/vistaDefinedTerms/2.312-5.12#SY 