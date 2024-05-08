Profile: Appointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: Appointment
Title: "Appointment"
Description: "This StructureDefinition contains the maps for VistA file APPOINTMENT (2.98) to Appointment"
* ^status = #draft
* status and cancelationReason and serviceCategory.coding.code and serviceType.coding.code and appointmentType.text and start and end and minutesDuration and created and participant.actor and comment MS
* status from http://va.gov/fhir/ValueSet/VSVFAppointmentStatus
* cancelationReason from http://va.gov/fhir/ValueSet/VSVFAppointmentCancellationReason
* participant.actor only Reference(http://hl7.org/fhir/StructureDefinition/Location)
* participant.actor only Reference(http://hl7.org/fhir/StructureDefinition/Location)

Mapping: vista-to-Appointment
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Appointment
* status -> "731: terminologyMaps using VF_AppointmentStatus on APPOINTMENT - STATUS (2.98-3)" "simple maps in Terminology; complex defined here."
* status -> "732: fixed value = #booked when APPOINTMENT - STATUS (2.98-3) case I, NT, Null; Null check-in date (44.003-309), null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* status -> "733: fixed value = #arrived when APPOINTMENT - STATUS (2.98-3) case I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* status -> "734: fixed value = #fulfilled when APPOINTMENT - STATUS (2.98-3) case I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* cancelationReason -> "735: terminologyMaps using VF_AppointmentCancellationReason on APPOINTMENT - CANCELLATION REASON (2.98-16)"
* serviceCategory.coding.code -> "736: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - SERVICE (2.98-.01 > 44-9)"
* serviceType.coding.code -> "737: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - STOP CODE NUMBER (2.98-.01 > 44-8)"
* serviceType.coding.code -> "738: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - CREDIT STOP CODE (2.98-.01 > 44-2503)"
* specialty -> "739: target not supported"
* appointmentType.text -> "740: source value from APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01)"
* reasonCode -> "741: target not supported"
* reasonReference -> "742: target not supported"
* start -> "743: source value from APPOINTMENT - APPOINTMENT DATE/TIME (2.98-.001)"
* end -> "1612: source value from APPOINTMENT - OUTPATIENT ENCOUNTER > OUTPATIENT ENCOUNTER - CHECK OUT PROCESS COMPLETION (2.98-21 > 409.68-.07)"
* minutesDuration -> "744: source value from PATIENT - LENGTH OF APP'T (44.003-1)"
* created -> "745: source value from APPOINTMENT - DATE APPT. MADE (2.98-20)"
* participant.actor -> "746: reference from APPOINTMENT - CLINIC (2.98-.01)"
* participant.actor -> "1722: reference from PATIENT - APPOINTMENT > APPOINTMENT (2-1900 > 2.98)" "Added patient to the appointment map so that it is not assumed\nN.B. this is a parent reference!"
* status -> "748: fixed value = #waitlist when SD WAIT LIST - PATIENT (409.3-.01) case not null" "LVH returns \"Waitlisted\". \"Waitlisted\" is the display value and \"waitlist\" is the code. This is a required FHIR value set. 3/15/2023 LVH will fix"
* serviceCategory.coding.code -> "749: source value from SD WAIT LIST - APPT STOP CODE (409.3-13.4)"
* start -> "750: source value from SD WAIT LIST - DESIRED DATE OF APPOINTMENT (409.3-22)"
* created -> "751: source value from SD WAIT LIST - ORIGINATING DATE (409.3-1)"
* comment -> "752: source value from SD WAIT LIST - COMMENTS (409.3-25)"
* participant.actor -> "754: reference from SD WAIT LIST - APPT CLINIC (409.3-13.2)"

Mapping: cdw-to-Appointment
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Appointment
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* cancelationReason -> "Appt.Appointment.CancellationReasonIEN"
* serviceCategory.coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.MedicalService,Dim.Location.MedicalService"
* serviceType.coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.PrimaryStopCodeIEN"
* serviceType.coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.SecondaryStopCodeIEN"
* appointmentType.text -> "Appt.Appointment.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* start -> "Appt.Appointment.AppointmentDateTime"
* end -> "Appt.Appointment.VisitIEN\nOutpat.Visit.COProcessCompleteDateTime,Outpat.Workload.COProcessCompleteDateTime"
* minutesDuration -> "Appt.Appointment.LengthOfAppointment,Appt.AppointmentMultiple.LengthOfAppointment"
* created -> "Appt.Appointment.AppointmentMadeDate"
* participant.actor -> "Appt.Appointment.LocationIEN"
* status -> "Appt.WaitList.PatientIEN"
* serviceCategory.coding.code -> "Appt.WaitList.AppointmentPrimaryStopCodeIEN"
* start -> "Appt.WaitList.AppointmentDesiredDate"
* created -> "Appt.WaitList.OriginatingDate"
* comment -> "Appt.WaitList.WaitListComments"
* participant.actor -> "Appt.WaitList.AppointmentLocationIEN"

Mapping: vpr-to-Appointment
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: Appointment
* status -> "appointment.apptStatus\nappointment.patientClass"
* status -> "appointment.apptStatus\nappointment.patientClass"
* status -> "appointment.apptStatus\nappointment.patientClass"
* status -> "appointment.apptStatus\nappointment.patientClass"
* serviceCategory.coding.code -> "appointment.service"
* serviceType.coding.code -> "appointment.clinStop"
* appointmentType.text -> "appointment.type"
* start -> "appointment.dateTime"