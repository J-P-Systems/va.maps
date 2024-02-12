Instance: CMVFOrderPatientClass
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFOrderPatientClass"
* name = "VF_OrderPatientClass"
* title = "VF_OrderPatientClass"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_OrderPatientClass"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFOrderPatientClass"
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