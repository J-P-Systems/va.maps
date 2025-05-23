Profile: Appointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: Appointment
Title: "Appointment"
Description: "This StructureDefinition contains the maps for VistA file APPOINTMENT (2.98) to Appointment."
* ^status = #active
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "$this"
* participant ^slicing.rules = #open
* participant contains va-clinic 0..1 and va-patient 0..1 and va-apptclinic 0..1
* serviceCategory ^slicing.discriminator.type = #value
* serviceCategory ^slicing.discriminator.path = "$this"
* serviceCategory ^slicing.rules = #open
* serviceCategory contains va-stop-code 0..1
* extension contains http://va.gov/fhir/StructureDefinition/resource-serviceConnection named resource-serviceConnection 0..1
* status and extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding and cancelationReason and appointmentType.text and start and end and minutesDuration and created and participant[va-clinic].actor and participant[va-clinic].type.coding.code and participant[va-clinic].status and participant[va-patient].actor and participant[va-patient].type.coding.code and participant[va-patient].status and serviceCategory[va-stop-code].coding.code and serviceCategory[va-stop-code].coding.system and comment and participant[va-apptclinic].actor and participant[va-apptclinic].type.coding.code and participant[va-apptclinic].status and description MS
* participant[va-clinic].actor only Reference(Location)
* participant[va-patient].actor only Reference(Patient)
* participant[va-apptclinic].actor only Reference(Location)
* status from http://va.gov/fhir/ValueSet/AppointmentStatus
* status ^binding.description = "see mapping [VF_AppointmentStatus](ConceptMap-VF-AppointmentStatus.html)"
* status obeys a-11-732
* status obeys a-11-733
* status obeys a-11-734
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys a-11-2033
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys a-11-2034
* cancelationReason from http://va.gov/fhir/ValueSet/AppointmentCancellationReason
* cancelationReason ^binding.description = "see mapping [VF_AppointmentCancellationReason](ConceptMap-VF-AppointmentCancellationReason.html)"
* participant[va-clinic].type.coding.code = #PART
* participant[va-clinic].status = #accepted
* participant[va-patient].actor obeys a-11-1722
* participant[va-patient].type.coding.code obeys a-11-1722-1
* participant[va-patient].status obeys a-11-1722-2
* status obeys a-11-748
* serviceCategory[va-stop-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/409.3-13.4"
* participant[va-apptclinic].type.coding.code = #PART
* participant[va-apptclinic].status = #tentative

Invariant: a-11-732
Description: "If (2.98-3) is I, NT, Null; Null check-in date (44.003-309), null check-out date (44.003-303) then fixed value #booked"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-733
Description: "If (2.98-3) is I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303) then fixed value #arrived"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-734
Description: "If (2.98-3) is I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303) then fixed value #fulfilled"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-2033
Description: "If (2.98-9.5 > 409.1-.01) is SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-2034
Description: "If (2.98-9.5 > 409.1-.01) is Not SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-1722
Description: "If PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98) then reference /Patient based on (2-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-1722-1
Description: "If PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98) then fixed value #PART"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-1722-2
Description: "If PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98) then fixed value #accepted"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: a-11-748
Description: "If (409.3-.01) is not null then fixed value #waitlist"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-Appointment
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Appointment
* status -> "731: terminologyMaps using VF_AppointmentStatus on APPOINTMENT - STATUS (2.98-3)" "simple maps in Terminology; complex defined here."
* status -> "732: fixed value = #booked when APPOINTMENT - STATUS (2.98-3) if I, NT, Null; Null check-in date (44.003-309), null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* status -> "733: fixed value = #arrived when APPOINTMENT - STATUS (2.98-3) if I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* status -> "734: fixed value = #fulfilled when APPOINTMENT - STATUS (2.98-3) if I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2033: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\" when APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01) if SERVICE CONNECTED"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2034: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\" when APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01) if Not SERVICE CONNECTED"
* cancelationReason -> "735: terminologyMaps using VF_AppointmentCancellationReason on APPOINTMENT - CANCELLATION REASON (2.98-16)"
* specialty -> "739: target not supported"
* appointmentType.text -> "740: source value based on APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01)"
* reasonCode -> "741: target not supported"
* reasonReference -> "742: target not supported"
* start -> "743: source value based on APPOINTMENT - APPOINTMENT DATE/TIME (2.98-.001)"
* end -> "1612: source value based on APPOINTMENT - OUTPATIENT ENCOUNTER > OUTPATIENT ENCOUNTER - CHECK OUT PROCESS COMPLETION (2.98-21 > 409.68-.07)" "Added to meet FHIR Core constraint app-2"
* minutesDuration -> "744: source value based on PATIENT - LENGTH OF APP'T (44.003-1)"
* created -> "745: source value based on APPOINTMENT - DATE APPT. MADE (2.98-20)"
* participant[va-clinic].actor -> "746: reference based on APPOINTMENT - CLINIC (2.98-.01)"
* participant[va-clinic].type.coding.code -> "746-1: fixed value = #PART" "generated from mapParameter line 1"
* participant[va-clinic].status -> "746-2: fixed value = #accepted" "generated from mapParameter line 2"
* participant[va-patient].actor -> "1722: reference based on PATIENT - (2-) if PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98)" "Added patient to the appointment map so that it is not assumed"
* participant[va-patient].type.coding.code -> "1722-1: fixed value = #PART if PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98)" "generated from mapParameter line 1"
* participant[va-patient].status -> "1722-2: fixed value = #accepted if PATIENT – APPOINTMENT (2-1900) = APPOINTMENT (2.98)" "generated from mapParameter line 2"
* status -> "748: fixed value = #waitlist when SD WAIT LIST - PATIENT (409.3-.01) if not null" "LVH returns \"Waitlisted\". \"Waitlisted\" is the display value and \"waitlist\" is the code. This is a required FHIR value set. 3/15/2023 LVH will fix"
* serviceCategory[va-stop-code].coding.code -> "749: source value based on SD WAIT LIST - APPT STOP CODE (409.3-13.4)"
* serviceCategory[va-stop-code].coding.system -> "749-1: fixed value = http://va.gov/terminology/VistADefinedTerms/409.3-13.4" "generated from mapParameter line 1"
* start -> "750: source value based on SD WAIT LIST - DESIRED DATE OF APPOINTMENT (409.3-22)"
* created -> "751: source value based on SD WAIT LIST - ORIGINATING DATE (409.3-1)"
* comment -> "752: source value based on SD WAIT LIST - COMMENTS (409.3-25)"
* participant[va-apptclinic].actor -> "754: reference based on SD WAIT LIST - APPT CLINIC (409.3-13.2)"
* participant[va-apptclinic].type.coding.code -> "754-1: fixed value = #PART" "generated from mapParameter line 1"
* participant[va-apptclinic].status -> "754-2: fixed value = #tentative" "generated from mapParameter line 2"
* description -> "1791: source value based on APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - DESCRIPTION (2.98-9.5 > 409.1-10)" "Added after PHAPI gap analysis to match PHAPI fields"

Mapping: cdw-to-Appointment
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: Appointment
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* status -> "Appt.Appointment.AppointmentStatus"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appt.Appointment.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appt.Appointment.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* cancelationReason -> "Appt.Appointment.CancellationReasonIEN"
* appointmentType.text -> "Appt.Appointment.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* start -> "Appt.Appointment.AppointmentDateTime"
* end -> "Appt.Appointment.VisitIEN\nOutpat.Visit.COProcessCompleteDateTime\nOutpat.Workload.COProcessCompleteDateTime"
* minutesDuration -> "Appt.Appointment.LengthOfAppointment\nAppt.AppointmentMultiple.LengthOfAppointment"
* created -> "Appt.Appointment.AppointmentMadeDate"
* participant[va-clinic].actor -> "Appt.Appointment.LocationIEN"
* status -> "Appt.WaitList.PatientIEN"
* serviceCategory[va-stop-code].coding.code -> "Appt.WaitList.AppointmentPrimaryStopCodeIEN"
* start -> "Appt.WaitList.AppointmentDesiredDate"
* created -> "Appt.WaitList.OriginatingDate"
* comment -> "Appt.WaitList.WaitListComments"
* participant[va-apptclinic].actor -> "Appt.WaitList.AppointmentLocationIEN"
* description -> "Appt.Appointment.AppointmentTypeIEN"

Mapping: sda-to-Appointment
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: Appointment
* status -> "Appointment.NoShow\nAppointment.Extension[AppointmentExtension].PatientStatus\nAppointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow\nAppointment.Extension[AppointmentExtension].PatientStatus\nAppointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow\nAppointment.Extension[AppointmentExtension].PatientStatus\nAppointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow\nAppointment.Extension[AppointmentExtension].PatientStatus\nAppointment.Extension[AppointmentExtension].ServiceStatus"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appointment.Type"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appointment.Type"
* cancelationReason -> "Appointment.Extension[AppointmentExtension].CancelReason"
* appointmentType.text -> "Appointment.Type"
* end -> "Appointment.CareProvider\nAppointment.EncounterNumber\nAppointment.Extension[AppointmentExtension].AssociatedEncounterNumber"
* minutesDuration -> "Appointment.Extension[AppointmentExtension].Length"
* created -> "Appointment.EnteredOn"
* participant[va-clinic].actor -> "Appointment.CareProvider\nAppointment.EnteredAt\nAppointment.Location\nAppointment.PlacerApptId\nAppointment.Type"
* description -> "Appointment.Type"

Mapping: vpr-to-Appointment
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: Appointment
* status -> "appointment.apptStatus\nappointment.patientClass\nappointment.serviceCategory"
* status -> "appointment.apptStatus\nappointment.patientClass\nappointment.serviceCategory"
* status -> "appointment.apptStatus\nappointment.patientClass\nappointment.serviceCategory"
* status -> "appointment.apptStatus\nappointment.patientClass\nappointment.serviceCategory"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "appointment.type (>409.1-.01)"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "appointment.type (>409.1-.01)"
* appointmentType.text -> "appointment.type (>409.1-.01)"
* start -> "appointment.dateTime\nappointment.id\nappointment.visitString"
* participant[va-clinic].actor -> "appointment.clinicStop (>44-8)\nappointment.facility (>44-3)\nappointment.id\nappointment.provider (>44-2600)\nappointment.service (>44-9)\nappointment.visitString"
* description -> "appointment.type (>409.1-.01)"