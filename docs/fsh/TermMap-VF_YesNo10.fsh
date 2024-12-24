Instance: YesNo10
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/YesNo10"
* name = "YesNo10"
* title = "YesNo10"
* status = #active
* experimental = false
* description = "Terminology Maps YesNo10"
* sourceCanonical = "http://va.gov/fhir/ValueSet/YesNo10-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/YesNo10"
* group[0].source = "urn:undefined"
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
Description: "FHIR Target ValueSet for Terminology Maps YesNo10"
* ^experimental = false
* ^status = #active
* ^name = "YesNo10"
* include http://terminology.hl7.org/CodeSystem/v2-0532#Y 
* include http://terminology.hl7.org/CodeSystem/v2-0532#N 

ValueSet: YesNo10-vista
Title: "YesNo10 VistA"
Description: "VistA Source ValueSet for Terminology Maps YesNo10"
* ^experimental = false
* ^status = #active
* ^name = "YesNo10_VistA"
* include urn:undefined#1 
* include urn:undefined#0 