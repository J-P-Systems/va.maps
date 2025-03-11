Instance: VF-ExamResultInterpretation
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-ExamResultInterpretation"
* name = "VF_ExamResultInterpretation"
* title = "VF_ExamResultInterpretation"
* status = #active
* experimental = false
* description = "Terminology Maps VF_ExamResultInterpretation"
* sourceCanonical = "http://va.gov/fhir/ValueSet/ExamResultInterpretation-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/ExamResultInterpretation"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/9000010.15-.04"
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation"
* group[=].element[0].code = #A
* group[=].element[=].display = "Abnormal"
* group[=].element[=].target.code = #A
* group[=].element[=].target.display = "Abnormal"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #N
* group[=].element[=].display = "Normal"
* group[=].element[=].target.code = #N
* group[=].element[=].target.display = "Normal"
* group[=].element[=].target.equivalence = #equal

ValueSet: ExamResultInterpretation
Title: "ExamResultInterpretation FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_ExamResultInterpretation](ConceptMap-VF-ExamResultInterpretation.html)"
* ^experimental = false
* ^status = #active
* ^name = "ExamResultInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"

ValueSet: ExamResultInterpretation-vista
Title: "ExamResultInterpretation VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_ExamResultInterpretation](ConceptMap-VF-ExamResultInterpretation.html)"
* ^experimental = false
* ^status = #active
* ^name = "ExamResultInterpretation_VistA"
* include http://va.gov/terminology/vistaDefinedElements/9000010.15-.04#A "Abnormal"
* include http://va.gov/terminology/vistaDefinedElements/9000010.15-.04#N "Normal"