Instance: VF-Boolean
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-Boolean"
* name = "VF_Boolean"
* title = "VF_Boolean"
* status = #active
* experimental = false
* description = "Terminology Maps VF_Boolean"
* sourceCanonical = "http://va.gov/fhir/ValueSet/Boolean-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/Boolean"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
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
Description: "FHIR Target ValueSet for Terminology Maps [VF_Boolean](ConceptMap-VF-Boolean.html)"
* ^experimental = false
* ^status = #active
* ^name = "Boolean"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: Boolean-vista
Title: "Boolean VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_Boolean](ConceptMap-VF-Boolean.html)"
* ^experimental = false
* ^status = #active
* ^name = "Boolean_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#0 "No"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#1 "Yes"