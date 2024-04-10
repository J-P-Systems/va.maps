Logical: Patient2
Id: Patient2
Title: "PATIENT (2)"
Characteristics: #can-be-target
* IntegrationControlNumber 0..1 Element "INTEGRATION CONTROL NUMBER (991.01)"
* Name 0..1 Element "NAME (.01)"
* PhoneNumberResidence 0..1 Element "PHONE NUMBER [RESIDENCE] (.131)"
* PhoneNumberWork 0..1 Element "PHONE NUMBER [WORK] (.132)"
* PhoneNumberCellular 0..1 Element "PHONE NUMBER [CELLULAR] (.134)"
* DateOfBirth 0..1 Element "DATE OF BIRTH (.03)"
* DateOfDeath 0..1 Element "DATE OF DEATH (.351)"
* StreetAddressLine1 0..1 Element "STREET ADDRESS [LINE 1] (.111)"
* StreetAddressLine2 0..1 Element "STREET ADDRESS [LINE 2] (.112)"
* StreetAddressLine3 0..1 Element "STREET ADDRESS [LINE 3] (.113)"
* City 0..1 Element "CITY (.114)"
* State 0..1 Element "STATE (.115)"
* Zip4 0..1 Element "ZIP+4 (.1112)"
* Country 0..1 Element "COUNTRY (.1173)"
* TemporaryAddressStartDate 0..1 Element "TEMPORARY ADDRESS START DATE (.1217)"
* TemporaryAddressEndDate 0..1 Element "TEMPORARY ADDRESS END DATE (.1218)"
* LanguageDatetime 0..1 Reference "LANGUAGE DATE/TIME (7)"
* Sex 0..1 Element "SEX (.02)"
* SelfIdentifiedGender 0..1 Element "SELF IDENTIFIED GENDER (.024)"
* EthnicityInformation 0..1 Element "ETHNICITY INFORMATION (6)"
* RaceInformation 0..1 Element "RACE INFORMATION (2)"
* MaritalStatus 0..1 Element "MARITAL STATUS (.05)"
* ReligiousPreference 0..1 Element "RELIGIOUS PREFERENCE (.08)"
* Patient 0..1 Element "PATIENT ()"
* LaboratoryReference 0..1 Reference "LABORATORY REFERENCE (63)"
* LanguageDatetime only Reference(LanguageDatetime207)
* LaboratoryReference only Reference(LabData63)

Logical: Institution4
Id: Institution4
Title: "INSTITUTION (4)"
Characteristics: #can-be-target
* StationNumber 0..1 Element "STATION NUMBER (99)"
* Name 0..1 Element "NAME (.01)"
* State 0..1 Reference "STATE (.02)"
* District 0..1 Element "DISTRICT (.03)"
* StreetAddr1 0..1 Element "STREET ADDR. 1 (1.01)"
* StreetAddr2 0..1 Element "STREET ADDR. 2 (1.02)"
* City 0..1 Element "CITY (1.03)"
* Zip 0..1 Element "ZIP (1.04)"
* Country 0..1 Reference "COUNTRY (801)"
* Npi 0..1 Element "NPI (41.99)"
* ShortName 0..1 Element "SHORT NAME (.05)"
* Contact 0..1 Reference "CONTACT (4)"
* StAddr1Mailing 0..1 Element "ST. ADDR. 1 (MAILING) (4.01)"
* StAddr2Mailing 0..1 Element "ST. ADDR. 2 (MAILING) (4.02)"
* CityMailing 0..1 Element "CITY (MAILING) (4.03)"
* StateMailing 0..1 Element "STATE (MAILING) (4.04)"
* ZipMailing 0..1 Element "ZIP (MAILING) (4.05)"
* State only Reference(State5)
* Country only Reference(Country779004)
* Contact only Reference(Contact403)

Logical: State5
Id: State5
Title: "STATE (5)"
Characteristics: #can-be-target
* Abbreviation 0..1 Element "ABBREVIATION (1)"

Logical: HospitalLocation44
Id: HospitalLocation44
Title: "HOSPITAL LOCATION (44)"
Characteristics: #can-be-target
* Service 0..1 Element "SERVICE (9)"
* StopCodeNumber 0..1 Element "STOP CODE NUMBER (8)"
* CreditStopCode 0..1 Element "CREDIT STOP CODE (2503)"
* Type 0..1 Element "TYPE (2)"
* Ien 0..1 Element "IEN (.001)"
* Name 0..1 Element "NAME (.01)"
* Abbreviation 0..1 Element "ABBREVIATION (1)"
* Synonym 0..1 Element "SYNONYM (13)"
* PatientFriendlyName 0..1 Element "PATIENT FRIENDLY NAME (60)"
* Telephone 0..1 Element "TELEPHONE (99)"
* PhysicalLocation 0..1 Element "PHYSICAL LOCATION (10)"
* Institution 0..1 Reference "INSTITUTION (3)"
* Institution only Reference(Institution4)

Logical: Ptf45
Id: Ptf45
Title: "PTF (45)"
Characteristics: #can-be-target
* Number 0..1 Element "NUMBER (.001)"
* InternalAdmission  0..1 Element "INTERNAL ADMISSION # (2.1)"
* AdmissionDate 0..1 Element "ADMISSION DATE (2)"
* DischargeDate 0..1 Element "DISCHARGE DATE (70)"
* Patient 0..1 Element "PATIENT (.01)"
* Provider 0..1 Element "PROVIDER (79.1)"
* PrincipalDiagnosis 0..1 Element "PRINCIPAL DIAGNOSIS (79)"
* SecondaryDiagnosis  0..1 Element "SECONDARY DIAGNOSIS [#] (79.16)"
* Procedure  0..1 Element "PROCEDURE [#] (45.01)"
* SourceOfAdmission 0..1 Element "SOURCE OF ADMISSION (20)"
* TransferringFacility 0..1 Element "TRANSFERRING FACILITY (21.1)"
* ReceivingFacility 0..1 Element "RECEIVING FACILITY (76.1)"
* PlaceOfDisposition 0..1 Element "PLACE OF DISPOSITION (75)"
* WardAtDischarge 0..1 Element "WARD AT DISCHARGE (2.2)"
* Facility 0..1 Element "FACILITY (3)"

Logical: InpatientCptCode46
Id: InpatientCptCode46
Title: "INPATIENT CPT CODE (46)"
Characteristics: #can-be-target
* CptCode 0..1 Element "CPT CODE (.01)"

Logical: Drug50
Id: Drug50
Title: "DRUG (50)"
Characteristics: #can-be-target
* PsndfVaProductNameEntry 0..1 Element "PSNDF VA PRODUCT NAME ENTRY (22)"
* GenericName 0..1 Element "GENERIC NAME (.01)"

Logical: MedicationInstruction51
Id: MedicationInstruction51
Title: "MEDICATION INSTRUCTION (51)"
Characteristics: #can-be-target
* IndicationForUseFlag 0..1 Element "INDICATION FOR USE FLAG (129)"

Logical: Prescription52
Id: Prescription52
Title: "PRESCRIPTION (52)"
Characteristics: #can-be-target
* Status 0..1 Element "STATUS (100)"
* Patient 0..1 Element "PATIENT (2)"
* Provider 0..1 Element "PROVIDER (4)"
* ExpirationDate 0..1 Element "EXPIRATION DATE (26)"
* CancelDate 0..1 Element "CANCEL DATE (26.1)"
* OfRefills 0..1 Element "# OF REFILLS (9)"
* Qty 0..1 Element "QTY (7)"
* DaysSupply 0..1 Element "DAYS SUPPLY (8)"
* IndicationForUse 0..1 Element "INDICATION FOR USE (128)"
* Mailwindowpark 0..1 Element "MAIL/WINDOW/PARK (11)"
* Clinic 0..1 Element "CLINIC (5)"
* PlacerOrder  0..1 Element "PLACER ORDER # (39.3)"
* Mailwindow 0..1 Element "MAIL/WINDOW (11)"
* MedicationInstructions 0..1 Reference "MEDICATION INSTRUCTIONS (113)"
* PatientInstructions 0..1 Element "PATIENT INSTRUCTIONS (114)"
* Sig 0..1 Element "SIG (10)"
* Drug 0..1 Reference "DRUG (6)"
* ReleasedDatetime 0..1 Element "RELEASED DATE/TIME (31)"
* FillDate 0..1 Element "FILL DATE (22)"
* Division 0..1 Element "DIVISION (20)"
* Remarks 0..1 Element "REMARKS (12)"
* Refill 0..1 Reference "REFILL (52)"
* PartialDate 0..1 Reference "PARTIAL DATE (60)"
* MedicationInstructions only Reference(MedicationInstructions520113)
* Drug only Reference(Drug50)
* Refill only Reference(Refill521)
* PartialDate only Reference(PartialDate522)

Logical: LaboratoryTest60
Id: LaboratoryTest60
Title: "LABORATORY TEST (60)"
Characteristics: #can-be-target
* NationalVaLabCode 0..1 Reference "NATIONAL VA LAB CODE (64)"
* Name 0..1 Element "NAME (.01)"
* Sitespecimen 0..1 Reference "SITE/SPECIMEN (100)"
* NationalVaLabCode only Reference(WlkdCode64)
* Sitespecimen only Reference(Sitespecimen6001)

Logical: CollectionSample62
Id: CollectionSample62
Title: "COLLECTION SAMPLE (62)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: LabData63
Id: LabData63
Title: "LAB DATA (63)"
Characteristics: #can-be-target
* Lrdfn 0..1 Element "LRDFN (.01)"

Logical: WlkdCode64
Id: WlkdCode64
Title: "WLKD CODE (64)"
Characteristics: #can-be-target
* WkldCodeLabSection 0..1 Reference "WKLD CODE LAB SECTION (13)"
* DefaultLoincCode 0..1 Element "DEFAULT LOINC CODE (25)"
* WkldCodeLabSection only Reference(WlkdCodeLabSect6421)

Logical: RadnucMedPatient70
Id: RadnucMedPatient70
Title: "RAD/NUC MED PATIENT (70)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: RadnucMedProcedures71
Id: RadnucMedProcedures71
Title: "RAD/NUC MED PROCEDURES (71)"
Characteristics: #can-be-target
* CptCode 0..1 Element "CPT CODE (9)"

Logical: ExaminationStatus72
Id: ExaminationStatus72
Title: "EXAMINATION STATUS (72)"
Characteristics: #can-be-target
* Status 0..1 Element "STATUS (.01)"

Logical: RadnucMedReports74
Id: RadnucMedReports74
Title: "RAD/NUC MED REPORTS (74)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ReportStatus 0..1 Element "REPORT STATUS (5)"
* PatientName 0..1 Element "PATIENT NAME (2)"
* ExamDatetime 0..1 Element "EXAM DATE/TIME (3)"
* VerifiedDate 0..1 Element "VERIFIED DATE (7)"
* VerifyingPhysician 0..1 Element "VERIFYING PHYSICIAN (9)"
* ImpressionText 0..1 Reference "IMPRESSION TEXT (300)"
* ImpressionText only Reference(ImpressionText7403)

Logical: IcdDiagnosis80
Id: IcdDiagnosis80
Title: "ICD DIAGNOSIS (80)"
Characteristics: #can-be-target
* CodeNumber 0..1 Element "CODE NUMBER (.01)"

Logical: Cpt81
Id: Cpt81
Title: "CPT (81)"
Characteristics: #can-be-target

Logical: Order100
Id: Order100
Title: "ORDER (100)"
Characteristics: #can-be-target
* Order  0..1 Element "ORDER # (.01)"
* ObjectOfOrder 0..1 Element "OBJECT OF ORDER (.02)"
* CurrentAgentprovider 0..1 Element "CURRENT AGENT/PROVIDER (1)"
* WhenEntered 0..1 Element "WHEN ENTERED (4)"
* ReplacedOrder 0..1 Element "REPLACED ORDER (9)"
* StartDate 0..1 Element "START DATE (21)"
* StopDate 0..1 Element "STOP DATE (22)"
* ItemOrdered 0..1 Element "ITEM ORDERED (7)"

Logical: Surgery130
Id: Surgery130
Title: "SURGERY (130)"
Characteristics: #can-be-target
* Patient 0..1 Element "PATIENT (.01)"
* Visit 0..1 Element "VISIT (.015)"
* DateOfOperation 0..1 Element "DATE OF OPERATION (.09)"
* GeneralComments 0..1 Element "GENERAL COMMENTS (.28)"
* PrincipalPreopDiagnosis 0..1 Element "PRINCIPAL PRE-OP DIAGNOSIS (32)"
* TimeProcedureBegan 0..1 Element "TIME PROCEDURE BEGAN (121)"
* TimeProcedureEnded 0..1 Element "TIME PROCEDURE ENDED (122)"
* TimeOperationBegan 0..1 Element "TIME OPERATION BEGAN (.22)"
* TimeOperationEnds 0..1 Element "TIME OPERATION ENDS (.23)"
* NonorLocation 0..1 Element "NON-OR LOCATION (119)"
* OpRoomProcedurePerformed 0..1 Element "OP ROOM PROCEDURE PERFORMED (.02)"
* StomaComplications 0..1 Element "STOMA COMPLICATIONS (688)"
* MyocardialInfarction 0..1 Element "MYOCARDIAL INFARCTION (258)"
* Perfusionist 0..1 Element "PERFUSIONIST (.167)"
* PrimarySurgeon 0..1 Element "PRIMARY SURGEON (.14)"
* FirstAsst 0..1 Element "FIRST ASST (.15)"
* SecondAsst 0..1 Element "SECOND ASST (.16)"
* AttendingSurgeon 0..1 Element "ATTENDING SURGEON (.164)"
* AsstPerfusionist 0..1 Element "ASST PERFUSIONIST (.168)"
* SkinPreppedBy1 0..1 Element "SKIN PREPPED BY (1) (.18)"
* PrincAnesthetist 0..1 Element "PRINC ANESTHETIST (.31)"
* ReliefAnesthetist 0..1 Element "RELIEF ANESTHETIST (.32)"
* AsstAnesthetist 0..1 Element "ASST ANESTHETIST (.33)"
* AnesthesiologistSupvr 0..1 Element "ANESTHESIOLOGIST SUPVR (.34)"
* Verifier 0..1 Element "VERIFIER (.522)"
* Provider 0..1 Element "PROVIDER (123)"
* FoleyCatheterInsertedBy 0..1 Element "FOLEY CATHETER INSERTED BY (.57)"
* PrincipalProcedure 0..1 Element "PRINCIPAL PROCEDURE (26)"
* PlannedPrinProcedureCode 0..1 Element "PLANNED PRIN PROCEDURE CODE (27)"

Logical: NewPerson200
Id: NewPerson200
Title: "NEW PERSON (200)"
Characteristics: #can-be-target
* Npi 0..1 Element "NPI (41.99)"
* Dea 0..1 Element "DEA# (53.2)"
* Va 0..1 Element "VA# (53.3)"
* Vpid 0..1 Element "VPID (9000)"
* EffectiveDatetime 0..1 Element "EFFECTIVE DATE/TIME (42)"
* NameComponents 0..1 Reference "NAME COMPONENTS (10.1)"
* PhoneHome 0..1 Element "PHONE (HOME) (.131)"
* Dob 0..1 Element "DOB (5)"
* Degree 0..1 Element "DEGREE (10.6)"
* Ien 0..1 Element "IEN (.001)"
* StreetAddress1 0..1 Element "STREET ADDRESS 1 (.111)"
* StreetAddress2 0..1 Element "STREET ADDRESS 2 (.112)"
* StreetAddress3 0..1 Element "STREET ADDRESS 3 (.113)"
* City 0..1 Element "CITY (.114)"
* State 0..1 Element "STATE (.115)"
* ZipCode 0..1 Element "ZIP CODE (.116)"
* TemporaryAddress1 0..1 Element "TEMPORARY ADDRESS 1 (.1211)"
* TemporaryAddress2 0..1 Element "TEMPORARY ADDRESS 2 (.1212)"
* TemporaryAddress3 0..1 Element "TEMPORARY ADDRESS 3 (.1213)"
* TemporaryCity 0..1 Element "TEMPORARY CITY (.1214)"
* TemporaryState 0..1 Element "TEMPORARY STATE (.1215)"
* TemporaryZipCode 0..1 Element "TEMPORARY ZIP CODE (.1216)"
* StartDateOfTempAddres 0..1 Element "START DATE OF TEMP ADDRES (.1217)"
* EndDateOfTempAddress 0..1 Element "END DATE OF TEMP ADDRESS (.1218)"
* Sex 0..1 Element "SEX (4)"
* OfficePhone 0..1 Element "OFFICE PHONE (.132)"
* Phone3 0..1 Element "PHONE #3 (.133)"
* Phone4 0..1 Element "PHONE #4 (.134)"
* CommercialPhone 0..1 Element "COMMERCIAL PHONE (.135)"
* FaxNumber 0..1 Element "FAX NUMBER (.136)"
* VoicePager 0..1 Element "VOICE PAGER (.137)"
* DigitalPager 0..1 Element "DIGITAL PAGER (.138)"
* EmailAddress 0..1 Element "EMAIL ADDRESS (.151)"
* PersonClass 0..1 Reference "PERSON CLASS (8932.1)"
* Name 0..1 Element "NAME (.01)"
* SignatureBlockTitle 0..1 Element "SIGNATURE BLOCK TITLE (20.3)"
* Title 0..1 Reference "TITLE (8)"
* Division 0..1 Element "DIVISION (16)"
* NameComponents only Reference(NameComponents20 )
* PersonClass only Reference(PersonClass20005)
* Title only Reference(Title31)

Logical: Echo691
Id: Echo691
Title: "ECHO (691)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ReleaseCode 0..1 Element "RELEASE CODE (1506)"
* MedicalPatient 0..1 Element "MEDICAL PATIENT (1)"
* Datetime 0..1 Element "DATE/TIME (.01)"
* DateOfVerified 0..1 Element "DATE OF VERIFIED (1508)"
* CardiologyAttending 0..1 Element "CARDIOLOGY ATTENDING (39)"
* Findings 0..1 Reference "FINDINGS (37)"
* Summary 0..1 Element "SUMMARY (.03)"
* OtherConclusion 0..1 Element "OTHER CONCLUSION (38)"
* Findings only Reference(Findings69106)

Logical: GeneratorImplant698
Id: GeneratorImplant698
Title: "GENERATOR IMPLANT (698)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ExplantDate 0..1 Element "EXPLANT DATE (96)"
* PacemakerManufacturer 0..1 Reference "PACEMAKER MANUFACTURER (3)"
* PacemakerSerialNumber 0..1 Element "PACEMAKER SERIAL NUMBER (4)"
* PacemakerModel 0..1 Reference "PACEMAKER MODEL (2)"
* MedicalPatient 0..1 Element "MEDICAL PATIENT (1)"
* TransmitterManufacturer 0..1 Reference "TRANSMITTER MANUFACTURER (13)"
* TransmitterModel 0..1 Reference "TRANSMITTER MODEL (12)"
* PacemakerManufacturer only Reference(PacemakerManufacturer6986)
* PacemakerModel only Reference(PacemakerEquipment6984)
* TransmitterManufacturer only Reference(PacemakerManufacturer6986)
* TransmitterModel only Reference(PacemakerEquipment6984)

Logical: TiuDocument8925
Id: TiuDocument8925
Title: "TIU DOCUMENT (8925)"
Characteristics: #can-be-target
* ReportText 0..1 Element "REPORT TEXT (2)"
* Ien 0..1 Element "IEN (.001)"
* DocumentType 0..1 Reference "DOCUMENT TYPE (.01)"
* Patient 0..1 Element "PATIENT (.02)"
* EntryDatetime 0..1 Element "ENTRY DATE/TIME (1201)"
* Authordictator 0..1 Element "AUTHOR/DICTATOR (1202)"
* SignedBy 0..1 Element "SIGNED BY (1502)"
* VerifiedBy 0..1 Element "VERIFIED BY (1306)"
* Division 0..1 Element "DIVISION (1212)"
* Subject 0..1 Element "SUBJECT (1701)"
* Visit 0..1 Element "VISIT (.03)"
* VisitType 0..1 Element "VISIT TYPE (.13)"
* EpisodeBeginDatetime 0..1 Element "EPISODE BEGIN DATE/TIME (.07)"
* EpisodeEndDatetime 0..1 Element "EPISODE END DATE/TIME (.08)"
* HospitalLocation 0..1 Reference "HOSPITAL LOCATION (1205)"
* TreatingSpecialty 0..1 Element "TREATING SPECIALTY (1402)"
* DocumentType only Reference(TiuDocumentDefinition89251)
* HospitalLocation only Reference(HospitalLocation44)

Logical: Patientihs9000001
Id: Patientihs9000001
Title: "PATIENT/IHS (9000001)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: Visit9000010
Id: Visit9000010
Title: "VISIT (9000010)"
Characteristics: #can-be-target
* VisitadmitDatetime 0..1 Element "VISIT/ADMIT DATE&TIME (.01)"
* VisitId 0..1 Element "VISIT ID (15001)"
* CheckOutDatetime 0..1 Element "CHECK OUT DATE&TIME (.18)"
* ServiceCategory 0..1 Element "SERVICE CATEGORY (.07)"
* PatientName 0..1 Element "PATIENT NAME (.05)"
* DssId 0..1 Element "DSS ID (.08)"
* HospitalLocation 0..1 Element "HOSPITAL LOCATION (.22)"
* PatientStatusInout 0..1 Element "PATIENT STATUS IN/OUT (15002)"
* LocOfEncounter 0..1 Reference "LOC. OF ENCOUNTER (.06)"
* LocOfEncounter only Reference(Location999999906)

Logical: Problem9000011
Id: Problem9000011
Title: "PROBLEM (9000011)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* DateResolved 0..1 Element "DATE RESOLVED (1.07)"
* Diagnosis 0..1 Element "DIAGNOSIS (.01)"
* SnomedCtConceptCode 0..1 Element "SNOMED CT CONCEPT CODE (80001)"
* ProviderNarrative 0..1 Element "PROVIDER NARRATIVE (.05)"
* PatientName 0..1 Element "PATIENT NAME (.02)"
* DateOfOnset 0..1 Element "DATE OF ONSET (.13)"
* DateEntered 0..1 Element "DATE ENTERED (.08)"
* RecordingProvider 0..1 Element "RECORDING PROVIDER (1.04)"
* Status 0..1 Element "STATUS (.12)"
* Condition 0..1 Element "CONDITION (1.02)"

Logical: PatientAllergies1208
Id: PatientAllergies1208
Title: "PATIENT ALLERGIES (120.8)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* Reactant 0..1 Element "REACTANT (.02)"
* GmrAllergy 0..1 Element "GMR ALLERGY (1)"
* Patient 0..1 Element "PATIENT (.01)"
* OriginationDatetime 0..1 Element "ORIGINATION DATE/TIME (4)"
* Originator 0..1 Element "ORIGINATOR (5)"
* Mechanism 0..1 Element "MECHANISM (17)"
* Verified 0..1 Element "VERIFIED (19)"
* EnteredInError 0..1 Element "ENTERED IN ERROR (22)"
* AllergyType 0..1 Element "ALLERGY TYPE (3.1)"
* Comments 0..1 Reference "COMMENTS (26)"
* DrugIngredients 0..1 Element "DRUG INGREDIENTS (2)"
* Reactions 0..1 Reference "REACTIONS (10)"
* Comments only Reference(Comments120826)
* Reactions only Reference(Reactions12081)

Logical: Reactions12081
Id: Reactions12081
Title: "REACTIONS (120.81)"
Characteristics: #can-be-target
* Reaction 0..1 Element "REACTION (.01)"
* DateEntered 0..1 Element "DATE ENTERED (3)"

Logical: Signsymptoms12083
Id: Signsymptoms12083
Title: "SIGN/SYMPTOMS (120.83)"
Characteristics: #can-be-target

Logical: AdverseReactionReporting12085
Id: AdverseReactionReporting12085
Title: "ADVERSE REACTION REPORTING (120.85)"
Characteristics: #can-be-target
* Severity 0..1 Element "SEVERITY (14.5)"

Logical: Comments120826
Id: Comments120826
Title: "COMMENTS (120.826)"
Characteristics: #can-be-target
* DatetimeCommentEntered 0..1 Element "DATE/TIME COMMENT ENTERED (.01)"
* UserEntering 0..1 Element "USER ENTERING (1)"
* Comments 0..1 Element "COMMENTS (2)"

Logical: LanguageDatetime207
Id: LanguageDatetime207
Title: "LANGUAGE DATE/TIME (2.07)"
Characteristics: #can-be-target
* PreferredLanguage 0..1 Element "PREFERRED LANGUAGE (.02)"

Logical: Appointment298
Id: Appointment298
Title: "APPOINTMENT (2.98)"
Characteristics: #can-be-target
* Status 0..1 Element "STATUS (3)"
* CancellationReason 0..1 Element "CANCELLATION REASON (16)"
* Clinic 0..1 Reference "CLINIC (.01)"
* AppointmentType 0..1 Reference "APPOINTMENT TYPE (9.5)"
* AppointmentDatetime 0..1 Element "APPOINTMENT DATE/TIME (.001)"
* OutpatientEncounter 0..1 Reference "OUTPATIENT ENCOUNTER (21)"
* DateApptMade 0..1 Element "DATE APPT. MADE (20)"
* Clinic only Reference(HospitalLocation44)
* AppointmentType only Reference(AppointmentType4091)
* OutpatientEncounter only Reference(OutpatientEncounter40968)

Logical: AppointmentType4091
Id: AppointmentType4091
Title: "APPOINTMENT TYPE (409.1)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: OutpatientEncounter40968
Id: OutpatientEncounter40968
Title: "OUTPATIENT ENCOUNTER (409.68)"
Characteristics: #can-be-target
* CheckOutProcessCompletion 0..1 Element "CHECK OUT PROCESS COMPLETION (.07)"

Logical: Patient44003
Id: Patient44003
Title: "PATIENT (44.003)"
Characteristics: #can-be-target
* LengthOfAppt 0..1 Element "LENGTH OF APP'T (1)"

Logical: SdWaitList4093
Id: SdWaitList4093
Title: "SD WAIT LIST (409.3)"
Characteristics: #can-be-target
* Patient 0..1 Element "PATIENT (.01)"
* ApptStopCode 0..1 Element "APPT STOP CODE (13.4)"
* DesiredDateOfAppointment 0..1 Element "DESIRED DATE OF APPOINTMENT (22)"
* OriginatingDate 0..1 Element "ORIGINATING DATE (1)"
* Comments 0..1 Element "COMMENTS (25)"
* ApptClinic 0..1 Element "APPT CLINIC (13.2)"

Logical: VPov900001007
Id: VPov900001007
Title: "V POV (9000010.07)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* Pov 0..1 Reference "POV (.01)"
* PatientName 0..1 Element "PATIENT NAME (.02)"
* Visit 0..1 Reference "VISIT (.03)"
* DateOfInjury 0..1 Element "DATE OF INJURY (.13)"
* Modifier 0..1 Element "MODIFIER (.06)"
* ProblemListEntry 0..1 Element "PROBLEM LIST ENTRY (.16)"
* Visit only Reference(Visit9000010)
* Pov only Reference(IcdDiagnosis80)

Logical: GmrvVitalMeasurement1205
Id: GmrvVitalMeasurement1205
Title: "GMRV VITAL MEASUREMENT (120.5)"
Characteristics: #can-be-target
* Qualifier 0..1 Reference "QUALIFIER (5)"
* DatetimeVitalsEntered 0..1 Element "DATE/TIME VITALS ENTERED (.04)"
* HospitalLocation 0..1 Reference "HOSPITAL LOCATION (.05)"
* ReasonEnteredInError 0..1 Element "REASON ENTERED IN ERROR (4)"
* DatetimeVitalsTaken 0..1 Element "DATE/TIME VITALS TAKEN (.01)"
* Patient 0..1 Element "PATIENT (.02)"
* Ien 0..1 Element "IEN (.001)"
* VitalType 0..1 Element "VITAL TYPE (.03)"
* Rate 0..1 Element "RATE (1.2)"
* SupplementalO2 0..1 Element "SUPPLEMENTAL O2 (1.4)"
* Qualifier only Reference(GmrvVitalQualifier12052)
* HospitalLocation only Reference(Institution4)

Logical: GmrvVitalQualifier12052
Id: GmrvVitalQualifier12052
Title: "GMRV VITAL QUALIFIER (120.52)"
Characteristics: #can-be-target
* Vuid 0..1 Element "VUID (99.99)"

Logical: WlkdCodeLabSect6421
Id: WlkdCodeLabSect6421
Title: "WLKD CODE LAB SECT (64.21)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: LabLoinc953
Id: LabLoinc953
Title: "LAB LOINC (95.3)"
Characteristics: #can-be-target

Logical: ChemHemToxRiaSerEtc6304
Id: ChemHemToxRiaSerEtc6304
Title: "CHEM, HEM, TOX, RIA, SER, etc. (63.04)"
Characteristics: #can-be-target
* OrderedTest 0..1 Reference "ORDERED TEST (.35)"
* DatetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (.01)"
* DateReportCompleted 0..1 Element "DATE REPORT COMPLETED (.03)"
* VerifyPerson 0..1 Element "VERIFY PERSON (.04)"
* AccessioningInstitution 0..1 Element "ACCESSIONING INSTITUTION (.112)"
* Comment 0..1 Reference "COMMENT (.99)"
* Accession 0..1 Element "ACCESSION (.06)"
* Ien 0..1 Element "IEN (.001)"
* OrderedTest only Reference(OrderedTest6307)
* Comment only Reference(Comment63041)

Logical: OrderedTest6307
Id: OrderedTest6307
Title: "ORDERED TEST (63.07)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* CprsOrder  0..1 Element "CPRS ORDER # (3)"
* Disposition 0..1 Element "DISPOSITION (10)"
* LabTestOrdered 0..1 Reference "LAB TEST ORDERED (13)"
* CollectionSample 0..1 Reference "COLLECTION SAMPLE (9)"
* LabTestOrdered only Reference(LaboratoryTest60)
* CollectionSample only Reference(CollectionSample62)

Logical: Comment63041
Id: Comment63041
Title: "COMMENT (63.041)"
Characteristics: #can-be-target
* Comment 0..1 Element "COMMENT (.01)"

Logical: Sitespecimen6001
Id: Sitespecimen6001
Title: "SITE/SPECIMEN (60.01)"
Characteristics: #can-be-target
* ReferenceHigh 0..1 Element "REFERENCE HIGH (2)"
* ReferenceLow 0..1 Element "REFERENCE LOW (1)"
* LoincCode 0..1 Element "LOINC CODE (95.3)"
* Units 0..1 Element "UNITS (6)"

Logical: Cytopathology6309
Id: Cytopathology6309
Title: "CYTOPATHOLOGY (63.09)"
Characteristics: #can-be-target
* OrderedTest 0..1 Reference "ORDERED TEST (.35)"
* DatetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (.01)"
* DateReportCompleted 0..1 Element "DATE REPORT COMPLETED (.03)"
* ReleasedBy 0..1 Element "RELEASED BY (.13)"
* ReleasingSite 0..1 Element "RELEASING SITE (.345)"
* Pathologistcytotechnologist 0..1 Element "PATHOLOGIST/CYTOTECHNOLOGIST (.02)"
* CytopathAcc  0..1 Element "CYTOPATH ACC # (.06)"
* CytopathologyDiagnosis 0..1 Element "CYTOPATHOLOGY DIAGNOSIS (2005)"
* TiuReferenceDatetimeCy 0..1 Reference "TIU REFERENCE DATE/TIME - CY (.16)"
* Specimen 0..1 Reference "SPECIMEN (.012)"
* OrderedTest only Reference(OrderedTest6351)
* TiuReferenceDatetimeCy only Reference(TiuReferenceDatetime6347)
* Specimen only Reference(Specimen63902)

Logical: OrderedTest6351
Id: OrderedTest6351
Title: "ORDERED TEST (63.51)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* CprsOrder  0..1 Element "CPRS ORDER # (3)"
* Disposition 0..1 Element "DISPOSITION (10)"

Logical: TiuReferenceDatetime6347
Id: TiuReferenceDatetime6347
Title: "TIU REFERENCE DATE/TIME (63.47)"
Characteristics: #can-be-target
* CyTiuEntryPointerCy 0..1 Reference "CY - TIU ENTRY POINTER - CY (1)"
* CyTiuEntryPointerCy only Reference(TiuDocument8925)

Logical: Specimen63902
Id: Specimen63902
Title: "SPECIMEN (63.902)"
Characteristics: #can-be-target
* Specimen 0..1 Element "SPECIMEN (.01)"

Logical: Em6302
Id: Em6302
Title: "EM (63.02)"
Characteristics: #can-be-target
* OrderedTest 0..1 Reference "ORDERED TEST (.35)"
* DatetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (.01)"
* DateReportCompleted 0..1 Element "DATE REPORT COMPLETED (.03)"
* ReleasedBy 0..1 Element "RELEASED BY (.13)"
* ReleasingSite 0..1 Element "RELEASING SITE (.345)"
* Pathologist 0..1 Element "PATHOLOGIST (.02)"
* EmAcc  0..1 Element "EM ACC # (.06)"
* Image 0..1 Element "IMAGE (2005)"
* EmDiagnosis 0..1 Element "EM DIAGNOSIS (1.4)"
* TiuReferenceDatetimeEm 0..1 Reference "TIU REFERENCE DATE/TIME - EM (.16)"
* Specimen 0..1 Reference "SPECIMEN (.012)"
* OrderedTest only Reference(OrderedTest6352)
* TiuReferenceDatetimeEm only Reference(TiuReferenceDatetime6349)
* Specimen only Reference(Specimen63202)

Logical: OrderedTest6352
Id: OrderedTest6352
Title: "ORDERED TEST (63.52)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* CprsOrder  0..1 Element "CPRS ORDER # (3)"
* Disposition 0..1 Element "DISPOSITION (10)"

Logical: TiuReferenceDatetime6349
Id: TiuReferenceDatetime6349
Title: "TIU REFERENCE DATE/TIME (63.49)"
Characteristics: #can-be-target
* EmTiuEntryPointerEm 0..1 Element "EM - TIU ENTRY POINTER - EM (1)"

Logical: Specimen63202
Id: Specimen63202
Title: "SPECIMEN (63.202)"
Characteristics: #can-be-target
* Specimen 0..1 Element "SPECIMEN (.01)"

Logical: Microbiology6305
Id: Microbiology6305
Title: "MICROBIOLOGY (63.05)"
Characteristics: #can-be-target
* OrderedTest 0..1 Reference "ORDERED TEST (.35)"
* DatetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (.01)"
* DateReportCompleted 0..1 Element "DATE REPORT COMPLETED (.03)"
* VerifyPerson 0..1 Element "VERIFY PERSON (.04)"
* AccessioningInstitution 0..1 Element "ACCESSIONING INSTITUTION (.112)"
* CommentOnSpecimen 0..1 Element "COMMENT ON SPECIMEN (.99)"
* Organism 0..1 Reference "ORGANISM (12)"
* MicrobiologyAccession 0..1 Element "MICROBIOLOGY ACCESSION (.06)"
* Ien 0..1 Element "IEN (.001)"
* CollectionSample 0..1 Reference "COLLECTION SAMPLE (.055)"
* BactRptRemark 0..1 Reference "BACT RPT REMARK (13)"
* BactRptStatus 0..1 Element "BACT RPT STATUS (11.5)"
* UrineScreen 0..1 Element "URINE SCREEN (11.57)"
* SputumScreen 0..1 Element "SPUTUM SCREEN (11.58)"
* GramStain 0..1 Reference "GRAM STAIN (11.6)"
* ParasiteRptRemark 0..1 Reference "PARASITE RPT REMARK (17)"
* ParasiteRptStatus 0..1 Element "PARASITE RPT STATUS (15)"
* MycologyRptRemark 0..1 Reference "MYCOLOGY RPT REMARK (21)"
* MycologyRptStatus 0..1 Element "MYCOLOGY RPT STATUS (19)"
* TbRptRemark 0..1 Reference "TB RPT REMARK (27)"
* TbRptStatus 0..1 Element "TB RPT STATUS (23)"
* AcidFastStain 0..1 Element "ACID FAST STAIN (24)"
* VirologyRptRemark 0..1 Reference "VIROLOGY RPT REMARK (37)"
* VirologyReportStatus 0..1 Element "VIROLOGY REPORT STATUS (34)"
* OrderedTest only Reference(OrderedTest635)
* Organism only Reference(Organism633)
* CollectionSample only Reference(CollectionSample62)
* BactRptRemark only Reference(BactRptRemark6333)
* GramStain only Reference(GramStain6329)
* ParasiteRptRemark only Reference(ParasiteRptRemark6336)
* MycologyRptRemark only Reference(MycologyRptRemark6338)
* TbRptRemark only Reference(TbRptRemark6341)
* VirologyRptRemark only Reference(VirologyRptRemark6344)

Logical: OrderedTest635
Id: OrderedTest635
Title: "ORDERED TEST (63.5)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* CprsOrder  0..1 Element "CPRS ORDER # (3)"
* Disposition 0..1 Element "DISPOSITION (10)"
* LabTestOrdered 0..1 Reference "LAB TEST ORDERED (13)"
* LabTestOrdered only Reference(LaboratoryTest60)

Logical: Organism633
Id: Organism633
Title: "ORGANISM (63.3)"
Characteristics: #can-be-target
* Comment 0..1 Reference "COMMENT (2)"
* Organism 0..1 Element "ORGANISM (5+to+160)"
* Comment only Reference(Comment6331)

Logical: Comment6331
Id: Comment6331
Title: "COMMENT (63.31)"
Characteristics: #can-be-target
* Comment 0..1 Element "COMMENT (.01)"

Logical: BactRptRemark6333
Id: BactRptRemark6333
Title: "BACT RPT REMARK (63.33)"
Characteristics: #can-be-target
* BactRptRemark 0..1 Element "BACT RPT REMARK (.01)"

Logical: GramStain6329
Id: GramStain6329
Title: "GRAM STAIN (63.29)"
Characteristics: #can-be-target
* GramStain 0..1 Element "GRAM STAIN (.01)"

Logical: ParasiteRptRemark6336
Id: ParasiteRptRemark6336
Title: "PARASITE RPT REMARK (63.36)"
Characteristics: #can-be-target
* ParasiteRptRemark 0..1 Element "PARASITE RPT REMARK (.01)"

Logical: MycologyRptRemark6338
Id: MycologyRptRemark6338
Title: "MYCOLOGY RPT REMARK (63.38)"
Characteristics: #can-be-target
* MycologyRptRemark 0..1 Element "MYCOLOGY RPT REMARK (.01)"

Logical: TbRptRemark6341
Id: TbRptRemark6341
Title: "TB RPT REMARK (63.41)"
Characteristics: #can-be-target
* TbRptRemark 0..1 Element "TB RPT REMARK (.01)"

Logical: VirologyRptRemark6344
Id: VirologyRptRemark6344
Title: "VIROLOGY RPT REMARK (63.44)"
Characteristics: #can-be-target
* VirologyRptRemark 0..1 Element "VIROLOGY RPT REMARK (.01)"

Logical: SurgicalPathology6308
Id: SurgicalPathology6308
Title: "SURGICAL PATHOLOGY (63.08)"
Characteristics: #can-be-target
* OrderedTest 0..1 Reference "ORDERED TEST (.35)"
* DatetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (.01)"
* DateReportCompleted 0..1 Element "DATE REPORT COMPLETED (.03)"
* ReleasedBy 0..1 Element "RELEASED BY (.13)"
* ReleasingSite 0..1 Element "RELEASING SITE (.345)"
* Pathologist 0..1 Element "PATHOLOGIST (.02)"
* SurgicalPathAcc  0..1 Element "SURGICAL PATH ACC # (.06)"
* SurgicalPathDiagnosis 0..1 Element "SURGICAL PATH DIAGNOSIS (2005)"
* TiuReferenceDatetimeSp 0..1 Reference "TIU REFERENCE DATE/TIME - SP (.16)"
* Specimen 0..1 Reference "SPECIMEN (.012)"
* OrderedTest only Reference(OrderedTest6353)
* TiuReferenceDatetimeSp only Reference(TiuReferenceDatetime6319)
* Specimen only Reference(Specimen63812)

Logical: OrderedTest6353
Id: OrderedTest6353
Title: "ORDERED TEST (63.53)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* CprsOrder  0..1 Element "CPRS ORDER # (3)"
* Disposition 0..1 Element "DISPOSITION (10)"

Logical: TiuReferenceDatetime6319
Id: TiuReferenceDatetime6319
Title: "TIU REFERENCE DATE/TIME (63.19)"
Characteristics: #can-be-target
* SpTiuEntryPointerSp 0..1 Element "SP - TIU ENTRY POINTER - SP (1)"

Logical: Specimen63812
Id: Specimen63812
Title: "SPECIMEN (63.812)"
Characteristics: #can-be-target
* Specimen 0..1 Element "SPECIMEN (.01)"

Logical: TiuDocumentDefinition89251
Id: TiuDocumentDefinition89251
Title: "TIU DOCUMENT DEFINITION (8925.1)"
Characteristics: #can-be-target
* VhaEnterpriseStandardTitle 0..1 Reference "VHA ENTERPRISE STANDARD TITLE (1501)"
* VhaEnterpriseStandardTitle only Reference(TiuVhaEnterpriseStandardTitle89261)

Logical: TiuVhaEnterpriseStandardTitle89261
Id: TiuVhaEnterpriseStandardTitle89261
Title: "TIU VHA ENTERPRISE STANDARD TITLE (8926.1)"
Characteristics: #can-be-target
* DocumentType 0..1 Element "DOCUMENT TYPE (.08)"
* StandardTitle 0..1 Element "STANDARD TITLE (.01)"

Logical: PrfCode451
Id: PrfCode451
Title: "PRF CODE (45.1)"
Characteristics: #can-be-target

Logical: Location999999906
Id: Location999999906
Title: "LOCATION (9999999.06)"
Characteristics: #can-be-target
* PointerToInstitutionFile4 0..1 Element "POINTER TO INSTITUTION FILE (#4) (.1)"

Logical: VProvider900001006
Id: VProvider900001006
Title: "V PROVIDER (9000010.06)"
Characteristics: #can-be-target
* Provider 0..1 Element "PROVIDER (.01)"

Logical: VCpt900001018
Id: VCpt900001018
Title: "V CPT (9000010.18)"
Characteristics: #can-be-target
* Cpt 0..1 Element "CPT (.01)"
* PatientName 0..1 Reference "PATIENT NAME (.02)"
* Visit 0..1 Element "VISIT (.03)"
* ProviderNarrative 0..1 Reference "PROVIDER NARRATIVE (.04)"
* Diagnosis 0..1 Element "DIAGNOSIS (.05)"
* Diagnosis2 0..1 Element "DIAGNOSIS 2 (.09)"
* Diagnosis3 0..1 Element "DIAGNOSIS 3 (.1)"
* Diagnosis4 0..1 Element "DIAGNOSIS 4 (.11)"
* Diagnosis5 0..1 Element "DIAGNOSIS 5 (.12)"
* Diagnosis6 0..1 Element "DIAGNOSIS 6 (.13)"
* Diagnosis7 0..1 Element "DIAGNOSIS 7 (.14)"
* Diagnosis8 0..1 Element "DIAGNOSIS 8 (.15)"
* EventDateAndTime 0..1 Element "EVENT DATE AND TIME (1201)"
* EncounterProvider 0..1 Element "ENCOUNTER PROVIDER (1204)"
* Comments 0..1 Element "COMMENTS (81101)"
* PatientName only Reference(Patientihs9000001)
* ProviderNarrative only Reference(ProviderNarrative999999927)

Logical: VImmunization900001011
Id: VImmunization900001011
Title: "V IMMUNIZATION (9000010.11)"
Characteristics: #can-be-target
* Immunization 0..1 Reference "IMMUNIZATION (.01)"
* EventInformationSource 0..1 Element "EVENT INFORMATION SOURCE (1301)"
* PatientName 0..1 Element "PATIENT NAME (.02)"
* EventDateAndTime 0..1 Element "EVENT DATE AND TIME (1201)"
* Dose 0..1 Element "DOSE (1312)"
* EncounterProvider 0..1 Element "ENCOUNTER PROVIDER (1204)"
* Comments 0..1 Element "COMMENTS (81101)"
* Series 0..1 Element "SERIES (.04)"
* DoseUnits 0..1 Reference "DOSE UNITS (1313)"
* DatetimeRecorded 0..1 Element "DATE/TIME RECORDED (1205)"
* Visit 0..1 Element "VISIT (.03)"
* Reaction 0..1 Element "REACTION (.06)"
* Immunization only Reference(Immunization999999914)
* DoseUnits only Reference(UcumCodes7575)

Logical: Immunization999999914
Id: Immunization999999914
Title: "IMMUNIZATION (9999999.14)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"
* CvxCode 0..1 Element "CVX CODE (.03)"

Logical: ImmunizationLot999999941
Id: ImmunizationLot999999941
Title: "IMMUNIZATION LOT (9999999.41)"
Characteristics: #can-be-target
* LotNumber 0..1 Element "LOT NUMBER (.01)"
* Manufacturer 0..1 Element "MANUFACTURER (.02)"
* NdcCodeVa 0..1 Element "NDC CODE (VA) (.18)"

Logical: UcumCodes7575
Id: UcumCodes7575
Title: "UCUM CODES (757.5)"
Characteristics: #can-be-target

Logical: ALeadImplant6982
Id: ALeadImplant6982
Title: "A LEAD IMPLANT (698.2)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ExplantDate 0..1 Element "EXPLANT DATE (56)"
* ALeadManufacturer 0..1 Reference "A LEAD MANUFACTURER (3)"
* ALeadSerialNumber 0..1 Element "A LEAD SERIAL NUMBER (4)"
* ALeadModel 0..1 Reference "A LEAD MODEL (2)"
* MedicalPatient 0..1 Element "MEDICAL PATIENT (1)"
* ALeadManufacturer only Reference(PacemakerManufacturer6986)
* ALeadModel only Reference(PacemakerEquipment6984)

Logical: PacemakerManufacturer6986
Id: PacemakerManufacturer6986
Title: "PACEMAKER MANUFACTURER (698.6)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: PacemakerEquipment6984
Id: PacemakerEquipment6984
Title: "PACEMAKER EQUIPMENT (698.4)"
Characteristics: #can-be-target
* ModelNumbername 0..1 Element "MODEL NUMBER/NAME (.01)"
* TypeOfEquipment 0..1 Element "TYPE OF EQUIPMENT (1)"

Logical: DentalDeviceTracking2289
Id: DentalDeviceTracking2289
Title: "DENTAL DEVICE TRACKING (228.9)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* Udi 0..1 Element "UDI (1)"
* Status 0..1 Element "STATUS (.08)"
* DonationId 0..1 Element "DONATION ID (4.8)"
* Manufacturer 0..1 Element "MANUFACTURER (4.1)"
* ManufacturerDate 0..1 Element "MANUFACTURER DATE (4.6)"
* ExprationDate 0..1 Element "EXPRATION DATE (4.7)"
* Lot 0..1 Element "LOT (4.4)"
* Sn 0..1 Element "S/N (4.3)"
* Model 0..1 Element "MODEL (4.2)"
* Type 0..1 Element "TYPE (2)"
* Patient 0..1 Element "PATIENT (.03)"

Logical: ProsthesisInstalled13001
Id: ProsthesisInstalled13001
Title: "PROSTHESIS INSTALLED (130.01)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* Vendor 0..1 Element "VENDOR (1)"
* SterilityExpirationDate 0..1 Element "STERILITY EXPIRATION DATE (9)"
* LotNumber 0..1 Element "LOT NUMBER (11)"
* SerialNumber 0..1 Element "SERIAL NUMBER (12)"
* ProsthesisItem 0..1 Reference "PROSTHESIS ITEM (.01)"
* Model 0..1 Element "MODEL (2)"
* ProsthesisItem only Reference(Prosthesis1319)

Logical: Prosthesis1319
Id: Prosthesis1319
Title: "PROSTHESIS (131.9)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: VLeadImplant6981
Id: VLeadImplant6981
Title: "V LEAD IMPLANT (698.1)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ExplantDate 0..1 Element "EXPLANT DATE (56)"
* VLeadManufacturer 0..1 Reference "V LEAD MANUFACTURER (3)"
* VLeadSerialNumber 0..1 Element "V LEAD SERIAL NUMBER (4)"
* VLeadModel 0..1 Reference "V LEAD MODEL (2)"
* MedicalPatient 0..1 Element "MEDICAL PATIENT (1)"
* VLeadManufacturer only Reference(PacemakerManufacturer6986)
* VLeadModel only Reference(PacemakerEquipment6984)

Logical: Country779004
Id: Country779004
Title: "COUNTRY (779.004)"
Characteristics: #can-be-target
* Code 0..1 Element "CODE (0.1)"

Logical: Non5505
Id: Non5505
Title: "NON (55.05)"
Characteristics: #can-be-target
* VaMedsOrderNumber 0..1 Element "VA MEDS - ORDER NUMBER (7)"
* VaMedsDisclaimer 0..1 Element "VA MEDS - DISCLAIMER (10)"
* VaMedsClinic 0..1 Element "VA MEDS - CLINIC (13)"

Logical: MedicationInstructions520113
Id: MedicationInstructions520113
Title: "MEDICATION INSTRUCTIONS (52.0113)"
Characteristics: #can-be-target
* Units 0..1 Element "UNITS (2)"
* DosageOrdered 0..1 Element "DOSAGE ORDERED (.01)"

Logical: Refill521
Id: Refill521
Title: "REFILL (52.1)"
Characteristics: #can-be-target
* Mailwindowpark 0..1 Element "MAIL/WINDOW/PARK (.01)"
* DaysSupply 0..1 Element "DAYS SUPPLY (1.1)"
* Mailwindow 0..1 Element "MAIL/WINDOW (2)"
* Qty 0..1 Element "QTY (1)"
* ReleasedDatetime 0..1 Element "RELEASED DATE/TIME (17)"
* RefillDate 0..1 Element "REFILL DATE (.01)"
* Division 0..1 Element "DIVISION (8)"
* Remarks 0..1 Element "REMARKS (3)"

Logical: PartialDate522
Id: PartialDate522
Title: "PARTIAL DATE (52.2)"
Characteristics: #can-be-target
* Mailwindow 0..1 Element "MAIL/WINDOW (.02)"
* DaysSupply 0..1 Element "DAYS SUPPLY (.041)"
* Qty 0..1 Element "QTY (.04)"
* ReleasedDatetime 0..1 Element "RELEASED DATE/TIME (8)"
* PartialDate 0..1 Element "PARTIAL DATE (.01)"
* Division 0..1 Element "DIVISION (.09)"
* Remarks 0..1 Element "REMARKS (.03)"

Logical: VExam900001013
Id: VExam900001013
Title: "V EXAM (9000010.13)"
Characteristics: #can-be-target
* Exam 0..1 Reference "EXAM (.01)"
* PatientName 0..1 Reference "PATIENT NAME (.02)"
* Visit 0..1 Element "VISIT (.03)"
* Result 0..1 Element "RESULT (.04)"
* Magnitude 0..1 Element "MAGNITUDE (220)"
* UcumCode 0..1 Element "UCUM CODE (221)"
* Comments 0..1 Element "COMMENTS (81101)"
* EventDateAndTime 0..1 Element "EVENT DATE AND TIME (1201)"
* EncounterProvider 0..1 Element "ENCOUNTER PROVIDER (1204)"
* Exam only Reference(Exam999999915)
* PatientName only Reference(Patientihs9000001)

Logical: Exam999999915
Id: Exam999999915
Title: "EXAM (9999999.15)"
Characteristics: #can-be-target
* CodeMappings 0..1 Element "CODE MAPPINGS (210)"

Logical: CodeMappings999999918
Id: CodeMappings999999918
Title: "CODE MAPPINGS (9999999.18)"
Characteristics: #can-be-target

Logical: Contact403
Id: Contact403
Title: "CONTACT (4.03)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"
* Phone  0..1 Element "PHONE # (.03)"

Logical: NameComponents20 
Id: NameComponents20 
Title: "NAME COMPONENTS (20 )"
Characteristics: #can-be-target

Logical: PersonClass20005
Id: PersonClass20005
Title: "PERSON CLASS (200.05)"
Characteristics: #can-be-target
* ExpirationDate 0..1 Element "EXPIRATION DATE (3)"
* EffectiveDate 0..1 Element "EFFECTIVE DATE (2)"
* PersonClass 0..1 Reference "Person Class (.01)"
* PersonClass only Reference(PersonClass89321)

Logical: Title31
Id: Title31
Title: "TITLE (3.1)"
Characteristics: #can-be-target
* Name 0..1 Element "NAME (.01)"

Logical: PersonClass89321
Id: PersonClass89321
Title: "PERSON CLASS (8932.1)"
Characteristics: #can-be-target
* X12Code 0..1 Element "X12 CODE (6)"

Logical: Provider441
Id: Provider441
Title: "PROVIDER (44.1)"
Characteristics: #can-be-target
* Provider 0..1 Element "PROVIDER (.01)"

Logical: ProviderNarrative999999927
Id: ProviderNarrative999999927
Title: "PROVIDER NARRATIVE (9999999.27)"
Characteristics: #can-be-target
* Narrative 0..1 Element "NARRATIVE (.01)"

Logical: Examinations7003
Id: Examinations7003
Title: "EXAMINATIONS (70.03)"
Characteristics: #can-be-target
* ExamStatus 0..1 Reference "EXAM STATUS (3)"
* ReasonForCancellation 0..1 Reference "REASON FOR CANCELLATION (3.5)"
* Procedure 0..1 Reference "PROCEDURE (2)"
* Visit 0..1 Element "VISIT (27)"
* PrimaryInterpretingStaff 0..1 Element "PRIMARY INTERPRETING STAFF (15)"
* ExamStatus only Reference(ExaminationStatus72)
* ReasonForCancellation only Reference(RadnucMedReason752)
* Procedure only Reference(RadnucMedProcedures71)

Logical: RadnucMedReason752
Id: RadnucMedReason752
Title: "RAD/NUC MED REASON (75.2)"
Characteristics: #can-be-target
* Reason 0..1 Element "REASON (.01)"

Logical: RegisteredExams7002
Id: RegisteredExams7002
Title: "REGISTERED EXAMS (70.02)"
Characteristics: #can-be-target
* TypeOfImaging 0..1 Reference "TYPE OF IMAGING (2)"
* ExamDate 0..1 Element "EXAM DATE (.01)"
* ImagingLocation 0..1 Reference "IMAGING LOCATION (4)"
* Examinations 0..1 Element "EXAMINATIONS (50)"
* TypeOfImaging only Reference(ImagingType792)
* ImagingLocation only Reference(ImagingLocations791)

Logical: ImagingType792
Id: ImagingType792
Title: "IMAGING TYPE (79.2)"
Characteristics: #can-be-target
* TypeOfImaging 0..1 Element "TYPE OF IMAGING (.01)"

Logical: ImagingLocations791
Id: ImagingLocations791
Title: "IMAGING LOCATIONS (79.1)"
Characteristics: #can-be-target
* Location 0..1 Element "LOCATION (.01)"

Logical: VHealthFactors900001023
Id: VHealthFactors900001023
Title: "V HEALTH FACTORS (9000010.23)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* PatientName 0..1 Element "PATIENT NAME (.02)"
* Visit 0..1 Element "VISIT (.03)"
* EventDateAndTime 0..1 Element "EVENT DATE AND TIME (1201)"
* EncounterProvider 0..1 Element "ENCOUNTER PROVIDER (1204)"
* HealthFactor 0..1 Element "HEALTH FACTOR (.01)"
* Comments 0..1 Element "COMMENTS (81101)"

Logical: HealthFactors999999964
Id: HealthFactors999999964
Title: "HEALTH FACTORS (9999999.64)"
Characteristics: #can-be-target
* Category 0..1 Element "CATEGORY (.03)"

Logical: Findings69106
Id: Findings69106
Title: "FINDINGS (691.06)"
Characteristics: #can-be-target
* Findings 0..1 Element "FINDINGS (.01)"

Logical: ElectrocardiogramEkg6915
Id: ElectrocardiogramEkg6915
Title: "ELECTROCARDIOGRAM (EKG) (691.5)"
Characteristics: #can-be-target
* Ien 0..1 Element "IEN (.001)"
* ReleaseStatus 0..1 Element "RELEASE STATUS (1506)"
* MedicalPatient 0..1 Element "MEDICAL PATIENT (1)"
* Datetime 0..1 Element "DATE/TIME (.01)"
* DateOfVerified 0..1 Element "DATE OF VERIFIED (1508)"
* InterpretedBy 0..1 Element "INTERPRETED BY (12)"
* InterpretationCodeRhythm 0..1 Reference "INTERPRETATION CODE (RHYTHM) (14)"
* InterpretationCodeConfig 0..1 Reference "INTERPRETATION CODE (CONFIG) (14.1)"
* InterpretationCodePacing 0..1 Reference "INTERPRETATION CODE (PACING) (14.2)"
* Summary 0..1 Element "SUMMARY (.03)"
* Comment 0..1 Element "COMMENT (.03)"
* InterpretationCodeRhythm only Reference(InterpretationCodeRhythm69154)
* InterpretationCodeConfig only Reference(InterpretationCodeConfig69155)
* InterpretationCodePacing only Reference(InterpretationCodePacing69156)

Logical: InterpretationCodeRhythm69154
Id: InterpretationCodeRhythm69154
Title: "INTERPRETATION CODE (RHYTHM) (691.54)"
Characteristics: #can-be-target
* InterpretationCodeRhythm 0..1 Reference "INTERPRETATION CODE (RHYTHM) (.01)"
* InterpretationCodeRhythm only Reference(EcgInterpretation6933)

Logical: EcgInterpretation6933
Id: EcgInterpretation6933
Title: "ECG INTERPRETATION (693.3)"
Characteristics: #can-be-target
* Interpretation 0..1 Element "INTERPRETATION (.01)"

Logical: InterpretationCodeConfig69155
Id: InterpretationCodeConfig69155
Title: "INTERPRETATION CODE (CONFIG) (691.55)"
Characteristics: #can-be-target
* InterpretationCodeConfig 0..1 Reference "INTERPRETATION CODE (CONFIG) (.01)"
* InterpretationCodeConfig only Reference(EcgInterpretation6933)

Logical: InterpretationCodePacing69156
Id: InterpretationCodePacing69156
Title: "INTERPRETATION CODE (PACING) (691.56)"
Characteristics: #can-be-target
* InterpretationCodePacing 0..1 Reference "INTERPRETATION CODE (PACING) (.01)"
* InterpretationCodePacing only Reference(EcgInterpretation6933)

Logical: ImpressionText7403
Id: ImpressionText7403
Title: "IMPRESSION TEXT (74.03)"
Characteristics: #can-be-target
* ImpressionText 0..1 Element "IMPRESSION TEXT (.01)"