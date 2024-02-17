ValueSet: VSVFAppointmentStatus
Title: "VF_AppointmentStatus"
Description: "Navigate to [ConceptMap VF_AppointmentStatus](ConceptMap-CMVFAppointmentStatus.html)\n\n> Note that the FHIR binding is to the codes in the fhir system. The codes from the VistADefinedElements system are map source codes: they may be included in addition to the fhir codes, but they don't address the binding requirement."
* ^experimental = true
* ^name = "VF_AppointmentStatus"
* include http://hl7.org/fhir/appointmentstatus#cancelled 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#C 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#CA 
* include http://hl7.org/fhir/appointmentstatus#noshow 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#N 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#NA 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#PC 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#PCA 
* include http://hl7.org/fhir/appointmentstatus#booked 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#I,_NT,_Null;_Null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303) 
* include http://hl7.org/fhir/appointmentstatus#arrived 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_null_check-out_date_(44.003-303) 
* include http://hl7.org/fhir/appointmentstatus#fulfilled 
* include http://va.gov/terminology/vistaDefinedElements/2.98-3#I,_NT,_Null;_Non-null_check-in_date_(44.003-309),_non-null_check-out_date_(44.003-303) 