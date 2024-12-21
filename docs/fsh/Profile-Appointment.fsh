Profile: Appointment
Parent: http://hl7.org/fhir/StructureDefinition/Appointment
Id: Appointment
Title: "Appointment"
Description: "This StructureDefinition contains the maps for VistA file APPOINTMENT (2.98) to Appointment."
* ^status = #active
* serviceCategory ^slicing.discriminator.type = #pattern
* serviceCategory ^slicing.discriminator.path = "$this"
* serviceCategory ^slicing.rules = #open
* serviceCategory contains va-service 0..1 and va-stop-code 0..1
* serviceType ^slicing.discriminator.type = #pattern
* serviceType ^slicing.discriminator.path = "$this"
* serviceType ^slicing.rules = #open
* serviceType contains va-stop-code 0..1 and va-credit-stop-code 0..1
* participant ^slicing.discriminator.type = #pattern
* participant ^slicing.discriminator.path = "$this"
* participant ^slicing.rules = #open
* participant contains va-clinic 0..1 and va-patient 0..1 and va-apptclinic 0..1
* extension contains http://va.gov/fhir/StructureDefinition/resource-serviceConnection named resource-serviceConnection 0..1
* status and extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding and cancelationReason and serviceCategory[va-service].coding.code and serviceCategory[va-service].coding.system and serviceType[va-stop-code].coding.code and serviceType[va-stop-code].coding.system and serviceType[va-credit-stop-code].coding.code and serviceType[va-credit-stop-code].coding.system and appointmentType.text and start and end and minutesDuration and created and participant[va-clinic].actor and participant[va-clinic].type.coding.code and participant[va-clinic].status and participant[va-patient].actor and participant[va-patient].type.coding.code and participant[va-patient].status and serviceCategory[va-stop-code].coding.code and serviceCategory[va-stop-code].coding.system and comment and participant[va-apptclinic].actor and participant[va-apptclinic].type.coding.code and participant[va-apptclinic].status and description MS
* participant[va-clinic].actor only Reference(Location)
* participant[va-patient].actor only Reference(Patient)
* participant[va-apptclinic].actor only Reference(Location)
* status from http://va.gov/fhir/ValueSet/AppointmentStatus
* status obeys a-11-732
* status obeys a-11-733
* status obeys a-11-734
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys a-11-2033
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys a-11-2034
* cancelationReason from http://va.gov/fhir/ValueSet/AppointmentCancellationReason
* serviceCategory[va-service].coding.system = "http://va.gov/terminology/VistADefinedTerms/44-9"
* serviceType[va-stop-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/44-8"
* serviceType[va-credit-stop-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/44-2503"
* participant[va-clinic].type.coding.code = #PART
* participant[va-clinic].status = #accepted
* participant[va-patient].type.coding.code = #PART
* participant[va-patient].status = #accepted
* status obeys a-11-748
* serviceCategory[va-stop-code].coding.system = "http://va.gov/terminology/VistADefinedTerms/409.3-13.4"
* participant[va-apptclinic].type.coding.code = #PART
* participant[va-apptclinic].status = #tentative

Invariant: a-11-732
Description: "2.98-3: if I, NT, Null AND check-in date (44.003-309)=NULL AND check-out date (44.003-303)=NULL then #booked"
Severity: #warning

Invariant: a-11-733
Description: "2.98-3: if I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303) then #arrived"
Severity: #warning

Invariant: a-11-734
Description: "2.98-3: if I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303) then #fulfilled"
Severity: #warning

Invariant: a-11-2033
Description: "2.98-9.5 > 409.1-.01: if SERVICE CONNECTED then http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\""
Severity: #warning

Invariant: a-11-2034
Description: "2.98-9.5 > 409.1-.01: if Not SERVICE CONNECTED then http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\""
Severity: #warning

Invariant: a-11-748
Description: "409.3-.01: if not null then #waitlist"
Severity: #warning

Mapping: source-to-Appointment
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: Appointment
* status -> "731: terminologyMaps using VF_AppointmentStatus on APPOINTMENT - STATUS (2.98-3)" "simple maps in Terminology; complex defined here."
* status -> "732: fixed value = #booked when APPOINTMENT - STATUS (2.98-3) case I, NT, Null AND check-in date (44.003-309)=NULL AND check-out date (44.003-303)=NULL" "simple maps in Terminology; complex defined here."
* status -> "733: fixed value = #arrived when APPOINTMENT - STATUS (2.98-3) case I, NT, Null; Non-null check-in date (44.003-309), null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* status -> "734: fixed value = #fulfilled when APPOINTMENT - STATUS (2.98-3) case I, NT, Null; Non-null check-in date (44.003-309), non-null check-out date (44.003-303)" "simple maps in Terminology; complex defined here."
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2033: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\" when APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01) case SERVICE CONNECTED"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2034: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\" when APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01) case Not SERVICE CONNECTED"
* cancelationReason -> "735: terminologyMaps using VF_AppointmentCancellationReason on APPOINTMENT - CANCELLATION REASON (2.98-16)"
* serviceCategory[va-service].coding.code -> "736: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - SERVICE (2.98-.01 > 44-9)"
* serviceCategory[va-service].coding.system -> "736-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-9" "from mapParameter 1"
* serviceType[va-stop-code].coding.code -> "737: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - STOP CODE NUMBER (2.98-.01 > 44-8)"
* serviceType[va-stop-code].coding.system -> "737-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-8" "from mapParameter 1"
* serviceType[va-credit-stop-code].coding.code -> "738: source value from APPOINTMENT - CLINIC > HOSPITAL LOCATION - CREDIT STOP CODE (2.98-.01 > 44-2503)"
* serviceType[va-credit-stop-code].coding.system -> "738-1: fixed value = http://va.gov/terminology/VistADefinedTerms/44-2503" "from mapParameter 1"
* specialty -> "739: target not supported"
* appointmentType.text -> "740: source value from APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (2.98-9.5 > 409.1-.01)"
* reasonCode -> "741: target not supported"
* reasonReference -> "742: target not supported"
* start -> "743: source value from APPOINTMENT - APPOINTMENT DATE/TIME (2.98-.001)"
* end -> "1612: source value from APPOINTMENT - OUTPATIENT ENCOUNTER > OUTPATIENT ENCOUNTER - CHECK OUT PROCESS COMPLETION (2.98-21 > 409.68-.07)" "Added to meet FHIR Core constraint app-2"
* minutesDuration -> "744: source value from PATIENT - LENGTH OF APP'T (44.003-1)"
* created -> "745: source value from APPOINTMENT - DATE APPT. MADE (2.98-20)"
* participant[va-clinic].actor -> "746: reference from APPOINTMENT - CLINIC (2.98-.01)"
* participant[va-clinic].type.coding.code -> "746-1: fixed value = #PART" "from mapParameter 1"
* participant[va-clinic].status -> "746-2: fixed value = #accepted" "from mapParameter 2"
* participant[va-patient].actor -> "1722: reference from PATIENT - APPOINTMENT > APPOINTMENT (2-1900 > 2.98)" "Added patient to the appointment map so that it is not assumed"
* participant[va-patient].type.coding.code -> "1722-1: fixed value = #PART" "from mapParameter 1"
* participant[va-patient].status -> "1722-2: fixed value = #accepted" "from mapParameter 2"
* status -> "748: fixed value = #waitlist when SD WAIT LIST - PATIENT (409.3-.01) case not null" "LVH returns \"Waitlisted\". \"Waitlisted\" is the display value and \"waitlist\" is the code. This is a required FHIR value set. 3/15/2023 LVH will fix"
* serviceCategory[va-stop-code].coding.code -> "749: source value from null (409.3-13.4)"
* serviceCategory[va-stop-code].coding.system -> "749-1: fixed value = http://va.gov/terminology/VistADefinedTerms/409.3-13.4" "from mapParameter 1"
* start -> "750: source value from SD WAIT LIST - DESIRED DATE OF APPOINTMENT (409.3-22)"
* created -> "751: source value from SD WAIT LIST - ORIGINATING DATE (409.3-1)"
* comment -> "752: source value from SD WAIT LIST - COMMENTS (409.3-25)"
* participant[va-apptclinic].actor -> "754: reference from SD WAIT LIST - APPT CLINIC (409.3-13.2)"
* participant[va-apptclinic].type.coding.code -> "754-1: fixed value = #PART" "from mapParameter 1"
* participant[va-apptclinic].status -> "754-2: fixed value = #tentative" "from mapParameter 2"
* description -> "1791: source value from APPOINTMENT - APPOINTMENT TYPE > APPOINTMENT TYPE - DESCRIPTION (2.98-9.5 > 409.1-10)" "Added after PHAPI gap analysis to match PHAPI fields"

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
* serviceCategory[va-service].coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.MedicalService,Dim.Location.MedicalService"
* serviceType[va-stop-code].coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.PrimaryStopCodeIEN"
* serviceType[va-credit-stop-code].coding.code -> "Appt.Appointment.LocationIEN\nDim.Location.SecondaryStopCodeIEN"
* appointmentType.text -> "Appt.Appointment.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* start -> "Appt.Appointment.AppointmentDateTime"
* end -> "Appt.Appointment.VisitIEN\nOutpat.Visit.COProcessCompleteDateTime,Outpat.Workload.COProcessCompleteDateTime"
* minutesDuration -> "Appt.Appointment.LengthOfAppointment,Appt.AppointmentMultiple.LengthOfAppointment"
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
* status -> "Appointment.NoShow,Appointment.Extension[AppointmentExtension].PatientStatus,Appointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow,Appointment.Extension[AppointmentExtension].PatientStatus,Appointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow,Appointment.Extension[AppointmentExtension].PatientStatus,Appointment.Extension[AppointmentExtension].ServiceStatus"
* status -> "Appointment.NoShow,Appointment.Extension[AppointmentExtension].PatientStatus,Appointment.Extension[AppointmentExtension].ServiceStatus"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appointment.Type"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Appointment.Type"
* cancelationReason -> "Appointment.Extension[AppointmentExtension].CancelReason"
* serviceCategory[va-service].coding.code -> "Appointment.CareProvider,Appointment.EnteredAt,Appointment.Location,Appointment.PlacerApptId,Appointment.Type"
* serviceType[va-stop-code].coding.code -> "Appointment.CareProvider,Appointment.EnteredAt,Appointment.Location,Appointment.PlacerApptId,Appointment.Type"
* serviceType[va-credit-stop-code].coding.code -> "Appointment.CareProvider,Appointment.EnteredAt,Appointment.Location,Appointment.PlacerApptId,Appointment.Type"
* appointmentType.text -> "Appointment.Type"
* end -> "Appointment.CareProvider,Appointment.EncounterNumber,Appointment.Extension[AppointmentExtension].AssociatedEncounterNumber"
* minutesDuration -> "Appointment.Extension[AppointmentExtension].Length"
* created -> "Appointment.EnteredOn"
* participant[va-clinic].actor -> "Appointment.CareProvider,Appointment.EnteredAt,Appointment.Location,Appointment.PlacerApptId,Appointment.Type"
* description -> "Appointment.Type"