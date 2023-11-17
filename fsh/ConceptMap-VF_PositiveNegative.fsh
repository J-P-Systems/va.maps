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
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/63.05-11.57"
* group[=].target = "http://snomed.info/sct"
* group[=].element[0].code = #N
* group[=].element[=].target.code = #260385009
* group[=].element[=].target.display = "Negative"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "NEGATIVE"
* group[=].element[+].code = #P
* group[=].element[=].target.code = #10828004
* group[=].element[=].target.display = "Positive"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "POSITIVE"