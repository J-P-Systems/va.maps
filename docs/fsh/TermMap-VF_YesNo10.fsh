Instance: CMVFYesNo10
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFYesNo10"
* name = "VF_YesNo10"
* title = "VF_YesNo10"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_YesNo10"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFYesNo10-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFYesNo10"
* group[0].source = "urn:undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v2-0532"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #Y
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #0
* group[=].element[=].target.code = #N
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFYesNo10
Title: "VF_YesNo10"
Description: "FHIR Target ValueSet for Terminology Maps VF_YesNo10"
* ^experimental = false
* ^name = "VF_YesNo10"
* include http://terminology.hl7.org/CodeSystem/v2-0532#Y 
* include http://terminology.hl7.org/CodeSystem/v2-0532#N 

ValueSet: VSVFYesNo10-vista
Title: "VF_YesNo10 VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_YesNo10"
* ^experimental = false
* ^name = "VF_YesNo10"
* include urn:undefined#1 
* include urn:undefined#0 