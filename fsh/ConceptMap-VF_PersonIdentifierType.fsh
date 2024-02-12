Instance: CMVFPersonIdentifierType
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPersonIdentifierType"
* name = "VF_PersonIdentifierType"
* title = "VF_PersonIdentifierType"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_PersonIdentifierType"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPersonIdentifierType"
* group[0].source = "urn:undefined"
* group[=].target = "http://hl7.org/fhir/us/carin-bb/CodeSystem/C4BBIdentifierType"
* group[=].element[0].code = #23
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Account number"
* group[=].element[=].target.equivalence = #equivalent
* group[+].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v2-0203"
* group[=].element[0].code = #IG
* group[=].element[=].target.code = #MB
* group[=].element[=].target.display = "Member number"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #SY
* group[=].element[=].target.code = #SS
* group[=].element[=].target.display = "Social Security Number"
* group[=].element[=].target.equivalence = #equivalent