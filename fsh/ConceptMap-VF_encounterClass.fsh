Instance: CMVFencounterClass
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFencounterClass"
* name = "VF_encounterClass"
* title = "VF_encounterClass"
* status = #active
* experimental = true
* description = "Terminology Maps VF_encounterClass"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFencounterClass"
* group[0].source = "undefined"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* group[=].element[0].code = #1
* group[=].element[=].target.code = #IMP
* group[=].element[=].target.display = "inpatient encounter"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "IN"
* group[=].element[+].code = #0
* group[=].element[=].target.code = #AMB
* group[=].element[=].target.display = "ambulatory"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].display = "OUT"