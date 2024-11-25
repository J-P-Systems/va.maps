Instance: Boolean
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/Boolean"
* name = "Boolean"
* title = "Boolean"
* status = #active
* experimental = false
* description = "Terminology Maps Boolean "
* sourceCanonical = "http://va.gov/fhir/ValueSet/Boolean-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/Boolean"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/52-129"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/boolean"
* group[=].element[0].code = #0
* group[=].element[=].display = "No"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "Yes"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equal

ValueSet: Boolean
Title: "Boolean FHIR"
Description: "FHIR Target ValueSet for Terminology Maps Boolean"
* ^experimental = false
* ^status = #active
* ^name = "Boolean"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: Boolean-vista
Title: "Boolean VistA"
Description: "VistA Source ValueSet for Terminology Maps Boolean"
* ^experimental = false
* ^status = #active
* ^name = "Boolean_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/52-129#0 "No"
* include http://va.gov/terminology/vistaDefinedTerms/52-129#1 "Yes"