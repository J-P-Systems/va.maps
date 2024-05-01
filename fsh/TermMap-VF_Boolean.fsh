Instance: CMVFBoolean
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFBoolean"
* name = "VF_Boolean"
* title = "VF_Boolean"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_Boolean"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFBoolean-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFBoolean"
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

ValueSet: VSVFBoolean
Title: "VF_Boolean"
Description: "FHIR Target ValueSet for Terminology Maps VF_Boolean"
* ^experimental = false
* ^name = "VF_Boolean"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: VSVFBoolean-vista
Title: "VF_Boolean VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_Boolean"
* ^experimental = false
* ^name = "VF_Boolean"
* include http://va.gov/terminology/vistaDefinedTerms/52-129#0 "No"
* include http://va.gov/terminology/vistaDefinedTerms/52-129#1 "Yes"