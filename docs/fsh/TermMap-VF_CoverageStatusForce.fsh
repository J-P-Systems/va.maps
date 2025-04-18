Instance: VF-CoverageStatusForce
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-CoverageStatusForce"
* name = "VF_CoverageStatusForce"
* title = "VF_CoverageStatusForce"
* status = #active
* experimental = false
* description = "Terminology Maps VF_CoverageStatusForce"
* sourceCanonical = "http://va.gov/fhir/ValueSet/CoverageStatusForce-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/CoverageStatusForce"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/boolean"
* group[=].element[0].code = #0
* group[=].element[=].display = "NOT COVERED"
* group[=].element[=].target.code = #false
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #1
* group[=].element[=].display = "COVERED"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #2
* group[=].element[=].display = "CONDITIONAL COVERAGE"
* group[=].element[=].target.code = #true
* group[=].element[=].target.equivalence = #equal

ValueSet: CoverageStatusForce
Title: "CoverageStatusForce FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_CoverageStatusForce](ConceptMap-VF-CoverageStatusForce.html)"
* ^experimental = false
* ^status = #active
* ^name = "CoverageStatusForce"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: CoverageStatusForce-vista
Title: "CoverageStatusForce VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_CoverageStatusForce](ConceptMap-VF-CoverageStatusForce.html)"
* ^experimental = false
* ^status = #active
* ^name = "CoverageStatusForce_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#0 "NOT COVERED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#1 "COVERED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#2 "CONDITIONAL COVERAGE"