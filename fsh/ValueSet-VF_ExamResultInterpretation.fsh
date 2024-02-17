ValueSet: VSVFExamResultInterpretation
Title: "VF_ExamResultInterpretation"
Description: "Navigate to [ConceptMap VF_ExamResultInterpretation](ConceptMap-CMVFExamResultInterpretation.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_ExamResultInterpretation"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#A "Abnormal"
* include http://va.gov/terminology/vistaDefinedElements/9000010.15-.04#A "Abnormal"
* include http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation#N "Normal"
* include http://va.gov/terminology/vistaDefinedElements/9000010.15-.04#N "Normal"