Instance: problemStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/problemStatus"
* name = "problemStatus"
* title = "problemStatus"
* status = #active
* experimental = false
* description = "Terminology Maps problemStatus "
* sourceCanonical = "http://va.gov/fhir/ValueSet/problemStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/problemStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000011-.12"
* group[=].target = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* group[=].element[0].code = #A
* group[=].element[=].display = "ACTIVE"
* group[=].element[=].target.code = #active
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I
* group[=].element[=].display = "INACTIVE"
* group[=].element[=].target.code = #inactive
* group[=].element[=].target.equivalence = #equal

ValueSet: problemStatus
Title: "problemStatus FHIR"
Description: "FHIR Target ValueSet for Terminology Maps problemStatus"
* ^experimental = false
* ^status = #active
* ^name = "problemStatus"
* include http://terminology.hl7.org/CodeSystem/condition-clinical#active 
* include http://terminology.hl7.org/CodeSystem/condition-clinical#inactive 

ValueSet: problemStatus-vista
Title: "problemStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps problemStatus"
* ^experimental = false
* ^status = #active
* ^name = "problemStatus_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/9000011-.12#A "ACTIVE"
* include http://va.gov/terminology/vistaDefinedTerms/9000011-.12#I "INACTIVE"