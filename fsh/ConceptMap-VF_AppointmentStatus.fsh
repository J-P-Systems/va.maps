Instance: CMVFAppointmentStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFAppointmentStatus"
* name = "VF_AppointmentStatus"
* title = "VF_AppointmentStatus"
* status = #draft
* experimental = true
* description = "Terminology Maps VF_AppointmentStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFAppointmentStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2.98-3"
* group[=].target = "http://hl7.org/fhir/appointmentstatus"
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

* group[=].element[+].code = #I,NT,Null
* group[=].element[=].target.code = #booked
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_309_CHECKED_IN"
* group[=].element[=].target.dependsOn[=].value = "null"
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_303_CHECKED_OUT"
* group[=].element[=].target.dependsOn[=].value = "null"

* group[=].element[+].code = #I,NT,Null
* group[=].element[=].target.code = #arrived
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_309_CHECKED_IN"
* group[=].element[=].target.dependsOn[=].value = "not null"
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_303_CHECKED_OUT"
* group[=].element[=].target.dependsOn[=].value = "null"

* group[=].element[+].code = #I,NT,Null
* group[=].element[=].target.code = #fulfilled
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_309_CHECKED_IN"
* group[=].element[=].target.dependsOn[=].value = "not null"
* group[=].element[=].target.dependsOn[+].property = "http://va.gov/terminology/vistaDefinedElements/44.003_303_CHECKED_OUT"
* group[=].element[=].target.dependsOn[=].value = "not null"
