Instance: CMVFPositiveNegative
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFPositiveNegative"
* name = "VF_PositiveNegative"
* title = "VF_PositiveNegative"
* status = #active
* experimental = true
* description = "Terminology Maps VF_PositiveNegative"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFPositiveNegative"
* group[0].source = "undefined"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #N
* group[=].element[=].display = "NEGATIVE"
* group[=].element[=].target.code = #260385009
* group[=].element[=].target.display = "Negative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #P
* group[=].element[=].display = "POSITIVE"
* group[=].element[=].target.code = #10828004
* group[=].element[=].target.display = "Positive"
* group[=].element[=].target.equivalence = #equal