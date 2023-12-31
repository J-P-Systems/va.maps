Instance: CMVFImageInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFImageInterpretation"
* name = "VF_ImageInterpretation"
* title = "VF_ImageInterpretation"
* status = #active
* experimental = true
* description = "Terminology Maps VF_ImageInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFImageInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/691.5-.03"
* group[=].target = "http://hl7.org/fhir/ValueSet/observation-interpretation"
* group[=].element[0].code = #A
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abnormal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "ABNORMAL"
* group[=].element[+].code = #B
* group[=].element[=].target.code = #E
* group[=].element[=].target.display = "Equivocal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "BORDERLINE"
* group[=].element[+].code = #N
* group[=].element[=].target.code = #N
* group[=].element[=].target.display = "Normal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].display = "NORMAL"
* group[=].element[+].code = #T
* group[=].element[=].target.code = #IND
* group[=].element[=].target.display = "Indeterminate"
* group[=].element[=].target.equivalence = #equal
* group[=].element[=].target.comment = "’Technically Unsatifactory’ is used with EKG/ECG but not ECHO"
* group[=].element[=].display = "TECHNICALLY UNSATISFACTORY"