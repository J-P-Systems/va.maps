Instance: CMVFLabInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFLabInterpretation"
* name = "VF_LabInterpretation"
* title = "VF_LabInterpretation"
* status = #active
* experimental = true
* description = "Terminology Maps VF_LabInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFLabInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/63.04-2+through+862"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #H
* group[=].element[=].target.code = #H
* group[=].element[=].target.display = "High"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #L
* group[=].element[=].target.code = #L
* group[=].element[=].target.display = "Low"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #H*
* group[=].element[=].target.code = #HH
* group[=].element[=].target.display = "Critical high"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #L*
* group[=].element[=].target.code = #LL
* group[=].element[=].target.display = "Critical low"
* group[=].element[=].target.equivalence = #equal