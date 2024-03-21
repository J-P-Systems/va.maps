Instance: CMVFencounterClass
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterClass"
* name = "VF_encounterClass"
* title = "VF_encounterClass"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_encounterClass"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterClass-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterClass"
* group[0].source = "urn:undefined"
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

ValueSet: VSVFencounterClass
Title: "VF_encounterClass"
Description: "FHIR Target ValueSet for Terminology Maps VF_encounterClass"
* ^experimental = false
* ^name = "VF_encounterClass"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* include http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB "ambulatory"

ValueSet: VSVFencounterClass-vista
Title: "VF_encounterClass VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_encounterClass"
* ^experimental = false
* ^name = "VF_encounterClass"
* include urn:undefined#1 "IN"
* include urn:undefined#0 "OUT"