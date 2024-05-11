Logical: Patient2
Id: Patient2
Title: "PATIENT (2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PATIENT (2)"
Characteristics: #can-be-target
* integrationControlNumber 0..1 Element "INTEGRATION CONTROL NUMBER (-991.01)"
* name 0..1 Element "NAME (-.01)"
* phoneNumberResidence 0..1 Element "PHONE NUMBER [RESIDENCE] (-.131)"
* phoneNumberWork 0..1 Element "PHONE NUMBER [WORK] (-.132)"
* phoneNumberCellular 0..1 Element "PHONE NUMBER [CELLULAR] (-.134)"
* dateOfBirth 0..1 Element "DATE OF BIRTH (-.03)"
* dateOfDeath 0..1 Element "DATE OF DEATH (-.351)"
* streetAddressLine1 0..1 Element "STREET ADDRESS [LINE 1] (-.111)"
* streetAddressLine2 0..1 Element "STREET ADDRESS [LINE 2] (-.112)"
* streetAddressLine3 0..1 Element "STREET ADDRESS [LINE 3] (-.113)"
* city 0..1 Element "CITY (-.114)"
* state 0..1 Element "STATE (-.115)"
* zip4 0..1 Element "ZIP+4 (-.1112)"
* country 0..1 Element "COUNTRY (-.1173)"
* temporaryAddressStartDate 0..1 Element "TEMPORARY ADDRESS START DATE (-.1217)"
* temporaryAddressEndDate 0..1 Element "TEMPORARY ADDRESS END DATE (-.1218)"
* languageDatetime 0..1 Reference "LANGUAGE DATE/TIME (-7)"
* sex 0..1 Coding "SEX (-.02)"
* sex from http://va.gov/fhir/ValueSet/VSVFbirthSex-vista (preferred)
* selfIdentifiedGender 0..1 Coding "SELF IDENTIFIED GENDER (-.024)"
* selfIdentifiedGender from http://va.gov/fhir/ValueSet/VSVFgenderIdentity-vista (preferred)
* ethnicityInformation 0..1 Coding "ETHNICITY INFORMATION (-6)"
* ethnicityInformation from http://va.gov/fhir/ValueSet/VSVFethnicityCategory-vista (preferred)
* raceInformation 0..1 Coding "RACE INFORMATION (-2)"
* raceInformation from http://va.gov/fhir/ValueSet/VSVFraceCategory-vista (preferred)
* maritalStatus 0..1 Coding "MARITAL STATUS (-.05)"
* maritalStatus from http://va.gov/fhir/ValueSet/VSVFMaritalStatus-vista (preferred)
* religiousPreference 0..1 Coding "RELIGIOUS PREFERENCE (-.08)"
* religiousPreference from http://va.gov/fhir/ValueSet/VSVFReligion-vista (preferred)
* appointment 0..1 Element "APPOINTMENT (-1900)"
* laboratoryReference 0..1 Reference "LABORATORY REFERENCE (-63)"
* languageDatetime only Reference(LanguageDatetime207)
* laboratoryReference only Reference(LabData63)

Logical: Institution4
Id: Institution4
Title: "INSTITUTION (4)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file INSTITUTION (4)"
Characteristics: #can-be-target
* stationNumber 0..1 Element "STATION NUMBER (-99)"
* name 0..1 Element "NAME (-.01)"
* state 0..1 Reference "STATE (-.02)"
* district 0..1 Element "DISTRICT (-.03)"
* streetAddr1 0..1 Element "STREET ADDR. 1 (-1.01)"
* streetAddr2 0..1 Element "STREET ADDR. 2 (-1.02)"
* city 0..1 Element "CITY (-1.03)"
* zip 0..1 Element "ZIP (-1.04)"
* country 0..1 Reference "COUNTRY (-801)"
* npi 0..1 Element "NPI (-41.99)"
* shortName 0..1 Element "SHORT NAME (-.05)"
* contact 0..1 Reference "CONTACT (-4)"
* stAddr1Mailing 0..1 Element "ST. ADDR. 1 (MAILING) (-4.01)"
* stAddr2Mailing 0..1 Element "ST. ADDR. 2 (MAILING) (-4.02)"
* cityMailing 0..1 Element "CITY (MAILING) (-4.03)"
* stateMailing 0..1 Element "STATE (MAILING) (-4.04)"
* zipMailing 0..1 Element "ZIP (MAILING) (-4.05)"
* state only Reference(State5)
* country only Reference(CountryCode779004)
* contact only Reference(Contact403)

Logical: State5
Id: State5
Title: "STATE (5)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file STATE (5)"
Characteristics: #can-be-target
* abbreviation 0..1 Element "ABBREVIATION (-1)"

Logical: NameComponents20
Id: NameComponents20
Title: "NAME COMPONENTS (20)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file NAME COMPONENTS (20)"
Characteristics: #can-be-target

Logical: HospitalLocation44
Id: HospitalLocation44
Title: "HOSPITAL LOCATION (44)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file HOSPITAL LOCATION (44)"
Characteristics: #can-be-target
* service 0..1 Coding "SERVICE (-9)"
* service from http://va.gov/fhir/ValueSet/VSVFLocationStatus-vista (preferred)
* stopCodeNumber 0..1 Element "STOP CODE NUMBER (-8)"
* creditStopCode 0..1 Element "CREDIT STOP CODE (-2503)"
* type 0..1 Element "TYPE (-2)"
* ien 0..1 Element "IEN (-.001)"
* name 0..1 Element "NAME (-.01)"
* abbreviation 0..1 Element "ABBREVIATION (-1)"
* synonym 0..1 Element "SYNONYM (-13)"
* patientFriendlyName 0..1 Element "PATIENT FRIENDLY NAME (-60)"
* telephone 0..1 Element "TELEPHONE (-99)"
* physicalLocation 0..1 Element "PHYSICAL LOCATION (-10)"
* institution 0..1 Reference "INSTITUTION (-3)"
* institution only Reference(Institution4)

Logical: Ptf45
Id: Ptf45
Title: "PTF (45)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PTF (45)"
Characteristics: #can-be-target
* number 0..1 Element "NUMBER (-.001)"
* internalAdmission  0..1 Element "INTERNAL ADMISSION # (-2.1)"
* admissionDate 0..1 Element "ADMISSION DATE (-2)"
* dischargeDate 0..1 Element "DISCHARGE DATE (-70)"
* patient 0..1 Element "PATIENT (-.01)"
* provider 0..1 Element "PROVIDER (-79.1)"
* principalDiagnosis 0..1 Element "PRINCIPAL DIAGNOSIS (-79)"
* secondaryDiagnosis  0..1 Element "SECONDARY DIAGNOSIS [#] (-79.16)"
* procedure  0..1 Element "PROCEDURE [#] (-45.01)"
* sourceOfAdmission 0..1 Reference "SOURCE OF ADMISSION (-20)"
* transferringFacility 0..1 Element "TRANSFERRING FACILITY (-21.1)"
* receivingFacility 0..1 Element "RECEIVING FACILITY (-76.1)"
* placeOfDisposition 0..1 Element "PLACE OF DISPOSITION (-75)"
* wardAtDischarge 0..1 Element "WARD AT DISCHARGE (-2.2)"
* facility 0..1 Element "FACILITY (-3)"
* sourceOfAdmission only Reference(SourceOfAdmission451)

Logical: InpatientCptCode46
Id: InpatientCptCode46
Title: "INPATIENT CPT CODE (46)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file INPATIENT CPT CODE (46)"
Characteristics: #can-be-target
* cptCode 0..1 Element "CPT CODE (-.01)"

Logical: Drug50
Id: Drug50
Title: "DRUG (50)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file DRUG (50)"
Characteristics: #can-be-target
* psndfVaProductNameEntry 0..1 Reference "PSNDF VA PRODUCT NAME ENTRY (-22)"
* nationalDrugFileEntry 0..1 Reference "NATIONAL DRUG FILE ENTRY (-20)"
* genericName 0..1 Element "GENERIC NAME (-.01)"
* psndfVaProductNameEntry only Reference(VaProduct5068)
* nationalDrugFileEntry only Reference(VaGeneric506)

Logical: Prescription52
Id: Prescription52
Title: "PRESCRIPTION (52)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PRESCRIPTION (52)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* status 0..1 Coding "STATUS (-100)"
* status from http://va.gov/fhir/ValueSet/VSVFOutMedRequestStatus-vista (preferred)
* drug 0..1 Reference "DRUG (-6)"
* patient 0..1 Element "PATIENT (-2)"
* issueDate 0..1 Element "ISSUE DATE (-1)"
* provider 0..1 Element "PROVIDER (-4)"
* sig 0..1 Element "SIG (-10)"
* patientInstructions 0..1 Element "PATIENT INSTRUCTIONS (-114)"
* medicationInstructions 0..1 Reference "MEDICATION INSTRUCTIONS (-113)"
* expirationDate 0..1 Element "EXPIRATION DATE (-26)"
* cancelDate 0..1 Element "CANCEL DATE (-26.1)"
* qty 0..1 Element "QTY (-7)"
* daysSupply 0..1 Element "DAYS SUPPLY (-8)"
* rx  0..1 Element "RX # (-.01)"
* indicationForUse 0..1 Element "INDICATION FOR USE (-128)"
* indicationForUseFlag 0..1 Element "INDICATION FOR USE FLAG (-129)"
* mailwindowpark 0..1 Element "MAIL/WINDOW/PARK (-11)"
* clinic 0..1 Element "CLINIC (-5)"
* placerOrder  0..1 Element "PLACER ORDER # (-39.3)"
* releasedDatetime 0..1 Element "RELEASED DATE/TIME (-31)"
* division 0..1 Element "DIVISION (-20)"
* remarks 0..1 Element "REMARKS (-12)"
* refill 0..1 Reference "REFILL (-52)"
* partialDate 0..1 Reference "PARTIAL DATE (-60)"
* drug only Reference(Drug50)
* medicationInstructions only Reference(MedicationInstructions520113)
* refill only Reference(Refill521)
* partialDate only Reference(PartialDate522)

Logical: LaboratoryTest60
Id: LaboratoryTest60
Title: "LABORATORY TEST (60)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file LABORATORY TEST (60)"
Characteristics: #can-be-target
* nationalVaLabCode 0..1 Reference "NATIONAL VA LAB CODE (-64)"
* name 0..1 Element "NAME (-.01)"
* sitespecimen 0..1 Reference "SITE/SPECIMEN (-100)"
* nationalVaLabCode only Reference(WkldCode64)
* sitespecimen only Reference(Sitespecimen6001)

Logical: CollectionSample62
Id: CollectionSample62
Title: "COLLECTION SAMPLE (62)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file COLLECTION SAMPLE (62)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: LabData63
Id: LabData63
Title: "LAB DATA (63)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file LAB DATA (63)"
Characteristics: #can-be-target
* lrdfn 0..1 Element "LRDFN (-.01)"

Logical: WkldCode64
Id: WkldCode64
Title: "WKLD CODE (64)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file WKLD CODE (64)"
Characteristics: #can-be-target
* wkldCodeLabSection 0..1 Reference "WKLD CODE LAB SECTION (-13)"
* defaultLoincCode 0..1 Element "DEFAULT LOINC CODE (-25)"
* wkldCodeLabSection only Reference(WkldCodeLabSect6421)

Logical: RadnucMedPatient70
Id: RadnucMedPatient70
Title: "RAD/NUC MED PATIENT (70)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file RAD/NUC MED PATIENT (70)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: RadnucMedProcedures71
Id: RadnucMedProcedures71
Title: "RAD/NUC MED PROCEDURES (71)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file RAD/NUC MED PROCEDURES (71)"
Characteristics: #can-be-target
* cptCode 0..1 Element "CPT CODE (-9)"

Logical: ExaminationStatus72
Id: ExaminationStatus72
Title: "EXAMINATION STATUS (72)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file EXAMINATION STATUS (72)"
Characteristics: #can-be-target
* status 0..1 Coding "STATUS (-.01)"
* status from http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus-vista (preferred)

Logical: RadnucMedReports74
Id: RadnucMedReports74
Title: "RAD/NUC MED REPORTS (74)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file RAD/NUC MED REPORTS (74)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* reportStatus 0..1 Coding "REPORT STATUS (-5)"
* reportStatus from http://va.gov/fhir/ValueSet/VSVFImageStatusRadNuc-vista (preferred)
* patientName 0..1 Element "PATIENT NAME (-2)"
* examDatetime 0..1 Element "EXAM DATE/TIME (-3)"
* verifiedDate 0..1 Element "VERIFIED DATE (-7)"
* verifyingPhysician 0..1 Element "VERIFYING PHYSICIAN (-9)"
* impressionText 0..1 Element "IMPRESSION TEXT (-300)"

Logical: IcdDiagnosis80
Id: IcdDiagnosis80
Title: "ICD DIAGNOSIS (80)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ICD DIAGNOSIS (80)"
Characteristics: #can-be-target
* codeNumber 0..1 Element "CODE NUMBER (-.01)"

Logical: Cpt81
Id: Cpt81
Title: "CPT (81)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CPT (81)"
Characteristics: #can-be-target

Logical: Order100
Id: Order100
Title: "ORDER (100)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDER (100)"
Characteristics: #can-be-target
* order  0..1 Element "ORDER # (-.01)"
* objectOfOrder 0..1 Element "OBJECT OF ORDER (-.02)"
* currentAgentprovider 0..1 Element "CURRENT AGENT/PROVIDER (-1)"
* whenEntered 0..1 Element "WHEN ENTERED (-4)"
* replacedOrder 0..1 Element "REPLACED ORDER (-9)"
* startDate 0..1 Element "START DATE (-21)"
* stopDate 0..1 Element "STOP DATE (-22)"
* itemOrdered 0..1 Element "ITEM ORDERED (-7)"

Logical: Surgery130
Id: Surgery130
Title: "SURGERY (130)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SURGERY (130)"
Characteristics: #can-be-target
* patient 0..1 Element "PATIENT (-.01)"
* division 0..1 Element "DIVISION (-50)"
* visit 0..1 Element "VISIT (-.015)"
* dateOfOperation 0..1 Element "DATE OF OPERATION (-.09)"
* generalComments 0..1 Element "GENERAL COMMENTS (-.28)"
* principalPreopDiagnosis 0..1 Element "PRINCIPAL PRE-OP DIAGNOSIS (-32)"
* timeProcedureBegan 0..1 Element "TIME PROCEDURE BEGAN (-121)"
* timeProcedureEnded 0..1 Element "TIME PROCEDURE ENDED (-122)"
* timeOperationBegan 0..1 Element "TIME OPERATION BEGAN (-.22)"
* timeOperationEnds 0..1 Element "TIME OPERATION ENDS (-.23)"
* nonorLocation 0..1 Element "NON-OR LOCATION (-119)"
* opRoomProcedurePerformed 0..1 Element "OP ROOM PROCEDURE PERFORMED (-.02)"
* stomaComplications 0..1 Element "STOMA COMPLICATIONS (-688)"
* myocardialInfarction 0..1 Element "MYOCARDIAL INFARCTION (-258)"
* perfusionist 0..1 Element "PERFUSIONIST (-.167)"
* primarySurgeon 0..1 Element "PRIMARY SURGEON (-.14)"
* firstAsst 0..1 Element "FIRST ASST (-.15)"
* secondAsst 0..1 Element "SECOND ASST (-.16)"
* attendingSurgeon 0..1 Element "ATTENDING SURGEON (-.164)"
* asstPerfusionist 0..1 Element "ASST PERFUSIONIST (-.168)"
* skinPreppedBy1 0..1 Element "SKIN PREPPED BY (1) (-.18)"
* princAnesthetist 0..1 Element "PRINC ANESTHETIST (-.31)"
* reliefAnesthetist 0..1 Element "RELIEF ANESTHETIST (-.32)"
* asstAnesthetist 0..1 Element "ASST ANESTHETIST (-.33)"
* anesthesiologistSupvr 0..1 Element "ANESTHESIOLOGIST SUPVR (-.34)"
* verifier 0..1 Element "VERIFIER (-.522)"
* provider 0..1 Element "PROVIDER (-123)"
* foleyCatheterInsertedBy 0..1 Element "FOLEY CATHETER INSERTED BY (-.57)"
* principalProcedure 0..1 Element "PRINCIPAL PROCEDURE (-26)"
* plannedPrinProcedureCode 0..1 Element "PLANNED PRIN PROCEDURE CODE (-27)"

Logical: NewPerson200
Id: NewPerson200
Title: "NEW PERSON (200)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file NEW PERSON (200)"
Characteristics: #can-be-target
* npi 0..1 Element "NPI (-41.99)"
* dea 0..1 Element "DEA# (-53.2)"
* va 0..1 Element "VA# (-53.3)"
* vpid 0..1 Element "VPID (-9000)"
* effectiveDatetime 0..1 Element "EFFECTIVE DATE/TIME (-42)"
* nameComponents 0..1 Reference "NAME COMPONENTS (-10.1)"
* phoneHome 0..1 Element "PHONE (HOME) (-.131)"
* dob 0..1 Element "DOB (-5)"
* degree 0..1 Element "DEGREE (-10.6)"
* ien 0..1 Element "IEN (-.001)"
* streetAddress1 0..1 Element "STREET ADDRESS 1 (-.111)"
* streetAddress2 0..1 Element "STREET ADDRESS 2 (-.112)"
* streetAddress3 0..1 Element "STREET ADDRESS 3 (-.113)"
* city 0..1 Element "CITY (-.114)"
* state 0..1 Element "STATE (-.115)"
* zipCode 0..1 Element "ZIP CODE (-.116)"
* temporaryAddress1 0..1 Element "TEMPORARY ADDRESS 1 (-.1211)"
* temporaryAddress2 0..1 Element "TEMPORARY ADDRESS 2 (-.1212)"
* temporaryAddress3 0..1 Element "TEMPORARY ADDRESS 3 (-.1213)"
* temporaryCity 0..1 Element "TEMPORARY CITY (-.1214)"
* temporaryState 0..1 Element "TEMPORARY STATE (-.1215)"
* temporaryZipCode 0..1 Element "TEMPORARY ZIP CODE (-.1216)"
* startDateOfTempAddres 0..1 Element "START DATE OF TEMP ADDRES (-.1217)"
* endDateOfTempAddress 0..1 Element "END DATE OF TEMP ADDRESS (-.1218)"
* sex 0..1 Coding "SEX (-4)"
* sex from http://va.gov/fhir/ValueSet/VSVFproviderGender-vista (preferred)
* officePhone 0..1 Element "OFFICE PHONE (-.132)"
* phone3 0..1 Element "PHONE #3 (-.133)"
* phone4 0..1 Element "PHONE #4 (-.134)"
* commercialPhone 0..1 Element "COMMERCIAL PHONE (-.135)"
* faxNumber 0..1 Element "FAX NUMBER (-.136)"
* voicePager 0..1 Element "VOICE PAGER (-.137)"
* digitalPager 0..1 Element "DIGITAL PAGER (-.138)"
* emailAddress 0..1 Element "EMAIL ADDRESS (-.151)"
* personClass 0..1 Reference "PERSON CLASS (-8932.1)"
* name 0..1 Element "NAME (-.01)"
* signatureBlockTitle 0..1 Element "SIGNATURE BLOCK TITLE (-20.3)"
* title 0..1 Reference "TITLE (-8)"
* division 0..1 Element "DIVISION (-16)"
* nameComponents only Reference(NameComponents20)
* personClass only Reference(PersonClass20005)
* title only Reference(Title31)

Logical: ArDebtor340
Id: ArDebtor340
Title: "AR DEBTOR (340)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file AR DEBTOR (340)"
Characteristics: #can-be-target
* debtor 0..1 Element "DEBTOR (-.01)"
* streetAddress1 0..1 Element "STREET ADDRESS #1 (-1.01)"
* streetAddress2 0..1 Element "STREET ADDRESS #2 (-1.02)"
* streetAddress3 0..1 Element "STREET ADDRESS #3 (-1.03)"
* city 0..1 Element "CITY (-1.04)"
* state 0..1 Element "STATE (-1.05)"
* zipCode 0..1 Element "ZIP CODE (-1.06)"
* phoneNumber 0..1 Element "PHONE NUMBER (-1.07)"
* foreignCountryCode 0..1 Element "FOREIGN COUNTRY CODE (-1.08)"

Logical: Echo691
Id: Echo691
Title: "ECHO (691)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ECHO (691)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* releaseCode 0..1 Coding "RELEASE CODE (-1506)"
* releaseCode from http://va.gov/fhir/ValueSet/VSVFImageStatus-vista (preferred)
* medicalPatient 0..1 Element "MEDICAL PATIENT (-1)"
* datetime 0..1 Element "DATE/TIME (-.01)"
* dateOfVerified 0..1 Element "DATE OF VERIFIED (-1508)"
* cardiologyAttending 0..1 Element "CARDIOLOGY ATTENDING (-39)"
* findings 0..1 Reference "FINDINGS (-37)"
* summary 0..1 Coding "SUMMARY (-.03)"
* summary from http://va.gov/fhir/ValueSet/VSVFImageInterpretation-vista (preferred)
* otherConclusion 0..1 Element "OTHER CONCLUSION (-38)"
* findings only Reference(Findings69106)

Logical: GeneratorImplant698
Id: GeneratorImplant698
Title: "GENERATOR IMPLANT (698)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file GENERATOR IMPLANT (698)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* explantDate 0..1 Element "EXPLANT DATE (-96)"
* pacemakerManufacturer 0..1 Reference "PACEMAKER MANUFACTURER (-3)"
* pacemakerSerialNumber 0..1 Element "PACEMAKER SERIAL NUMBER (-4)"
* pacemakerModel 0..1 Reference "PACEMAKER MODEL (-2)"
* medicalPatient 0..1 Element "MEDICAL PATIENT (-1)"
* transmitterManufacturer 0..1 Reference "TRANSMITTER MANUFACTURER (-13)"
* transmitterModel 0..1 Reference "TRANSMITTER MODEL (-12)"
* pacemakerManufacturer only Reference(PacemakerManufacturer6986)
* pacemakerModel only Reference(PacemakerEquipment6984)
* transmitterManufacturer only Reference(PacemakerManufacturer6986)
* transmitterModel only Reference(PacemakerEquipment6984)

Logical: TiuDocument8925
Id: TiuDocument8925
Title: "TIU DOCUMENT (8925)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU DOCUMENT (8925)"
Characteristics: #can-be-target
* reportText 0..1 Element "REPORT TEXT (-2)"
* documentType 0..1 Reference "DOCUMENT TYPE (-.01)"
* ien 0..1 Element "IEN (-.001)"
* patient 0..1 Element "PATIENT (-.02)"
* entryDatetime 0..1 Element "ENTRY DATE/TIME (-1201)"
* authordictator 0..1 Element "AUTHOR/DICTATOR (-1202)"
* signedBy 0..1 Element "SIGNED BY (-1502)"
* verifiedBy 0..1 Element "VERIFIED BY (-1306)"
* division 0..1 Element "DIVISION (-1212)"
* subjectOptionalDescription 0..1 Element "SUBJECT (OPTIONAL description) (-1701)"
* visit 0..1 Element "VISIT (-.03)"
* visitType 0..1 Element "VISIT TYPE (-.13)"
* episodeBeginDatetime 0..1 Element "EPISODE BEGIN DATE/TIME (-.07)"
* episodeEndDatetime 0..1 Element "EPISODE END DATE/TIME (-.08)"
* hospitalLocation 0..1 Reference "HOSPITAL LOCATION (-1205)"
* treatingSpecialty 0..1 Element "TREATING SPECIALTY (-1402)"
* documentType only Reference(TiuDocumentDefinition89251)
* hospitalLocation only Reference(HospitalLocation44)

Logical: Patientihs9000001
Id: Patientihs9000001
Title: "PATIENT/IHS (9000001)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PATIENT/IHS (9000001)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: Visit9000010
Id: Visit9000010
Title: "VISIT (9000010)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file VISIT (9000010)"
Characteristics: #can-be-target
* visitadmitDatetime 0..1 Element "VISIT/ADMIT DATE&TIME (-.01)"
* visitId 0..1 Element "VISIT ID (-15001)"
* checkOutDatetime 0..1 Element "CHECK OUT DATE&TIME (-.18)"
* serviceCategory 0..1 Element "SERVICE CATEGORY (-.07)"
* patientName 0..1 Element "PATIENT NAME (-.05)"
* dssId 0..1 Element "DSS ID (-.08)"
* hospitalLocation 0..1 Element "HOSPITAL LOCATION (-.22)"
* patientStatusInout 0..1 Coding "PATIENT STATUS IN/OUT (-15002)"
* patientStatusInout from http://va.gov/fhir/ValueSet/VSVFencounterClass-vista (preferred)
* locOfEncounter 0..1 Reference "LOC. OF ENCOUNTER (-.06)"
* locOfEncounter only Reference(Location999999906)

Logical: Problem9000011
Id: Problem9000011
Title: "PROBLEM (9000011)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PROBLEM (9000011)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* dateResolved 0..1 Element "DATE RESOLVED (-1.07)"
* diagnosis 0..1 Element "DIAGNOSIS (-.01)"
* snomedCtConceptCode 0..1 Element "SNOMED CT CONCEPT CODE (-80001)"
* providerNarrative 0..1 Element "PROVIDER NARRATIVE (-.05)"
* patientName 0..1 Element "PATIENT NAME (-.02)"
* dateOfOnset 0..1 Element "DATE OF ONSET (-.13)"
* dateEntered 0..1 Element "DATE ENTERED (-.08)"
* recordingProvider 0..1 Element "RECORDING PROVIDER (-1.04)"
* status 0..1 Coding "STATUS (-.12)"
* status from http://va.gov/fhir/ValueSet/VSVFproblemStatus-vista (preferred)
* condition 0..1 Coding "CONDITION (-1.02)"
* condition from http://va.gov/fhir/ValueSet/VSVFproblemVerificationStatus-vista (preferred)

Logical: PatientAllergies1208
Id: PatientAllergies1208
Title: "PATIENT ALLERGIES (120.8)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PATIENT ALLERGIES (120.8)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* reactant 0..1 Element "REACTANT (-.02)"
* gmrAllergy 0..1 Element "GMR ALLERGY (-1)"
* patient 0..1 Element "PATIENT (-.01)"
* originationDatetime 0..1 Element "ORIGINATION DATE/TIME (-4)"
* originator 0..1 Element "ORIGINATOR (-5)"
* mechanism 0..1 Coding "MECHANISM (-17)"
* mechanism from http://va.gov/fhir/ValueSet/VSVFallergyMechanism-vista (preferred)
* verified 0..1 Coding "VERIFIED (-19)"
* verified from http://va.gov/fhir/ValueSet/VSVFallergyVerificationStatus-vista (preferred)
* enteredInError 0..1 Coding "ENTERED IN ERROR (-22)"
* enteredInError from http://va.gov/fhir/ValueSet/VSVFallergyEnteredInError-vista (preferred)
* allergyType 0..1 Coding "ALLERGY TYPE (-3.1)"
* allergyType from http://va.gov/fhir/ValueSet/VSVFallergySubstanceCategory-vista (preferred)
* comments 0..1 Reference "COMMENTS (-26)"
* drugIngredients 0..1 Element "DRUG INGREDIENTS (-2)"
* reactions 0..1 Reference "REACTIONS (-10)"
* comments only Reference(Comments120826)
* reactions only Reference(Reactions12081)

Logical: Reactions12081
Id: Reactions12081
Title: "REACTIONS (120.81)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file REACTIONS (120.81)"
Characteristics: #can-be-target
* reaction 0..1 Element "REACTION (-.01)"
* dateEntered 0..1 Element "DATE ENTERED (-3)"

Logical: Signsymptoms12083
Id: Signsymptoms12083
Title: "SIGN/SYMPTOMS (120.83)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SIGN/SYMPTOMS (120.83)"
Characteristics: #can-be-target

Logical: AdverseReactionReporting12085
Id: AdverseReactionReporting12085
Title: "ADVERSE REACTION REPORTING (120.85)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ADVERSE REACTION REPORTING (120.85)"
Characteristics: #can-be-target
* severity 0..1 Coding "SEVERITY (-14.5)"
* severity from http://va.gov/fhir/ValueSet/VSVFallergySeverity-vista (preferred)

Logical: Comments120826
Id: Comments120826
Title: "COMMENTS (120.826)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file COMMENTS (120.826)"
Characteristics: #can-be-target
* datetimeCommentEntered 0..1 Element "DATE/TIME COMMENT ENTERED (-.01)"
* userEntering 0..1 Element "USER ENTERING (-1)"
* comments 0..1 Element "COMMENTS (-2)"

Logical: LanguageDatetime207
Id: LanguageDatetime207
Title: "LANGUAGE DATE/TIME (2.07)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file LANGUAGE DATE/TIME (2.07)"
Characteristics: #can-be-target
* preferredLanguage 0..1 Element "PREFERRED LANGUAGE (-.02)"

Logical: Appointment298
Id: Appointment298
Title: "APPOINTMENT (2.98)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file APPOINTMENT (2.98)"
Characteristics: #can-be-target
* status 0..1 Coding "STATUS (-3)"
* status from http://va.gov/fhir/ValueSet/VSVFAppointmentStatus-vista (preferred)
* cancellationReason 0..1 Coding "CANCELLATION REASON (-16)"
* cancellationReason from http://va.gov/fhir/ValueSet/VSVFAppointmentCancellationReason-vista (preferred)
* clinic 0..1 Reference "CLINIC (-.01)"
* appointmentType 0..1 Reference "APPOINTMENT TYPE (-9.5)"
* appointmentDatetime 0..1 Element "APPOINTMENT DATE/TIME (-.001)"
* outpatientEncounter 0..1 Reference "OUTPATIENT ENCOUNTER (-21)"
* dateApptMade 0..1 Element "DATE APPT. MADE (-20)"
* clinic only Reference(HospitalLocation44)
* appointmentType only Reference(AppointmentType4091)
* outpatientEncounter only Reference(OutpatientEncounter40968)

Logical: AppointmentType4091
Id: AppointmentType4091
Title: "APPOINTMENT TYPE (409.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file APPOINTMENT TYPE (409.1)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: OutpatientEncounter40968
Id: OutpatientEncounter40968
Title: "OUTPATIENT ENCOUNTER (409.68)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file OUTPATIENT ENCOUNTER (409.68)"
Characteristics: #can-be-target
* checkOutProcessCompletion 0..1 Element "CHECK OUT PROCESS COMPLETION (-.07)"

Logical: Patient44003
Id: Patient44003
Title: "PATIENT (44.003)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PATIENT (44.003)"
Characteristics: #can-be-target
* lengthOfAppt 0..1 Element "LENGTH OF APP'T (-1)"

Logical: SdWaitList4093
Id: SdWaitList4093
Title: "SD WAIT LIST (409.3)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SD WAIT LIST (409.3)"
Characteristics: #can-be-target
* patient 0..1 Element "PATIENT (-.01)"
* apptStopCode 0..1 Element "APPT STOP CODE (-13.4)"
* desiredDateOfAppointment 0..1 Element "DESIRED DATE OF APPOINTMENT (-22)"
* originatingDate 0..1 Element "ORIGINATING DATE (-1)"
* comments 0..1 Element "COMMENTS (-25)"
* apptClinic 0..1 Element "APPT CLINIC (-13.2)"

Logical: VPov900001007
Id: VPov900001007
Title: "V POV (9000010.07)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V POV (9000010.07)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* pov 0..1 Reference "POV (-.01)"
* patientName 0..1 Element "PATIENT NAME (-.02)"
* visit 0..1 Reference "VISIT (-.03)"
* dateOfInjury 0..1 Element "DATE OF INJURY (-.13)"
* modifier 0..1 Coding "MODIFIER (-.06)"
* modifier from http://va.gov/fhir/ValueSet/VSVFencounterProblemVerificationStatus-vista (preferred)
* encounterProvider 0..1 Element "ENCOUNTER PROVIDER (-1204)"
* problemListEntry 0..1 Element "PROBLEM LIST ENTRY (-.16)"
* visit only Reference(Visit9000010)
* pov only Reference(IcdDiagnosis80)

Logical: GmrvVitalMeasurement1205
Id: GmrvVitalMeasurement1205
Title: "GMRV VITAL MEASUREMENT (120.5)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file GMRV VITAL MEASUREMENT (120.5)"
Characteristics: #can-be-target
* qualifier 0..1 Reference "QUALIFIER (-5)"
* datetimeVitalsEntered 0..1 Element "DATE/TIME VITALS ENTERED (-.04)"
* hospitalLocation 0..1 Reference "HOSPITAL LOCATION (-.05)"
* reasonEnteredInError 0..1 Element "REASON ENTERED IN ERROR (-4)"
* datetimeVitalsTaken 0..1 Element "DATE/TIME VITALS TAKEN (-.01)"
* patient 0..1 Element "PATIENT (-.02)"
* ien 0..1 Element "IEN (-.001)"
* vitalType 0..1 Coding "VITAL TYPE (-.03)"
* vitalType from http://va.gov/fhir/ValueSet/VSVFVitalsCodes-vista (preferred)
* rate 0..1 Element "RATE (-1.2)"
* supplementalO2 0..1 Element "SUPPLEMENTAL O2 (-1.4)"
* qualifier only Reference(GmrvVitalQualifier12052)
* hospitalLocation only Reference(Institution4)

Logical: GmrvVitalQualifier12052
Id: GmrvVitalQualifier12052
Title: "GMRV VITAL QUALIFIER (120.52)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file GMRV VITAL QUALIFIER (120.52)"
Characteristics: #can-be-target
* vuid 0..1 Coding "VUID (-99.99)"
* vuid from http://va.gov/fhir/ValueSet/VSVFVitalsMeasurementDevice-vista (preferred)

Logical: WkldCodeLabSect6421
Id: WkldCodeLabSect6421
Title: "WKLD CODE LAB SECT (64.21)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file WKLD CODE LAB SECT (64.21)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: LabLoinc953
Id: LabLoinc953
Title: "LAB LOINC (95.3)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file LAB LOINC (95.3)"
Characteristics: #can-be-target

Logical: ChemHemToxRiaSerEtc6304
Id: ChemHemToxRiaSerEtc6304
Title: "CHEM, HEM, TOX, RIA, SER, etc. (63.04)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CHEM, HEM, TOX, RIA, SER, etc. (63.04)"
Characteristics: #can-be-target
* orderedTest 0..1 Reference "ORDERED TEST (-.35)"
* datetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (-.01)"
* dateReportCompleted 0..1 Element "DATE REPORT COMPLETED (-.03)"
* verifyPerson 0..1 Element "VERIFY PERSON (-.04)"
* accessioningInstitution 0..1 Element "ACCESSIONING INSTITUTION (-.112)"
* comment 0..1 Reference "COMMENT (-.99)"
* accession 0..1 Element "ACCESSION (-.06)"
* ien 0..1 Element "IEN (-.001)"
* testnames 0..1 Coding "testnames (-2+through+862)"
* testnames from http://va.gov/fhir/ValueSet/VSVFLabInterpretation-vista (preferred)
* orderedTest only Reference(OrderedTest6307)
* comment only Reference(Comment63041)

Logical: OrderedTest6307
Id: OrderedTest6307
Title: "ORDERED TEST (63.07)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDERED TEST (63.07)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* cprsOrder  0..1 Element "CPRS ORDER # (-3)"
* disposition 0..1 Coding "DISPOSITION (-10)"
* disposition from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* labTestOrdered 0..1 Reference "LAB TEST ORDERED (-13)"
* collectionSample 0..1 Reference "COLLECTION SAMPLE (-9)"
* labTestOrdered only Reference(LaboratoryTest60)
* collectionSample only Reference(CollectionSample62)

Logical: Comment63041
Id: Comment63041
Title: "COMMENT (63.041)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file COMMENT (63.041)"
Characteristics: #can-be-target
* comment 0..1 Element "COMMENT (-.01)"

Logical: Sitespecimen6001
Id: Sitespecimen6001
Title: "SITE/SPECIMEN (60.01)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SITE/SPECIMEN (60.01)"
Characteristics: #can-be-target
* referenceHigh 0..1 Element "REFERENCE HIGH (-2)"
* referenceLow 0..1 Element "REFERENCE LOW (-1)"
* loincCode 0..1 Element "LOINC CODE (-95.3)"
* units 0..1 Element "UNITS (-6)"

Logical: Cytopathology6309
Id: Cytopathology6309
Title: "CYTOPATHOLOGY (63.09)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CYTOPATHOLOGY (63.09)"
Characteristics: #can-be-target
* orderedTest 0..1 Reference "ORDERED TEST (-.35)"
* datetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (-.01)"
* dateReportCompleted 0..1 Element "DATE REPORT COMPLETED (-.03)"
* releasedBy 0..1 Element "RELEASED BY (-.13)"
* releasingSite 0..1 Element "RELEASING SITE (-.345)"
* pathologistcytotechnologist 0..1 Element "PATHOLOGIST/CYTOTECHNOLOGIST (-.02)"
* cytopathAcc  0..1 Element "CYTOPATH ACC # (-.06)"
* image 0..1 Element "IMAGE (-2005)"
* cytopathologyDiagnosis 0..1 Element "CYTOPATHOLOGY DIAGNOSIS (-1.4)"
* tiuReferenceDatetimeCy 0..1 Reference "TIU REFERENCE DATE/TIME - CY (-.16)"
* specimen 0..1 Reference "SPECIMEN (-.012)"
* orderedTest only Reference(OrderedTest6351)
* tiuReferenceDatetimeCy only Reference(TiuReferenceDatetime6347)
* specimen only Reference(Specimen63902)

Logical: OrderedTest6351
Id: OrderedTest6351
Title: "ORDERED TEST (63.51)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDERED TEST (63.51)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* cprsOrder  0..1 Element "CPRS ORDER # (-3)"
* disposition 0..1 Coding "DISPOSITION (-10)"
* disposition from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus-vista (preferred)

Logical: TiuReferenceDatetime6347
Id: TiuReferenceDatetime6347
Title: "TIU REFERENCE DATE/TIME (63.47)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU REFERENCE DATE/TIME (63.47)"
Characteristics: #can-be-target
* cyTiuEntryPointerCy 0..1 Reference "CY - TIU ENTRY POINTER - CY (-1)"
* cyTiuEntryPointerCy only Reference(TiuDocument8925)

Logical: TiuDocumentDefinition89251
Id: TiuDocumentDefinition89251
Title: "TIU DOCUMENT DEFINITION (8925.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU DOCUMENT DEFINITION (8925.1)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"
* vhaEnterpriseStandardTitle 0..1 Reference "VHA ENTERPRISE STANDARD TITLE (-1501)"
* vhaEnterpriseStandardTitle only Reference(TiuVhaEnterpriseStandardTitle89261)

Logical: TiuVhaEnterpriseStandardTitle89261
Id: TiuVhaEnterpriseStandardTitle89261
Title: "TIU VHA ENTERPRISE STANDARD TITLE (8926.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU VHA ENTERPRISE STANDARD TITLE (8926.1)"
Characteristics: #can-be-target
* codingSystem 0..1 Reference "CODING SYSTEM (-2)"
* documentType 0..1 Element "DOCUMENT TYPE (-.08)"
* standardTitle 0..1 Element "STANDARD TITLE (-.01)"
* codingSystem only Reference(CodingSystem892612)

Logical: CodingSystem892612
Id: CodingSystem892612
Title: "CODING SYSTEM (8926.12)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CODING SYSTEM (8926.12)"
Characteristics: #can-be-target
* code 0..1 Reference "CODE (-.02)"
* code only Reference(Code8926121)

Logical: Code8926121
Id: Code8926121
Title: "CODE (8926.121)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CODE (8926.121)"
Characteristics: #can-be-target
* code 0..1 Element "CODE (-.01)"

Logical: Specimen63902
Id: Specimen63902
Title: "SPECIMEN (63.902)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SPECIMEN (63.902)"
Characteristics: #can-be-target
* specimen 0..1 Element "SPECIMEN (-.01)"

Logical: Em6302
Id: Em6302
Title: "EM (63.02)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file EM (63.02)"
Characteristics: #can-be-target
* orderedTest 0..1 Reference "ORDERED TEST (-.35)"
* datetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (-.01)"
* dateReportCompleted 0..1 Element "DATE REPORT COMPLETED (-.03)"
* releasedBy 0..1 Element "RELEASED BY (-.13)"
* releasingSite 0..1 Element "RELEASING SITE (-.345)"
* pathologist 0..1 Element "PATHOLOGIST (-.02)"
* emAcc  0..1 Element "EM ACC # (-.06)"
* image 0..1 Element "IMAGE (-2005)"
* emDiagnosis 0..1 Element "EM DIAGNOSIS (-1.4)"
* tiuReferenceDatetimeEm 0..1 Reference "TIU REFERENCE DATE/TIME - EM (-.16)"
* specimen 0..1 Reference "SPECIMEN (-.012)"
* orderedTest only Reference(OrderedTest6352)
* tiuReferenceDatetimeEm only Reference(TiuReferenceDatetime6349)
* specimen only Reference(Specimen63202)

Logical: OrderedTest6352
Id: OrderedTest6352
Title: "ORDERED TEST (63.52)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDERED TEST (63.52)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* cprsOrder  0..1 Element "CPRS ORDER # (-3)"
* disposition 0..1 Coding "DISPOSITION (-10)"
* disposition from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus-vista (preferred)

Logical: TiuReferenceDatetime6349
Id: TiuReferenceDatetime6349
Title: "TIU REFERENCE DATE/TIME (63.49)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU REFERENCE DATE/TIME (63.49)"
Characteristics: #can-be-target
* emTiuEntryPointerEm 0..1 Reference "EM - TIU ENTRY POINTER - EM (-1)"
* emTiuEntryPointerEm only Reference(TiuDocument8925)

Logical: Specimen63202
Id: Specimen63202
Title: "SPECIMEN (63.202)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SPECIMEN (63.202)"
Characteristics: #can-be-target
* specimen 0..1 Element "SPECIMEN (-.01)"

Logical: Microbiology6305
Id: Microbiology6305
Title: "MICROBIOLOGY (63.05)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file MICROBIOLOGY (63.05)"
Characteristics: #can-be-target
* orderedTest 0..1 Reference "ORDERED TEST (-.35)"
* datetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (-.01)"
* dateReportCompleted 0..1 Element "DATE REPORT COMPLETED (-.03)"
* verifyPerson 0..1 Element "VERIFY PERSON (-.04)"
* accessioningInstitution 0..1 Element "ACCESSIONING INSTITUTION (-.112)"
* commentOnSpecimen 0..1 Element "COMMENT ON SPECIMEN (-.99)"
* organism 0..1 Reference "ORGANISM (-12)"
* microbiologyAccession 0..1 Element "MICROBIOLOGY ACCESSION (-.06)"
* ien 0..1 Element "IEN (-.001)"
* collectionSample 0..1 Reference "COLLECTION SAMPLE (-.055)"
* bactRptRemark 0..1 Reference "BACT RPT REMARK (-13)"
* bactRptStatus 0..1 Coding "BACT RPT STATUS (-11.5)"
* bactRptStatus from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* urineScreen 0..1 Element "URINE SCREEN (-11.57)"
* sputumScreen 0..1 Element "SPUTUM SCREEN (-11.58)"
* gramStain 0..1 Reference "GRAM STAIN (-11.6)"
* parasiteRptRemark 0..1 Reference "PARASITE RPT REMARK (-17)"
* parasiteRptStatus 0..1 Coding "PARASITE RPT STATUS (-15)"
* parasiteRptStatus from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* mycologyRptRemark 0..1 Reference "MYCOLOGY RPT REMARK (-21)"
* mycologyRptStatus 0..1 Coding "MYCOLOGY RPT STATUS (-19)"
* mycologyRptStatus from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* tbRptRemark 0..1 Reference "TB RPT REMARK (-27)"
* tbRptStatus 0..1 Coding "TB RPT STATUS (-23)"
* tbRptStatus from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* acidFastStain 0..1 Element "ACID FAST STAIN (-24)"
* virologyRptRemark 0..1 Reference "VIROLOGY RPT REMARK (-37)"
* virologyReportStatus 0..1 Coding "VIROLOGY REPORT STATUS (-34)"
* virologyReportStatus from http://va.gov/fhir/ValueSet/VSVFLabObservationStatus-vista (preferred)
* orderedTest only Reference(OrderedTest635)
* organism only Reference(Organism633)
* collectionSample only Reference(CollectionSample62)
* bactRptRemark only Reference(BactRptRemark6333)
* gramStain only Reference(GramStain6329)
* parasiteRptRemark only Reference(ParasiteRptRemark6336)
* mycologyRptRemark only Reference(MycologyRptRemark6338)
* tbRptRemark only Reference(TbRptRemark6341)
* virologyRptRemark only Reference(VirologyRptRemark6344)

Logical: OrderedTest635
Id: OrderedTest635
Title: "ORDERED TEST (63.5)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDERED TEST (63.5)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* cprsOrder  0..1 Element "CPRS ORDER # (-3)"
* disposition 0..1 Coding "DISPOSITION (-10)"
* disposition from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus-vista (preferred)
* labTestOrdered 0..1 Reference "LAB TEST ORDERED (-13)"
* labTestOrdered only Reference(LaboratoryTest60)

Logical: Organism633
Id: Organism633
Title: "ORGANISM (63.3)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORGANISM (63.3)"
Characteristics: #can-be-target
* comment 0..1 Reference "COMMENT (-2)"
* organism 0..1 Element "ORGANISM (-5+to+160)"
* comment only Reference(Comment6331)

Logical: Comment6331
Id: Comment6331
Title: "COMMENT (63.31)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file COMMENT (63.31)"
Characteristics: #can-be-target
* comment 0..1 Element "COMMENT (-.01)"

Logical: BactRptRemark6333
Id: BactRptRemark6333
Title: "BACT RPT REMARK (63.33)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file BACT RPT REMARK (63.33)"
Characteristics: #can-be-target
* bactRptRemark 0..1 Element "BACT RPT REMARK (-.01)"

Logical: GramStain6329
Id: GramStain6329
Title: "GRAM STAIN (63.29)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file GRAM STAIN (63.29)"
Characteristics: #can-be-target
* gramStain 0..1 Element "GRAM STAIN (-.01)"

Logical: ParasiteRptRemark6336
Id: ParasiteRptRemark6336
Title: "PARASITE RPT REMARK (63.36)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PARASITE RPT REMARK (63.36)"
Characteristics: #can-be-target
* parasiteRptRemark 0..1 Element "PARASITE RPT REMARK (-.01)"

Logical: MycologyRptRemark6338
Id: MycologyRptRemark6338
Title: "MYCOLOGY RPT REMARK (63.38)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file MYCOLOGY RPT REMARK (63.38)"
Characteristics: #can-be-target
* mycologyRptRemark 0..1 Element "MYCOLOGY RPT REMARK (-.01)"

Logical: TbRptRemark6341
Id: TbRptRemark6341
Title: "TB RPT REMARK (63.41)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TB RPT REMARK (63.41)"
Characteristics: #can-be-target
* tbRptRemark 0..1 Element "TB RPT REMARK (-.01)"

Logical: VirologyRptRemark6344
Id: VirologyRptRemark6344
Title: "VIROLOGY RPT REMARK (63.44)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file VIROLOGY RPT REMARK (63.44)"
Characteristics: #can-be-target
* virologyRptRemark 0..1 Element "VIROLOGY RPT REMARK (-.01)"

Logical: SurgicalPathology6308
Id: SurgicalPathology6308
Title: "SURGICAL PATHOLOGY (63.08)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SURGICAL PATHOLOGY (63.08)"
Characteristics: #can-be-target
* orderedTest 0..1 Reference "ORDERED TEST (-.35)"
* datetimeSpecimenTaken 0..1 Element "DATE/TIME SPECIMEN TAKEN (-.01)"
* dateReportCompleted 0..1 Element "DATE REPORT COMPLETED (-.03)"
* releasedBy 0..1 Element "RELEASED BY (-.13)"
* releasingSite 0..1 Element "RELEASING SITE (-.345)"
* pathologist 0..1 Element "PATHOLOGIST (-.02)"
* surgicalPathAcc  0..1 Element "SURGICAL PATH ACC # (-.06)"
* image 0..1 Element "IMAGE (-2005)"
* surgicalPathDiagnosis 0..1 Element "SURGICAL PATH DIAGNOSIS (-1.4)"
* tiuReferenceDatetimeSp 0..1 Reference "TIU REFERENCE DATE/TIME - SP (-.16)"
* specimen 0..1 Reference "SPECIMEN (-.012)"
* orderedTest only Reference(OrderedTest6353)
* tiuReferenceDatetimeSp only Reference(TiuReferenceDatetime6319)
* specimen only Reference(Specimen63812)

Logical: OrderedTest6353
Id: OrderedTest6353
Title: "ORDERED TEST (63.53)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ORDERED TEST (63.53)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* cprsOrder  0..1 Element "CPRS ORDER # (-3)"
* disposition 0..1 Coding "DISPOSITION (-10)"
* disposition from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus-vista (preferred)

Logical: TiuReferenceDatetime6319
Id: TiuReferenceDatetime6319
Title: "TIU REFERENCE DATE/TIME (63.19)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TIU REFERENCE DATE/TIME (63.19)"
Characteristics: #can-be-target
* spTiuEntryPointerSp 0..1 Reference "SP - TIU ENTRY POINTER - SP (-1)"
* spTiuEntryPointerSp only Reference(TiuDocument8925)

Logical: Specimen63812
Id: Specimen63812
Title: "SPECIMEN (63.812)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SPECIMEN (63.812)"
Characteristics: #can-be-target
* specimen 0..1 Element "SPECIMEN (-.01)"

Logical: SourceOfAdmission451
Id: SourceOfAdmission451
Title: "SOURCE OF ADMISSION (45.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file SOURCE OF ADMISSION (45.1)"
Characteristics: #can-be-target
* ptfCode 0..1 Coding "PTF CODE (-.01)"
* ptfCode from http://va.gov/fhir/ValueSet/VSVFSourceOfAdmission-vista (preferred)

Logical: Location999999906
Id: Location999999906
Title: "LOCATION (9999999.06)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file LOCATION (9999999.06)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: VProvider900001006
Id: VProvider900001006
Title: "V PROVIDER (9000010.06)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V PROVIDER (9000010.06)"
Characteristics: #can-be-target
* provider 0..1 Element "PROVIDER (-.01)"

Logical: VCpt900001018
Id: VCpt900001018
Title: "V CPT (9000010.18)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V CPT (9000010.18)"
Characteristics: #can-be-target
* cpt 0..1 Element "CPT (-.01)"
* patientName 0..1 Reference "PATIENT NAME (-.02)"
* visit 0..1 Element "VISIT (-.03)"
* providerNarrative 0..1 Reference "PROVIDER NARRATIVE (-.04)"
* diagnosis 0..1 Element "DIAGNOSIS (-.05)"
* diagnosis2 0..1 Element "DIAGNOSIS 2 (-.09)"
* diagnosis3 0..1 Element "DIAGNOSIS 3 (-.1)"
* diagnosis4 0..1 Element "DIAGNOSIS 4 (-.11)"
* diagnosis5 0..1 Element "DIAGNOSIS 5 (-.12)"
* diagnosis6 0..1 Element "DIAGNOSIS 6 (-.13)"
* diagnosis7 0..1 Element "DIAGNOSIS 7 (-.14)"
* diagnosis8 0..1 Element "DIAGNOSIS 8 (-.15)"
* eventDateAndTime 0..1 Element "EVENT DATE AND TIME (-1201)"
* encounterProvider 0..1 Element "ENCOUNTER PROVIDER (-1204)"
* comments 0..1 Element "COMMENTS (-81101)"
* patientName only Reference(Patientihs9000001)
* providerNarrative only Reference(ProviderNarrative999999927)

Logical: VImmunization900001011
Id: VImmunization900001011
Title: "V IMMUNIZATION (9000010.11)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V IMMUNIZATION (9000010.11)"
Characteristics: #can-be-target
* immunization 0..1 Reference "IMMUNIZATION (-.01)"
* eventInformationSource 0..1 Element "EVENT INFORMATION SOURCE (-1301)"
* patientName 0..1 Element "PATIENT NAME (-.02)"
* eventDateAndTime 0..1 Element "EVENT DATE AND TIME (-1201)"
* dose 0..1 Element "DOSE (-1312)"
* encounterProvider 0..1 Element "ENCOUNTER PROVIDER (-1204)"
* comments 0..1 Element "COMMENTS (-81101)"
* series 0..1 Element "SERIES (-.04)"
* doseUnits 0..1 Reference "DOSE UNITS (-1313)"
* datetimeRecorded 0..1 Element "DATE/TIME RECORDED (-1205)"
* visit 0..1 Reference "VISIT (-.03)"
* reaction 0..1 Coding "REACTION (-.06)"
* reaction from http://va.gov/fhir/ValueSet/VSVFImmunizationReaction-vista (preferred)
* immunization only Reference(Immunization999999914)
* doseUnits only Reference(UcumCodes7575)
* visit only Reference(Visit9000010)

Logical: Immunization999999914
Id: Immunization999999914
Title: "IMMUNIZATION (9999999.14)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file IMMUNIZATION (9999999.14)"
Characteristics: #can-be-target
* name 0..1 Coding "NAME (-.01)"
* name from http://va.gov/fhir/ValueSet/VSVFinferredCVX-vista (preferred)
* cvxCode 0..1 Element "CVX CODE (-.03)"

Logical: ImmunizationLot999999941
Id: ImmunizationLot999999941
Title: "IMMUNIZATION LOT (9999999.41)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file IMMUNIZATION LOT (9999999.41)"
Characteristics: #can-be-target
* lotNumber 0..1 Element "LOT NUMBER (-.01)"
* manufacturer 0..1 Element "MANUFACTURER (-.02)"
* ndcCodeVa 0..1 Element "NDC CODE (VA) (-.18)"

Logical: UcumCodes7575
Id: UcumCodes7575
Title: "UCUM CODES (757.5)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file UCUM CODES (757.5)"
Characteristics: #can-be-target

Logical: ALeadImplant6982
Id: ALeadImplant6982
Title: "A LEAD IMPLANT (698.2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file A LEAD IMPLANT (698.2)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* explantDate 0..1 Element "EXPLANT DATE (-56)"
* aLeadManufacturer 0..1 Reference "A LEAD MANUFACTURER (-3)"
* aLeadSerialNumber 0..1 Element "A LEAD SERIAL NUMBER (-4)"
* aLeadModel 0..1 Reference "A LEAD MODEL (-2)"
* medicalPatient 0..1 Element "MEDICAL PATIENT (-1)"
* aLeadManufacturer only Reference(PacemakerManufacturer6986)
* aLeadModel only Reference(PacemakerEquipment6984)

Logical: PacemakerManufacturer6986
Id: PacemakerManufacturer6986
Title: "PACEMAKER MANUFACTURER (698.6)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PACEMAKER MANUFACTURER (698.6)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: PacemakerEquipment6984
Id: PacemakerEquipment6984
Title: "PACEMAKER EQUIPMENT (698.4)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PACEMAKER EQUIPMENT (698.4)"
Characteristics: #can-be-target
* modelNumbername 0..1 Element "MODEL NUMBER/NAME (-.01)"
* typeOfEquipment 0..1 Coding "TYPE OF EQUIPMENT (-1)"
* typeOfEquipment from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker-vista (preferred)

Logical: DentalDeviceTracking2289
Id: DentalDeviceTracking2289
Title: "DENTAL DEVICE TRACKING (228.9)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file DENTAL DEVICE TRACKING (228.9)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* udi 0..1 Element "UDI (-1)"
* status 0..1 Coding "STATUS (-.08)"
* status from http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus-vista (preferred)
* donationId 0..1 Element "DONATION ID (-4.8)"
* manufacturer 0..1 Element "MANUFACTURER (-4.1)"
* manufacturerDate 0..1 Element "MANUFACTURER DATE (-4.6)"
* expirationDate 0..1 Element "EXPIRATION DATE (-4.7)"
* lot 0..1 Element "LOT (-4.4)"
* sn 0..1 Element "S/N (-4.3)"
* model 0..1 Element "MODEL (-4.2)"
* type 0..1 Element "TYPE (-2)"
* patient 0..1 Element "PATIENT (-.03)"

Logical: ProsthesisInstalled13001
Id: ProsthesisInstalled13001
Title: "PROSTHESIS INSTALLED (130.01)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PROSTHESIS INSTALLED (130.01)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* vendor 0..1 Element "VENDOR (-1)"
* sterilityExpirationDate 0..1 Element "STERILITY EXPIRATION DATE (-9)"
* lotNumber 0..1 Element "LOT NUMBER (-11)"
* serialNumber 0..1 Element "SERIAL NUMBER (-12)"
* prosthesisItem 0..1 Reference "PROSTHESIS ITEM (-.01)"
* model 0..1 Element "MODEL (-2)"
* prosthesisItem only Reference(Prosthesis1319)

Logical: Prosthesis1319
Id: Prosthesis1319
Title: "PROSTHESIS (131.9)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PROSTHESIS (131.9)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: VLeadImplant6981
Id: VLeadImplant6981
Title: "V LEAD IMPLANT (698.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V LEAD IMPLANT (698.1)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* explantDate 0..1 Element "EXPLANT DATE (-56)"
* vLeadManufacturer 0..1 Reference "V LEAD MANUFACTURER (-3)"
* vLeadSerialNumber 0..1 Element "V LEAD SERIAL NUMBER (-4)"
* vLeadModel 0..1 Reference "V LEAD MODEL (-2)"
* medicalPatient 0..1 Element "MEDICAL PATIENT (-1)"
* vLeadManufacturer only Reference(PacemakerManufacturer6986)
* vLeadModel only Reference(PacemakerEquipment6984)

Logical: CountryCode779004
Id: CountryCode779004
Title: "COUNTRY CODE (779.004)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file COUNTRY CODE (779.004)"
Characteristics: #can-be-target
* code 0..1 Element "CODE (-.01)"

Logical: NonvaMeds5505
Id: NonvaMeds5505
Title: "NON-VA MEDS (55.05)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file NON-VA MEDS (55.05)"
Characteristics: #can-be-target
* disclaimer 0..1 Element "DISCLAIMER (-10)"
* clinic 0..1 Element "CLINIC (-13)"

Logical: VaProduct5068
Id: VaProduct5068
Title: "VA PRODUCT (50.68)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file VA PRODUCT (50.68)"
Characteristics: #can-be-target
* vaPrintName 0..1 Element "VA PRINT NAME (-5)"

Logical: VaGeneric506
Id: VaGeneric506
Title: "VA GENERIC (50.6)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file VA GENERIC (50.6)"
Characteristics: #can-be-target
* codingSystem 0..1 Reference "CODING SYSTEM (-5)"
* codingSystem only Reference(CodingSystem5065)

Logical: CodingSystem5065
Id: CodingSystem5065
Title: "CODING SYSTEM (50.65)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CODING SYSTEM (50.65)"
Characteristics: #can-be-target
* code 0..1 Element "CODE (-.02)"

Logical: MedicationInstructions520113
Id: MedicationInstructions520113
Title: "MEDICATION INSTRUCTIONS (52.0113)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file MEDICATION INSTRUCTIONS (52.0113)"
Characteristics: #can-be-target
* dosageOrdered 0..1 Element "DOSAGE ORDERED (-.01)"
* units 0..1 Coding "UNITS (-2)"
* units from http://va.gov/fhir/ValueSet/VSVFDoseUnits-vista (preferred)
* noun 0..1 Element "NOUN (-3)"
* route 0..1 Element "ROUTE (-6)"

Logical: Refill521
Id: Refill521
Title: "REFILL (52.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file REFILL (52.1)"
Characteristics: #can-be-target
* mailwindowpark 0..1 Element "MAIL/WINDOW/PARK (-.01)"
* daysSupply 0..1 Element "DAYS SUPPLY (-1.1)"
* qty 0..1 Element "QTY (-1)"
* releasedDatetime 0..1 Element "RELEASED DATE/TIME (-17)"
* division 0..1 Element "DIVISION (-8)"
* remarks 0..1 Element "REMARKS (-3)"

Logical: PartialDate522
Id: PartialDate522
Title: "PARTIAL DATE (52.2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PARTIAL DATE (52.2)"
Characteristics: #can-be-target
* mailwindow 0..1 Element "MAIL/WINDOW (-.02)"
* daysSupply 0..1 Element "DAYS SUPPLY (-.041)"
* qty 0..1 Element "QTY (-.04)"
* releasedDatetime 0..1 Element "RELEASED DATE/TIME (-8)"
* division 0..1 Element "DIVISION (-.09)"
* remarks 0..1 Element "REMARKS (-.03)"

Logical: VExam900001013
Id: VExam900001013
Title: "V EXAM (9000010.13)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V EXAM (9000010.13)"
Characteristics: #can-be-target
* exam 0..1 Reference "EXAM (-.01)"
* patientName 0..1 Reference "PATIENT NAME (-.02)"
* visit 0..1 Element "VISIT (-.03)"
* result 0..1 Element "RESULT (-.04)"
* magnitude 0..1 Element "MAGNITUDE (-220)"
* ucumCode 0..1 Element "UCUM CODE (-221)"
* comments 0..1 Element "COMMENTS (-81101)"
* eventDateAndTime 0..1 Element "EVENT DATE AND TIME (-1201)"
* encounterProvider 0..1 Element "ENCOUNTER PROVIDER (-1204)"
* exam only Reference(Exam999999915)
* patientName only Reference(Patientihs9000001)

Logical: Exam999999915
Id: Exam999999915
Title: "EXAM (9999999.15)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file EXAM (9999999.15)"
Characteristics: #can-be-target
* codeMappings 0..1 Element "CODE MAPPINGS (-210)"

Logical: CodeMappings999999918
Id: CodeMappings999999918
Title: "CODE MAPPINGS (9999999.18)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CODE MAPPINGS (9999999.18)"
Characteristics: #can-be-target

Logical: Contact403
Id: Contact403
Title: "CONTACT (4.03)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file CONTACT (4.03)"
Characteristics: #can-be-target
* contact 0..1 Element "CONTACT (-.01)"
* phone  0..1 Element "PHONE # (-.03)"

Logical: PersonClass20005
Id: PersonClass20005
Title: "PERSON CLASS (200.05)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PERSON CLASS (200.05)"
Characteristics: #can-be-target
* expirationDate 0..1 Element "Expiration Date (-3)"
* effectiveDate 0..1 Element "Effective Date (-2)"
* personClass 0..1 Reference "Person Class (-.01)"
* personClass only Reference(PersonClass89321)

Logical: Title31
Id: Title31
Title: "TITLE (3.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file TITLE (3.1)"
Characteristics: #can-be-target
* name 0..1 Element "NAME (-.01)"

Logical: PersonClass89321
Id: PersonClass89321
Title: "PERSON CLASS (8932.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PERSON CLASS (8932.1)"
Characteristics: #can-be-target
* x12Code 0..1 Element "X12 CODE (-6)"

Logical: Provider441
Id: Provider441
Title: "PROVIDER (44.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PROVIDER (44.1)"
Characteristics: #can-be-target
* provider 0..1 Element "PROVIDER (-.01)"

Logical: ProviderNarrative999999927
Id: ProviderNarrative999999927
Title: "PROVIDER NARRATIVE (9999999.27)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PROVIDER NARRATIVE (9999999.27)"
Characteristics: #can-be-target
* narrative 0..1 Element "NARRATIVE (-.01)"

Logical: Examinations7003
Id: Examinations7003
Title: "EXAMINATIONS (70.03)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file EXAMINATIONS (70.03)"
Characteristics: #can-be-target
* examStatus 0..1 Reference "EXAM STATUS (-3)"
* reasonForCancellation 0..1 Reference "REASON FOR CANCELLATION (-3.5)"
* procedure 0..1 Reference "PROCEDURE (-2)"
* visit 0..1 Element "VISIT (-27)"
* primaryInterpretingStaff 0..1 Element "PRIMARY INTERPRETING STAFF (-15)"
* examStatus only Reference(ExaminationStatus72)
* reasonForCancellation only Reference(RadnucMedReason752)
* procedure only Reference(RadnucMedProcedures71)

Logical: RadnucMedReason752
Id: RadnucMedReason752
Title: "RAD/NUC MED REASON (75.2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file RAD/NUC MED REASON (75.2)"
Characteristics: #can-be-target
* reason 0..1 Element "REASON (-.01)"

Logical: RegisteredExams7002
Id: RegisteredExams7002
Title: "REGISTERED EXAMS (70.02)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file REGISTERED EXAMS (70.02)"
Characteristics: #can-be-target
* typeOfImaging 0..1 Reference "TYPE OF IMAGING (-2)"
* examDate 0..1 Element "EXAM DATE (-.01)"
* imagingLocation 0..1 Reference "IMAGING LOCATION (-4)"
* examinations 0..1 Element "EXAMINATIONS (-50)"
* typeOfImaging only Reference(ImagingType792)
* imagingLocation only Reference(ImagingLocations791)

Logical: ImagingType792
Id: ImagingType792
Title: "IMAGING TYPE (79.2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file IMAGING TYPE (79.2)"
Characteristics: #can-be-target
* typeOfImaging 0..1 Element "TYPE OF IMAGING (-.01)"

Logical: ImagingLocations791
Id: ImagingLocations791
Title: "IMAGING LOCATIONS (79.1)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file IMAGING LOCATIONS (79.1)"
Characteristics: #can-be-target
* location 0..1 Element "LOCATION (-.01)"

Logical: VHealthFactors900001023
Id: VHealthFactors900001023
Title: "V HEALTH FACTORS (9000010.23)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file V HEALTH FACTORS (9000010.23)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* patientName 0..1 Element "PATIENT NAME (-.02)"
* visit 0..1 Element "VISIT (-.03)"
* eventDateAndTime 0..1 Element "EVENT DATE AND TIME (-1201)"
* encounterProvider 0..1 Element "ENCOUNTER PROVIDER (-1204)"
* healthFactor 0..1 Coding "HEALTH FACTOR (-.01)"
* healthFactor from http://va.gov/fhir/ValueSet/VSVFSmokingStatus-vista (preferred)
* comments 0..1 Element "COMMENTS (-81101)"

Logical: HealthFactors999999964
Id: HealthFactors999999964
Title: "HEALTH FACTORS (9999999.64)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file HEALTH FACTORS (9999999.64)"
Characteristics: #can-be-target
* category 0..1 Element "CATEGORY (-.03)"

Logical: Findings69106
Id: Findings69106
Title: "FINDINGS (691.06)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file FINDINGS (691.06)"
Characteristics: #can-be-target
* findings 0..1 Element "FINDINGS (-.01)"

Logical: ElectrocardiogramEkg6915
Id: ElectrocardiogramEkg6915
Title: "ELECTROCARDIOGRAM (EKG) (691.5)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ELECTROCARDIOGRAM (EKG) (691.5)"
Characteristics: #can-be-target
* ien 0..1 Element "IEN (-.001)"
* releaseStatus 0..1 Coding "RELEASE STATUS (-1506)"
* releaseStatus from http://va.gov/fhir/ValueSet/VSVFImageStatus-vista (preferred)
* medicalPatient 0..1 Element "MEDICAL PATIENT (-1)"
* datetime 0..1 Element "DATE/TIME (-.01)"
* dateOfVerified 0..1 Element "DATE OF VERIFIED (-1508)"
* interpretedBy 0..1 Element "INTERPRETED BY (-12)"
* interpretationCodeRhythm 0..1 Reference "INTERPRETATION CODE (RHYTHM) (-14)"
* interpretationCodeConfig 0..1 Reference "INTERPRETATION CODE (CONFIG) (-14.1)"
* interpretationCodePacing 0..1 Reference "INTERPRETATION CODE (PACING) (-14.2)"
* summary 0..1 Coding "SUMMARY (-.03)"
* summary from http://va.gov/fhir/ValueSet/VSVFImageInterpretation-vista (preferred)
* comment 0..1 Element "COMMENT (-17)"
* interpretationCodeRhythm only Reference(InterpretationCodeRhythm69154)
* interpretationCodeConfig only Reference(InterpretationCodeConfig69155)
* interpretationCodePacing only Reference(InterpretationCodePacing69156)

Logical: InterpretationCodeRhythm69154
Id: InterpretationCodeRhythm69154
Title: "INTERPRETATION CODE (RHYTHM) (691.54)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file INTERPRETATION CODE (RHYTHM) (691.54)"
Characteristics: #can-be-target
* interpretationCodeRhythm 0..1 Reference "INTERPRETATION CODE (RHYTHM) (-.01)"
* interpretationCodeRhythm only Reference(EcgInterpretation6933)

Logical: EcgInterpretation6933
Id: EcgInterpretation6933
Title: "ECG INTERPRETATION (693.3)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file ECG INTERPRETATION (693.3)"
Characteristics: #can-be-target
* interpretation 0..1 Element "INTERPRETATION (-.01)"

Logical: InterpretationCodeConfig69155
Id: InterpretationCodeConfig69155
Title: "INTERPRETATION CODE (CONFIG) (691.55)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file INTERPRETATION CODE (CONFIG) (691.55)"
Characteristics: #can-be-target
* interpretationCodeConfig 0..1 Reference "INTERPRETATION CODE (CONFIG) (-.01)"
* interpretationCodeConfig only Reference(EcgInterpretation6933)

Logical: InterpretationCodePacing69156
Id: InterpretationCodePacing69156
Title: "INTERPRETATION CODE (PACING) (691.56)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file INTERPRETATION CODE (PACING) (691.56)"
Characteristics: #can-be-target
* interpretationCodePacing 0..1 Reference "INTERPRETATION CODE (PACING) (-.01)"
* interpretationCodePacing only Reference(EcgInterpretation6933)

Logical: ArCcpcStatements3492
Id: ArCcpcStatements3492
Title: "AR CCPC STATEMENTS (349.2)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file AR CCPC STATEMENTS (349.2)"
Characteristics: #can-be-target
* patient 0..1 Reference "PATIENT (-.01)"
* amountDue 0..1 Element "AMOUNT DUE (-.04)"
* prevBal 0..1 Element "PREV BAL (-.05)"
* totalCharges 0..1 Element "TOTAL CHARGES (-.06)"
* totalCredits 0..1 Element "TOTAL CREDITS (-.07)"
* newBalance 0..1 Element "NEW BALANCE (-.08)"
* pdLine 0..1 Reference "PD LINE (-20)"
* specialNotices 0..1 Element "SPECIAL NOTICES (-30)"
* paragraphCodes 0..1 Element "PARAGRAPH CODES (-40)"
* patientName 0..1 Element "PATIENT NAME (-.03)"
* patient only Reference(ArDebtor340)
* pdLine only Reference(PdLine34921)

Logical: PdLine34921
Id: PdLine34921
Title: "PD LINE (349.21)"
Description: "This StructureDefinition contains the Logical Model for the mapped parts of the VistA file PD LINE (349.21)"
Characteristics: #can-be-target
* transactionAmount 0..1 Element "TRANSACTION AMOUNT (-2)"
* datePosted 0..1 Element "DATE POSTED (-.01)"
* transactionDescription 0..1 Element "TRANSACTION DESCRIPTION (-1)"
* billRefNo 0..1 Element "BILL REF. NO. (-3)"