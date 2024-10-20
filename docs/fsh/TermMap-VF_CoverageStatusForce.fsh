Instance: CMVFCoverageStatusForce
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFCoverageStatusForce"
* name = "VF_CoverageStatusForce"
* title = "VF_CoverageStatusForce"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_CoverageStatusForce"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageStatusForce-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFCoverageStatusForce"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/355.32-.04"
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

ValueSet: VSVFCoverageStatusForce
Title: "VF_CoverageStatusForce"
Description: "FHIR Target ValueSet for Terminology Maps VF_CoverageStatusForce"
* ^experimental = false
* ^name = "VF_CoverageStatusForce"
* include http://hl7.org/fhir/StructureDefinition/boolean#false 
* include http://hl7.org/fhir/StructureDefinition/boolean#true 

ValueSet: VSVFCoverageStatusForce-vista
Title: "VF_CoverageStatusForce VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_CoverageStatusForce"
* ^experimental = false
* ^name = "VF_CoverageStatusForce"
* include http://va.gov/terminology/vistaDefinedTerms/355.32-.04#0 "NOT COVERED"
* include http://va.gov/terminology/vistaDefinedTerms/355.32-.04#1 "COVERED"
* include http://va.gov/terminology/vistaDefinedTerms/355.32-.04#2 "CONDITIONAL COVERAGE"