Instance: VF-OrderPatientClass
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-OrderPatientClass"
* name = "VF_OrderPatientClass"
* title = "VF_OrderPatientClass"
* status = #active
* experimental = false
* description = "Terminology Maps VF_OrderPatientClass"
* sourceCanonical = "http://va.gov/fhir/ValueSet/OrderPatientClass-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/OrderPatientClass"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/100-10"
* group[=].target = "http://terminology.hl7.org/CodeSystem/medicationrequest-category"
* group[=].element[0].code = #I
* group[=].element[=].display = "INPATIENT"
* group[=].element[=].target.code = #inpatient
* group[=].element[=].target.display = "Inpatient"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #O
* group[=].element[=].display = "OUTPATIENT"
* group[=].element[=].target.code = #outpatient
* group[=].element[=].target.display = "Outpatient"
* group[=].element[=].target.equivalence = #equal

ValueSet: OrderPatientClass
Title: "OrderPatientClass FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_OrderPatientClass](ConceptMap-VF-OrderPatientClass.html)"
* ^experimental = false
* ^status = #active
* ^name = "OrderPatientClass"
* include http://terminology.hl7.org/CodeSystem/medicationrequest-category#inpatient "Inpatient"
* include http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient "Outpatient"

ValueSet: OrderPatientClass-vista
Title: "OrderPatientClass VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_OrderPatientClass](ConceptMap-VF-OrderPatientClass.html)"
* ^experimental = false
* ^status = #active
* ^name = "OrderPatientClass_VistA"
* include http://va.gov/terminology/vistaDefinedElements/100-10#I "INPATIENT"
* include http://va.gov/terminology/vistaDefinedElements/100-10#O "OUTPATIENT"