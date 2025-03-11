Instance: VF-AppointmentCancellationReason
InstanceOf: ConceptMap
Usage: #definition
* url = "http://va.gov/fhir/ConceptMap/VF-AppointmentCancellationReason"
* name = "VF_AppointmentCancellationReason"
* title = "VF_AppointmentCancellationReason"
* status = #active
* experimental = false
* description = "Terminology Maps VF_AppointmentCancellationReason"
* sourceCanonical = "http://va.gov/fhir/ValueSet/AppointmentCancellationReason-vista"
* targetCanonical = "http://va.gov/fhir/ValueSet/AppointmentCancellationReason"
* group[0].source = "http://va.gov/terminology/vistaDefinedTerms/50.65-.02"
* group[=].target = "http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason"
* group[=].element[0].code = #APPOINTMENT_NO_LONGER_REQUIRED
* group[=].element[=].display = "APPOINTMENT NO LONGER REQUIRED"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #AUTOMATED_CANCELLATION
* group[=].element[=].display = "AUTOMATED CANCELLATION"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #BLOCK_AND_MOVE
* group[=].element[=].display = "BLOCK AND MOVE"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #CLINIC_CANCELLED
* group[=].element[=].display = "CLINIC CANCELLED"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #CLINIC_STAFFING
* group[=].element[=].display = "CLINIC STAFFING"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DEATH_IN_FAMILY
* group[=].element[=].display = "DEATH IN FAMILY"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #DO_NOT_RESCHEDULE
* group[=].element[=].display = "DO NOT RESCHEDULE"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #INPATIENT_STATUS
* group[=].element[=].display = "INPATIENT STATUS"
* group[=].element[=].target.code = #prov-hosp
* group[=].element[=].target.display = "Provider: Hospitalized"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #OTHER
* group[=].element[=].display = "OTHER"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PANDEMIC
* group[=].element[=].display = "PANDEMIC"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #PATIENT_DEATH
* group[=].element[=].display = "PATIENT DEATH"
* group[=].element[=].target.code = #pat-dec
* group[=].element[=].target.display = "Patient: Deceased"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #PATIENT_NOT_ELIGIBLE
* group[=].element[=].display = "PATIENT NOT ELIGIBLE"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #RESCHEDULE___CALL_BACK
* group[=].element[=].display = "RESCHEDULE - CALL BACK"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #RESCHEDULE___VET_WILL_CALL
* group[=].element[=].display = "RESCHEDULE - VET WILL CALL"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #SCHEDULING_CONFLICT_ERROR
* group[=].element[=].display = "SCHEDULING CONFLICT/ERROR"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TRANSFER_OPT_CARE_TO_OTHER_VA
* group[=].element[=].display = "TRANSFER OPT CARE TO OTHER VA"
* group[=].element[=].target.code = #other
* group[=].element[=].target.display = "Other"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #TRAVEL_DIFFICULTY
* group[=].element[=].display = "TRAVEL DIFFICULTY"
* group[=].element[=].target.code = #pat-lt
* group[=].element[=].target.display = "Patient: Lack of Transportation"
* group[=].element[=].target.equivalence = #equal
* group[=].element[+].code = #UNABLE_TO_KEEP_APPOINTMENT
* group[=].element[=].display = "UNABLE TO KEEP APPOINTMENT"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #WALKIN_ENTERED_IN_ERROR
* group[=].element[=].display = "WALKIN ENTERED IN ERROR"
* group[=].element[=].target.code = #prov
* group[=].element[=].target.display = "Provider"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #WALKIN_NO_LONGER_NECESSARY
* group[=].element[=].display = "WALKIN NO LONGER NECESSARY"
* group[=].element[=].target.code = #pat
* group[=].element[=].target.display = "Patient"
* group[=].element[=].target.equivalence = #wider
* group[=].element[+].code = #WEATHER
* group[=].element[=].display = "WEATHER"
* group[=].element[=].target.code = #oth-weath
* group[=].element[=].target.display = "Other: Weather"
* group[=].element[=].target.equivalence = #equal

ValueSet: AppointmentCancellationReason
Title: "AppointmentCancellationReason FHIR"
Description: "FHIR Target ValueSet for Terminology Maps [VF_AppointmentCancellationReason](ConceptMap-VF-AppointmentCancellationReason.html)"
* ^experimental = false
* ^status = #active
* ^name = "AppointmentCancellationReason"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#prov "Provider"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat "Patient"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#prov-hosp "Provider: Hospitalized"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#other "Other"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat-dec "Patient: Deceased"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#pat-lt "Patient: Lack of Transportation"
* include http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason#oth-weath "Other: Weather"

ValueSet: AppointmentCancellationReason-vista
Title: "AppointmentCancellationReason VistA"
Description: "VistA Source ValueSet for Terminology Maps [VF_AppointmentCancellationReason](ConceptMap-VF-AppointmentCancellationReason.html)"
* ^experimental = false
* ^status = #active
* ^name = "AppointmentCancellationReason_VistA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#APPOINTMENT_NO_LONGER_REQUIRED "APPOINTMENT NO LONGER REQUIRED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#AUTOMATED_CANCELLATION "AUTOMATED CANCELLATION"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#BLOCK_AND_MOVE "BLOCK AND MOVE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CLINIC_CANCELLED "CLINIC CANCELLED"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#CLINIC_STAFFING "CLINIC STAFFING"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DEATH_IN_FAMILY "DEATH IN FAMILY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#DO_NOT_RESCHEDULE "DO NOT RESCHEDULE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#INPATIENT_STATUS "INPATIENT STATUS"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#OTHER "OTHER"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PANDEMIC "PANDEMIC"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PATIENT_DEATH "PATIENT DEATH"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#PATIENT_NOT_ELIGIBLE "PATIENT NOT ELIGIBLE"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#RESCHEDULE___CALL_BACK "RESCHEDULE - CALL BACK"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#RESCHEDULE___VET_WILL_CALL "RESCHEDULE - VET WILL CALL"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#SCHEDULING_CONFLICT_ERROR "SCHEDULING CONFLICT/ERROR"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TRANSFER_OPT_CARE_TO_OTHER_VA "TRANSFER OPT CARE TO OTHER VA"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#TRAVEL_DIFFICULTY "TRAVEL DIFFICULTY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#UNABLE_TO_KEEP_APPOINTMENT "UNABLE TO KEEP APPOINTMENT"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#WALKIN_ENTERED_IN_ERROR "WALKIN ENTERED IN ERROR"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#WALKIN_NO_LONGER_NECESSARY "WALKIN NO LONGER NECESSARY"
* include http://va.gov/terminology/vistaDefinedTerms/50.65-.02#WEATHER "WEATHER"