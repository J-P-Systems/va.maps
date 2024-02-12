Instance: CMVFExamResultInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFExamResultInterpretation"
* name = "VF_ExamResultInterpretation"
* title = "VF_ExamResultInterpretation"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_ExamResultInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFExamResultInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.15-.04"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #A
* group[=].element[=].display = "Abnormal"
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abnormal"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #N
* group[=].element[=].display = "Normal"
* group[=].element[=].target.code = #N
* group[=].element[=].target.display = "Normal"
* group[=].element[=].target.equivalence = #equivalent