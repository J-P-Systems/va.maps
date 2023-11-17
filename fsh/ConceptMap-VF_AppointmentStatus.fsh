Instance: CMVFAppointmentStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFAppointmentStatus"
* name = "VF_AppointmentStatus"
* title = "VF_AppointmentStatus"
* status = #active
* experimental = true
* description = "Terminology Maps VF_AppointmentStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFAppointmentStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedElements/2.98-3"
* group[=].target = "undefined"
* group[=].element[0].code = #C
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #CA
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #N
* group[=].element[=].target.code = #noshow
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #NA
* group[=].element[=].target.code = #noshow
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PC
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #PCA
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"I, NT, Null; Null check-in date (44.003-309), null check-out date (44.003-303)"
* group[=].element[=].target.code = #booked
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303)"
* group[=].element[=].target.code = #arrived
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[+].code = #"I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303)"
* group[=].element[=].target.code = #fulfilled
* group[=].element[=].target.equivalence = #equivalent