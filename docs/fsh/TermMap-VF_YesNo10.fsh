Instance: VF-YesNo10
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-YesNo10"
* name = "VF_YesNo10"
* title = "VF_YesNo10"
* status = #active
* experimental = false
* description = "Terminology Maps VF_YesNo10"
* sourceCanonical = "http://va.gov/fhir/ValueSet/YesNo10-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/YesNo10"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v2-0532"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #Y
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"
* group[=].element[+].code = #0
* group[=].element[=].target.code = #N
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "deprecated"

ValueSet: YesNo10
Title: "YesNo10 FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_YesNo10](ConceptMap-VF-YesNo10.html)"
* ^experimental = false
* ^status = #active
* ^name = "YesNo10"
* include http://terminology.hl7.org/CodeSystem/v2-0532#Y 
* include http://terminology.hl7.org/CodeSystem/v2-0532#N 

ValueSet: YesNo10-vista
Title: "YesNo10 VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_YesNo10](ConceptMap-VF-YesNo10.html)"
* ^experimental = false
* ^status = #active
* ^name = "YesNo10_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#1 
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#0 