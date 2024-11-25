Instance: encounterClass
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/encounterClass"
* name = "encounterClass"
* title = "encounterClass"
* status = #active
* experimental = false
* description = "Terminology Maps encounterClass "
* sourceCanonical = "http://va.gov/fhir/ValueSet/encounterClass-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/encounterClass"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/9000010-15002"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* group[=].element[0].code = #1
* group[=].element[=].display = "IN"
* group[=].element[=].target.code = #IMP
* group[=].element[=].target.display = "inpatient encounter"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0
* group[=].element[=].display = "OUT"
* group[=].element[=].target.code = #AMB
* group[=].element[=].target.display = "ambulatory"
* group[=].element[=].target.equivalence = #wider

ValueSet: encounterClass
Title: "encounterClass FHIR"
Description: "FHIR Target ValueSet for Terminology Maps encounterClass"
* ^experimental = false
* ^status = #active
* ^name = "encounterClass"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

ValueSet: encounterClass-vista
Title: "encounterClass VistA"
Description: "VistA Source ValueSet for Terminology Maps encounterClass"
* ^experimental = false
* ^status = #active
* ^name = "encounterClass_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/9000010-15002#1 "IN"
* include http://va.gov/terminology/vistaDefinedTerms/9000010-15002#0 "OUT"