ValueSet: VSVFOrderPatientClass
Title: "VF_OrderPatientClass"
Description: "Navigate to [ConceptMap VF_OrderPatientClass](ConceptMap-CMVFOrderPatientClass.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_OrderPatientClass"
* include http://terminology.hl7.org/CodeSystem/medicationrequest-category#inpatient "Inpatient"
* include http://va.gov/terminology/vistaDefinedElements/100-10#I "INPATIENT"
* include http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"
* include http://va.gov/terminology/vistaDefinedElements/100-10#O "OUTPATIENT"