Profile: ProcedureSurgeryProcedure
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureSurgeryProcedure
Title: "Procedure: Surgery Procedure"
Description: "This StructureDefinition contains the maps for VistA file SURGERY (130) to us-core-procedure"
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure|6.1.0"
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-0 0..1 and va-1 0..1 and va-2 0..1 and va-3 0..1 and va-4 0..1 and va-5 0..1 and va-6 0..1 and va-7 0..1 and va-8 0..1 and va-9 0..1 and va-10 0..1 and va-11 0..1 and va-12 0..1 and va-13 0..1
* encounter and performedDateTime and subject and note and reasonCode.text and performedPeriod.start and performedPeriod.end and location and complication.coding and complication.text and performer[va-0].actor and performer[va-0].function.text and performer[va-0].function.coding and category.coding and performer[va-1].actor and performer[va-1].function.text and performer[va-1].function.coding and performer[va-2].actor and performer[va-2].function.text and performer[va-2].function.coding and performer[va-3].actor and performer[va-3].function.text and performer[va-3].function.coding and performer[va-4].actor and performer[va-4].function.text and performer[va-4].function.coding and performer[va-5].actor and performer[va-5].function.text and performer[va-5].function.coding and performer[va-6].actor and performer[va-6].function.text and performer[va-6].function.coding and performer[va-7].actor and performer[va-7].function.text and performer[va-7].function.coding and performer[va-8].actor and performer[va-8].function.text and performer[va-8].function.coding and performer[va-9].actor and performer[va-9].function.text and performer[va-9].function.coding and performer[va-10].actor and performer[va-10].function.text and performer[va-10].function.coding and performer[va-11].actor and performer[va-11].function.text and performer[va-11].function.coding and performer[va-12].actor and performer[va-12].function.text and performer[va-12].function.coding and performer[va-13].actor and performer[va-13].function.text and performer[va-13].function.coding and code.text and code.coding and code.coding.code and code.coding.system and code.coding.display and status MS
* encounter only Reference(EncounterOutpatient)
* subject only Reference(Patient)
* location only Reference(Location or ProcedureSurgeryLocationOR)
* performer[va-0].actor only Reference(Practitioner)
* performer[va-1].actor only Reference(Practitioner)
* performer[va-2].actor only Reference(Practitioner)
* performer[va-3].actor only Reference(Practitioner)
* performer[va-4].actor only Reference(Practitioner)
* performer[va-5].actor only Reference(Practitioner)
* performer[va-6].actor only Reference(Practitioner)
* performer[va-7].actor only Reference(Practitioner)
* performer[va-8].actor only Reference(Practitioner)
* performer[va-9].actor only Reference(Practitioner)
* performer[va-10].actor only Reference(Practitioner)
* performer[va-11].actor only Reference(Practitioner)
* performer[va-12].actor only Reference(Practitioner)
* performer[va-13].actor only Reference(Practitioner)
* complication.coding obeys psp-25-1296
* complication.text obeys psp-25-1296-1
* complication.coding obeys psp-25-1297
* complication.text obeys psp-25-1297-1
* performer[va-0].function.text = "PERFUSIONIST"
* performer[va-0].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.167 "PERFUSIONIST"
* category.coding = http://snomed.info/sct#387713003 "Surgical procedure"
* performer[va-1].function.text = "PRIMARY SURGEON"
* performer[va-1].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.14 "PRIMARY SURGEON"
* performer[va-2].function.text = "FIRST ASST"
* performer[va-2].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.15 "FIRST ASST"
* performer[va-3].function.text = "SECOND ASST"
* performer[va-3].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.16 "SECOND ASST"
* performer[va-4].function.text = "ATTENDING SURGEON"
* performer[va-4].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.164 "ATTENDING SURGEON"
* performer[va-5].function.text = "ASST PERFUSIONIST"
* performer[va-5].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.168 "ASST PERFUSIONIST"
* performer[va-6].function.text = "SKIN PREPPED BY (1)"
* performer[va-6].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.18 "SKIN PREPPED BY (1)"
* performer[va-7].function.text = "PRINC ANESTHETIST"
* performer[va-7].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.31 "PRINC ANESTHETIST"
* performer[va-8].function.text = "RELIEF ANESTHETIST"
* performer[va-8].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.32 "RELIEF ANESTHETIST"
* performer[va-9].function.text = "ASST ANESTHETIST"
* performer[va-9].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.33 "ASST ANESTHETIST"
* performer[va-10].function.text = "ANESTHESIOLOGIST SUPVR"
* performer[va-10].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.34 "ANESTHESIOLOGIST SUPVR"
* performer[va-11].function.text = "VERIFIER"
* performer[va-11].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.522 "VERIFIER"
* performer[va-12].function.text = "PROVIDER"
* performer[va-12].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#123 "PROVIDER"
* performer[va-13].function.text = "FOLEY CATHETER INSERTED BY"
* performer[va-13].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.57 "FOLEY CATHETER INSERTED BY"
* code.coding.system = "http://www.ama-assn.org/go/cpt"

Invariant: psp-25-1296
Description: "130-688: if == ‘Y’ then http://snomed.info/sct#88797001 \"Complication of surgical procedure (disorder)\""
Severity: #warning

Invariant: psp-25-1296-1
Description: "undefined: if == ‘Y’ then STOMA COMPLICATIONS"
Severity: #warning

Invariant: psp-25-1297
Description: "130-258: if == ‘Y’ then http://snomed.info/sct#22298006 \"Myocardial infarction (disorder)\""
Severity: #warning

Invariant: psp-25-1297-1
Description: "undefined: if == ‘Y’ then MYOCARDIAL INFARCTION"
Severity: #warning

Mapping: source-to-ProcedureSurgeryProcedure
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureSurgeryProcedure
* encounter -> "1285: reference from SURGERY - VISIT (130-.015)"
* performedDateTime -> "1286: source value from SURGERY - DATE OF OPERATION (130-.09)"
* subject -> "1287: reference from SURGERY - PATIENT (130-.01)"
* note -> "1288: source value from SURGERY - GENERAL COMMENTS (130-.28)"
* reasonCode.text -> "1289: source value from SURGERY - PRINCIPAL PRE-OP DIAGNOSIS (130-32)"
* performedPeriod.start -> "1290: source value from SURGERY - TIME PROCEDURE BEGAN (130-121) case 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.end -> "1291: source value from SURGERY - TIME PROCEDURE ENDED (130-122) case 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.start -> "1292: source value from SURGERY - TIME OPERATION BEGAN (130-.22) case 130-118 NON-OR PROCEDURE != ‘Y’"
* performedPeriod.end -> "1293: source value from SURGERY - TIME OPERATION ENDS (130-.23) case 130-118 NON-OR PROCEDURE != ‘Y’"
* location -> "1294: reference from SURGERY - NON-OR LOCATION > OPERATING ROOM - (130-119 > 131.7-) case 130-118 NON-OR PROCEDURE == ‘Y’"
* location -> "1295: reference from SURGERY - OP ROOM PROCEDURE PERFORMED (130-.02) case 130-118 NON-OR PROCEDURE != ‘Y’"
* complication.coding -> "1296: fixed value = http://snomed.info/sct#88797001 \"Complication of surgical procedure (disorder)\" when SURGERY - STOMA COMPLICATIONS (130-688) case == ‘Y’"
* complication.text -> "1296-1: fixed value = STOMA COMPLICATIONS case == ‘Y’" "from mapParameter 1"
* complication.coding -> "1297: fixed value = http://snomed.info/sct#22298006 \"Myocardial infarction (disorder)\" when SURGERY - MYOCARDIAL INFARCTION (130-258) case == ‘Y’" "Removed \"perioperative\" in the .text"
* complication.text -> "1297-1: fixed value = MYOCARDIAL INFARCTION case == ‘Y’" "from mapParameter 1"
* performer[va-0].actor -> "1298: reference from SURGERY - PERFUSIONIST (130-.167)"
* performer[va-0].function.text -> "1298-1: fixed value = PERFUSIONIST" "from mapParameter 1"
* performer[va-0].function.coding -> "1298-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.167 \"PERFUSIONIST\"" "from mapParameter 2"
* category.coding -> "1313: fixed value = http://snomed.info/sct#387713003 \"Surgical procedure\""
* performer[va-1].actor -> "1330: reference from SURGERY - PRIMARY SURGEON (130-.14)"
* performer[va-1].function.text -> "1330-1: fixed value = PRIMARY SURGEON" "from mapParameter 1"
* performer[va-1].function.coding -> "1330-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.14 \"PRIMARY SURGEON\"" "from mapParameter 2"
* performer[va-2].actor -> "1331: reference from SURGERY - FIRST ASST (130-.15)"
* performer[va-2].function.text -> "1331-1: fixed value = FIRST ASST" "from mapParameter 1"
* performer[va-2].function.coding -> "1331-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.15 \"FIRST ASST\"" "from mapParameter 2"
* performer[va-3].actor -> "1332: reference from SURGERY - SECOND ASST (130-.16)"
* performer[va-3].function.text -> "1332-1: fixed value = SECOND ASST" "from mapParameter 1"
* performer[va-3].function.coding -> "1332-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.16 \"SECOND ASST\"" "from mapParameter 2"
* performer[va-4].actor -> "1333: reference from SURGERY - ATTENDING SURGEON (130-.164)"
* performer[va-4].function.text -> "1333-1: fixed value = ATTENDING SURGEON" "from mapParameter 1"
* performer[va-4].function.coding -> "1333-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.164 \"ATTENDING SURGEON\"" "from mapParameter 2"
* performer[va-5].actor -> "1334: reference from SURGERY - ASST PERFUSIONIST (130-.168)"
* performer[va-5].function.text -> "1334-1: fixed value = ASST PERFUSIONIST" "from mapParameter 1"
* performer[va-5].function.coding -> "1334-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.168 \"ASST PERFUSIONIST\"" "from mapParameter 2"
* performer[va-6].actor -> "1335: reference from SURGERY - SKIN PREPPED BY (1) (130-.18)"
* performer[va-6].function.text -> "1335-1: fixed value = SKIN PREPPED BY (1)" "from mapParameter 1"
* performer[va-6].function.coding -> "1335-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.18 \"SKIN PREPPED BY (1)\"" "from mapParameter 2"
* performer[va-7].actor -> "1336: reference from SURGERY - PRINC ANESTHETIST (130-.31)"
* performer[va-7].function.text -> "1336-1: fixed value = PRINC ANESTHETIST" "from mapParameter 1"
* performer[va-7].function.coding -> "1336-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.31 \"PRINC ANESTHETIST\"" "from mapParameter 2"
* performer[va-8].actor -> "1337: reference from SURGERY - RELIEF ANESTHETIST (130-.32)"
* performer[va-8].function.text -> "1337-1: fixed value = RELIEF ANESTHETIST" "from mapParameter 1"
* performer[va-8].function.coding -> "1337-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.32 \"RELIEF ANESTHETIST\"" "from mapParameter 2"
* performer[va-9].actor -> "1338: reference from SURGERY - ASST ANESTHETIST (130-.33)"
* performer[va-9].function.text -> "1338-1: fixed value = ASST ANESTHETIST" "from mapParameter 1"
* performer[va-9].function.coding -> "1338-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.33 \"ASST ANESTHETIST\"" "from mapParameter 2"
* performer[va-10].actor -> "1339: reference from SURGERY - ANESTHESIOLOGIST SUPVR (130-.34)"
* performer[va-10].function.text -> "1339-1: fixed value = ANESTHESIOLOGIST SUPVR" "from mapParameter 1"
* performer[va-10].function.coding -> "1339-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.34 \"ANESTHESIOLOGIST SUPVR\"" "from mapParameter 2"
* performer[va-11].actor -> "1340: reference from SURGERY - VERIFIER (130-.522)"
* performer[va-11].function.text -> "1340-1: fixed value = VERIFIER" "from mapParameter 1"
* performer[va-11].function.coding -> "1340-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.522 \"VERIFIER\"" "from mapParameter 2"
* performer[va-12].actor -> "1341: reference from SURGERY - PROVIDER (130-123)"
* performer[va-12].function.text -> "1341-1: fixed value = PROVIDER" "from mapParameter 1"
* performer[va-12].function.coding -> "1341-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#123 \"PROVIDER\"" "from mapParameter 2"
* performer[va-13].actor -> "1342: reference from SURGERY - FOLEY CATHETER INSERTED BY (130-.57)"
* performer[va-13].function.text -> "1342-1: fixed value = FOLEY CATHETER INSERTED BY" "from mapParameter 1"
* performer[va-13].function.coding -> "1342-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.57 \"FOLEY CATHETER INSERTED BY\"" "from mapParameter 2"
* code.text -> "1343: source value from SURGERY - PRINCIPAL PROCEDURE (130-26)"
* code.coding -> "1344: source value from SURGERY - PLANNED PRIN PROCEDURE CODE > CPT (130-27 > 81)"
* code.coding.code -> "1344-1: source value from SURGERY - PLANNED PRIN PROCEDURE CODE > CPT - CPT CODE (130-27 > 81-.01)" "from mapParameter 1"
* code.coding.system -> "1344-2: fixed value = http://www.ama-assn.org/go/cpt" "from mapParameter 2"
* code.coding.display -> "1344-3: source value from SURGERY - PLANNED PRIN PROCEDURE CODE > CPT - SHORT NAME (130-27 > 81-2)" "from mapParameter 3"
* status -> "1520: transform using see VistaRulesForProcStat sheet"

Mapping: cdw-to-ProcedureSurgeryProcedure
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureSurgeryProcedure
* performedDateTime -> "SPatient.ImplantedProsthesis.SurgeryDateTime,SPatient.OperationsIndication.SurgeryDateTime,Surg.AnesthesiaAgent.SurgeryDateTime,Surg.AnesthesiaBlockSite.SurgeryDateTime,Surg.AnesthesiaTechnique.SurgeryDateTime,Surg.AnesthesiaTestDose.SurgeryDateTime,Surg.ReferringPhysician.SurgeryDateTime,Surg.ReplacementFluidType.SurgeryDateTime,Surg.SurgeryAssistant.SurgeryDateTime,Surg.SurgeryAssistantOther.SurgeryDateTime,Surg.SurgeryDelay.SurgeryDateTime,Surg.SurgeryINTRA.SurgeryDateTime,Surg.SurgeryIrrigation.SurgeryDateTime,Surg.SurgeryMedication.SurgeryDateTime,Surg.SurgeryOccurrenceNonOp.SurgeryDateTime,Surg.SurgeryOtherPostOpDiagnosis.SurgeryDateTime,Surg.SurgeryOtherProcedure.SurgeryDateTime,Surg.SurgeryOtherProcedureCPTModifier.SurgeryDateTime,Surg.SurgeryOtherProcedureDiagnosis.SurgeryDateTime,Surg.SurgeryPOST.SurgeryDateTime,Surg.SurgeryPostOpDiagnosis.SurgeryDateTime,Surg.SurgeryPRE.SurgeryDateTime,Surg.SurgeryPreOpDiagnosis.SurgeryDateTime,Surg.SurgeryPrincipalAssociatedDiagnosis.SurgeryDateTime,Surg.SurgeryPrincipalAssociatedProcedure.SurgeryDateTime,Surg.SurgeryPrincipalCPTModifier.SurgeryDateTime,Surg.SurgeryPrincipalDiagnosis.SurgeryDateTime,Surg.SurgeryProcedureCPTModifier.SurgeryDateTime,Surg.SurgeryProcedureDiagnosisCode.SurgeryDateTime,Surg.SurgeryProcedureOccurrence.SurgeryDateTime,Surg.SurgeryRequiredBloodProducts.SurgeryDateTime,Surg.SurgeryReturnCase.SurgeryDateTime,Surg.SurgORCircSupport.SurgeryDateTime,Surg.SurgORCircSupportTime.SurgeryDateTime,Surg.SurgORScrubSupport.SurgeryDateTime,Surg.SurgORScrubSupportTime.SurgeryDateTime"
* subject -> "SPatient.ImplantedProsthesis.PatientIEN,SPatient.OperationsIndication.PatientIEN,Surg.AnesthesiaAgent.PatientIEN,Surg.AnesthesiaBlockSite.PatientIEN,Surg.AnesthesiaTechnique.PatientIEN,Surg.AnesthesiaTestDose.PatientIEN,Surg.ReferringPhysician.PatientIEN,Surg.ReferringPhysician.PatientSID,Surg.ReplacementFluidType.PatientIEN,Surg.ReplacementFluidType.PatientSID,Surg.SurgeryAssistant.PatientIEN,Surg.SurgeryAssistantOther.PatientIEN,Surg.SurgeryDelay.PatientIEN,Surg.SurgeryINTRA.PatientIEN,Surg.SurgeryIrrigation.PatientIEN,Surg.SurgeryIrrigation.PatientSID,Surg.SurgeryMedication.PatientIEN,Surg.SurgeryOccurrenceNonOp.PatientIEN,Surg.SurgeryOccurrenceNonOp.PatientSID,Surg.SurgeryOtherPostOpDiagnosis.PatientIEN,Surg.SurgeryOtherProcedure.PatientIEN,Surg.SurgeryOtherProcedureCPTModifier.PatientIEN,Surg.SurgeryOtherProcedureCPTModifier.PatientSID,Surg.SurgeryOtherProcedureDiagnosis.PatientIEN,Surg.SurgeryPOST.PatientIEN,Surg.SurgeryPostOpDiagnosis.PatientIEN,Surg.SurgeryPreOpDiagnosis.PatientIEN,Surg.SurgeryPreOpDiagnosis.PatientSID,Surg.SurgeryPrincipalAssociatedDiagnosis.PatientIEN,Surg.SurgeryPrincipalAssociatedProcedure.PatientIEN,Surg.SurgeryPrincipalCPTModifier.PatientIEN,Surg.SurgeryPrincipalDiagnosis.PatientIEN,Surg.SurgeryProcedureCPTModifier.PatientIEN,Surg.SurgeryProcedureDiagnosisCode.PatientIEN,Surg.SurgeryProcedureOccurrence.PatientIEN,Surg.SurgeryProcedureOccurrence.PatientSID,Surg.SurgeryRequiredBloodProducts.PatientIEN,Surg.SurgeryReturnCase.PatientIEN,Surg.SurgORCircSupport.PatientIEN,Surg.SurgORCircSupportTime.PatientIEN,Surg.SurgORCircSupportTime.PatientSID,Surg.SurgORScrubSupport.PatientIEN,Surg.SurgORScrubSupportTime.PatientIEN,Surg.SurgORScrubSupportTime.PatientSID"
* reasonCode.text -> "Surg.SurgeryPRE.PrincipalPreOpDiagnosisText"
* performedPeriod.start -> "Surg.SurgeryINTRA.BeginNonORProcedureDateTime"
* performedPeriod.end -> "Surg.SurgeryINTRA.EndNonORProcedureDateTime"
* performedPeriod.start -> "Surg.SurgeryINTRA.BeginOperationDateTime,Surg.SurgeryPRE.BeginOperationDateTime"
* performedPeriod.end -> "Surg.SurgeryINTRA.EndOperationDateTime,Surg.SurgeryPRE.EndOperationDateTime"
* location -> "Surg.SurgeryINTRA.NonORLocationIEN,Surg.SurgeryPOST.NonORLocationIEN"
* location -> "Surg.SurgeryINTRA.OperatingRoomIEN,Surg.SurgeryPOST.OperatingRoomIEN"
* performer[va-0].actor -> "Surg.SurgeryINTRA.PerfusionistStaffIEN"
* performer[va-1].actor -> "Surg.SurgeryINTRA.SurgeonStaffIEN"
* performer[va-2].actor -> "Surg.SurgeryINTRA.FirstAssistingStaffIEN"
* performer[va-3].actor -> "Surg.SurgeryINTRA.SecondAssistingStaffIEN"
* performer[va-4].actor -> "Surg.SurgeryINTRA.AttendingSurgeonStaffIEN"
* performer[va-5].actor -> "Surg.SurgeryINTRA.AssistingPerfusionistStaffIEN"
* performer[va-6].actor -> "Surg.SurgeryINTRA.SkinPreparationStaffIEN"
* performer[va-7].actor -> "Surg.SurgeryINTRA.PrincipalAnesthetistStaffIEN"
* performer[va-8].actor -> "Surg.SurgeryINTRA.ReliefAnesthetistStaffIEN"
* performer[va-9].actor -> "Surg.SurgeryINTRA.AssistingAnesthetistStaffIEN"
* performer[va-10].actor -> "Surg.SurgeryINTRA.AnesthesiologistSupervisorStaffIEN"
* performer[va-11].actor -> "Surg.SurgeryINTRA.VerifierStaffIEN"
* performer[va-12].actor -> "Surg.SurgeryINTRA.ProviderIEN"
* performer[va-13].actor -> "Surg.SurgeryINTRA.FoleyCatheterStaffIEN"
* code.text -> "Surg.SurgeryPRE.PrincipalProcedureText"
* code.coding.code -> "Dim.CPT.CPTCode,Dim.CPT.CPTCode"
* code.coding.display -> "Dim.CPT.CPTName,Dim.CPT.CPTName"

Mapping: vpr-to-ProcedureSurgeryProcedure
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: ProcedureSurgeryProcedure
* encounter -> "surgery.encounter"
* performedDateTime -> "surgery.dateTime"
* performer[va-1].actor -> "surgery.provider"
* performer[va-12].actor -> "surgery.provider"
* code.text -> "surgery.name"