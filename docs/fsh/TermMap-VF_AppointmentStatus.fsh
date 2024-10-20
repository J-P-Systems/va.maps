Instance: CMVFAppointmentStatus
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/CMVFAppointmentStatus"
* name = "VF_AppointmentStatus"
* title = "VF_AppointmentStatus"
* status = #draft
* experimental = false
* description = "Terminology Maps VF_AppointmentStatus"
* sourceCanonical = "http://va.gov/fhir/ValueSet/VSVFAppointmentStatus-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/VSVFAppointmentStatus"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/2.98-3"
* group[=].target = "http://hl7.org/fhir/appointmentstatus"
* group[=].element[0].code = #C
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #CA
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #N
* group[=].element[=].target.code = #noshow
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #NA
* group[=].element[=].target.code = #noshow
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PC
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PCA
* group[=].element[=].target.code = #cancelled
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I,_NT,_Null;_Null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303)
* group[=].element[=].target.code = #booked
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303)
* group[=].element[=].target.code = #arrived
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_non-null_check-out_date_(44.003-303)
* group[=].element[=].target.code = #fulfilled
* group[=].element[=].target.equivalence = #equal

ValueSet: VSVFAppointmentStatus
Title: "VF_AppointmentStatus"
Description: "FHIR Target ValueSet for Terminology Maps VF_AppointmentStatus"
* ^experimental = false
* ^name = "VF_AppointmentStatus"
* include http://hl7.org/fhir/appointmentstatus#cancelled 
* include http://hl7.org/fhir/appointmentstatus#noshow 
* include http://hl7.org/fhir/appointmentstatus#booked 
* include http://hl7.org/fhir/appointmentstatus#arrived 
* include http://hl7.org/fhir/appointmentstatus#fulfilled 

ValueSet: VSVFAppointmentStatus-vista
Title: "VF_AppointmentStatus VistA"
Description: "VistA Source ValueSet for Terminology Maps VF_AppointmentStatus"
* ^experimental = false
* ^name = "VF_AppointmentStatus"
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#C 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#CA 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#N 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#NA 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#PC 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#PCA 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#I,_NT,_Null;_Null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303) 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303) 
* include http://va.gov/terminology/vistaDefinedTerms/2.98-3#I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_non-null_check-out_date_(44.003-303) 