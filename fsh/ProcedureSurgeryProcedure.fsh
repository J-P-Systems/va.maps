Profile: ProcedureSurgeryProcedure
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureSurgeryProcedure
Title: "Procedure: Surgery {Procedure}"
Description: "This StructureDefinition contains the maps for VistA SURGERY (file 130) to FHIR Procedure"
* ^status = #draft
* complication.coding.code obeys inv-29
* complication.coding.code obeys inv-30
* category.coding.code obeys inv-31

Invariant: inv-29
Description: "1296: fixed value = 88797001 if SURGERY - STOMA COMPLICATIONS (#130-688) case == ‘Y’"
Severity: #warning

Invariant: inv-30
Description: "1297: fixed value = 22298006 if SURGERY - MYOCARDIAL INFARCTION (#130-258) case == ‘Y’"
Severity: #warning

Invariant: inv-31
Description: "1313: fixed value = 387713003"
Severity: #warning

Mapping: vista-to-ProcedureSurgeryProcedure
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureSurgeryProcedure
* encounter -> "1285: reference from SURGERY - VISIT (#130-.015)"
* performedDateTime -> "1286: source value from SURGERY - DATE OF OPERATION (#130-.09)"
* subject -> "1287: reference from SURGERY - PATIENT (#130-.01)"
* note -> "1288: source value from SURGERY - GENERAL COMMENTS (#130-.28)"
* reasonCode.text -> "1289: source value from SURGERY - PRINCIPAL PRE-OP DIAGNOSIS (#130-32)"
* performedPeriod.start -> "1290: source value from SURGERY - TIME PROCEDURE BEGAN (#130-121) case 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.end -> "1291: source value from SURGERY - TIME PROCEDURE ENDED (#130-122) case 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.start -> "1292: source value from SURGERY - TIME OPERATION BEGAN (#130-.22) case 130-118 NON-OR PROCEDURE != ‘Y’"
* performedPeriod.end -> "1293: source value from SURGERY - TIME OPERATION ENDS (#130-.23) case 130-118 NON-OR PROCEDURE != ‘Y’"
* location -> "1294: reference from SURGERY - NON-OR LOCATION (#130-119) case 130-118 NON-OR PROCEDURE != ‘Y’"
* location -> "1295: reference from SURGERY - OP ROOM PROCEDURE PERFORMED (#130-.02) case 130-118 NON-OR PROCEDURE == ‘Y’"
* complication.coding.code -> "1296: fixed value = 88797001 if SURGERY - STOMA COMPLICATIONS (#130-688) case == ‘Y’"
* complication.coding.code -> "1297: fixed value = 22298006 if SURGERY - MYOCARDIAL INFARCTION (#130-258) case == ‘Y’"
* performer.actor -> "1298: reference from SURGERY - PERFUSIONIST (#130-.167)"
* category.coding.code -> "1313: fixed value = 387713003"
* performer.actor -> "1330: reference from SURGERY - PRIMARY SURGEON (#130-.14)"
* performer.actor -> "1331: reference from SURGERY - FIRST ASST (#130-.15)"
* performer.actor -> "1332: reference from SURGERY - SECOND ASST (#130-.16)"
* performer.actor -> "1333: reference from SURGERY - ATTENDING SURGEON (#130-.164)"
* performer.actor -> "1334: reference from SURGERY - ASST PERFUSIONIST (#130-.168)"
* performer.actor -> "1335: reference from SURGERY - SKIN PREPPED BY (1) (#130-.18)"
* performer.actor -> "1336: reference from SURGERY - PRINC ANESTHETIST (#130-.31)"
* performer.actor -> "1337: reference from SURGERY - RELIEF ANESTHETIST (#130-.32)"
* performer.actor -> "1338: reference from SURGERY - ASST ANESTHETIST (#130-.33)"
* performer.actor -> "1339: reference from SURGERY - ANESTHESIOLOGIST SUPVR (#130-.34)"
* performer.actor -> "1340: reference from SURGERY - VERIFIER (#130-.522)"
* performer.actor -> "1341: reference from SURGERY - PROVIDER (#130-123)"
* performer.actor -> "1342: reference from SURGERY - FOLEY CATHETER INSERTED BY (#130-.57)"
* code.text -> "1343: source value from SURGERY - PRINCIPAL PROCEDURE (#130-26)"
* code.coding -> "1344: source value from SURGERY - PLANNED PRIN PROCEDURE CODE > CPT (#130-27 > 81)"
* status -> "1520: transform using see VistaRulesForProcStat sheet"

Mapping: cdw-to-ProcedureSurgeryProcedure
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureSurgeryProcedure
* performedDateTime -> "Surg.AnesthesiaAgent.SurgeryDateTime\nSurg.AnesthesiaBlockSite.SurgeryDateTime\nSurg.AnesthesiaTechnique.SurgeryDateTime\nSurg.AnesthesiaTestDose.SurgeryDateTime\nSPatient.ImplantedProsthesis.SurgeryDateTime\nSPatient.OperationsIndication.SurgeryDateTime\nSurg.ReferringPhysician.SurgeryDateTime\nSurg.ReplacementFluidType.SurgeryDateTime\nSurg.SurgeryAssistant.SurgeryDateTime\nSurg.SurgeryAssistantOther.SurgeryDateTime\nSurg.SurgeryDelay.SurgeryDateTime\nSurg.SurgeryINTRA.SurgeryDateTime\nSurg.SurgeryIrrigation.SurgeryDateTime\nSurg.SurgeryMedication.SurgeryDateTime\nSurg.SurgeryOccurrenceNonOp.SurgeryDateTime\nSurg.SurgeryOtherPostOpDiagnosis.SurgeryDateTime\nSurg.SurgeryOtherProcedure.SurgeryDateTime\nSurg.SurgeryOtherProcedureCPTModifier.SurgeryDateTime\nSurg.SurgeryOtherProcedureDiagnosis.SurgeryDateTime\nSurg.SurgeryPOST.SurgeryDateTime\nSurg.SurgeryPostOpDiagnosis.SurgeryDateTime\nSurg.SurgeryPRE.SurgeryDateTime\nSurg.SurgeryPreOpDiagnosis.SurgeryDateTime\nSurg.SurgeryPrincipalAssociatedDiagnosis.SurgeryDateTime\nSurg.SurgeryPrincipalAssociatedProcedure.SurgeryDateTime\nSurg.SurgeryPrincipalCPTModifier.SurgeryDateTime\nSurg.SurgeryPrincipalDiagnosis.SurgeryDateTime\nSurg.SurgeryProcedureCPTModifier.SurgeryDateTime\nSurg.SurgeryProcedureDiagnosisCode.SurgeryDateTime\nSurg.SurgeryProcedureOccurrence.SurgeryDateTime\nSurg.SurgeryRequiredBloodProducts.SurgeryDateTime\nSurg.SurgeryReturnCase.SurgeryDateTime\nSurg.SurgORCircSupport.SurgeryDateTime\nSurg.SurgORCircSupportTime.SurgeryDateTime\nSurg.SurgORScrubSupport.SurgeryDateTime\nSurg.SurgORScrubSupportTime.SurgeryDateTime"
* subject -> "Surg.AnesthesiaAgent.PatientIEN\nSurg.AnesthesiaBlockSite.PatientIEN\nSurg.AnesthesiaTechnique.PatientIEN\nSurg.AnesthesiaTestDose.PatientIEN\nSurg.ReferringPhysician.PatientIEN\nSurg.ReplacementFluidType.PatientIEN\nSurg.SurgeryAssistant.PatientIEN\nSurg.SurgeryAssistantOther.PatientIEN\nSurg.SurgeryDelay.PatientIEN\nSurg.SurgeryINTRA.PatientIEN\nSurg.SurgeryIrrigation.PatientIEN\nSurg.SurgeryMedication.PatientIEN\nSurg.SurgeryOccurrenceNonOp.PatientIEN\nSurg.SurgeryOtherProcedure.PatientIEN\nSurg.SurgeryOtherProcedureCPTModifier.PatientIEN\nSurg.SurgeryOtherProcedureDiagnosis.PatientIEN\nSurg.SurgeryPostOpDiagnosis.PatientIEN\nSurg.SurgeryPreOpDiagnosis.PatientIEN\nSurg.SurgeryPrincipalDiagnosis.PatientIEN\nSurg.SurgeryProcedureCPTModifier.PatientIEN\nSurg.SurgeryProcedureOccurrence.PatientIEN\nSurg.SurgeryRequiredBloodProducts.PatientIEN\nSurg.SurgeryReturnCase.PatientIEN\nSurg.SurgORCircSupport.PatientIEN\nSurg.SurgORCircSupportTime.PatientIEN\nSurg.SurgORScrubSupport.PatientIEN\nSurg.SurgORScrubSupportTime.PatientIEN"
* reasonCode.text -> "Surg.SurgeryPRE.PrincipalPreOpDiagnosisText"
* performedPeriod.start -> "Surg.SurgeryINTRA.BeginNonORProcedureDateTime"
* performedPeriod.end -> "Surg.SurgeryINTRA.EndNonORProcedureDateTime"
* performedPeriod.start -> "Surg.SurgeryINTRA.BeginOperationDateTime\nSurg.SurgeryPRE.BeginOperationDateTime"
* performedPeriod.end -> "Surg.SurgeryINTRA.EndOperationDateTime\nSurg.SurgeryPRE.EndOperationDateTime"
* location -> "Surg.SurgeryINTRA.NonORLocationIEN"
* location -> "Surg.SurgeryINTRA.OperatingRoomIEN"
* performer.actor -> "Surg.SurgeryINTRA.PerfusionistStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.SurgeonStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.FirstAssistingStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.SecondAssistingStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.AttendingSurgeonStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.AssistingPerfusionistStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.SkinPreparationStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.PrincipalAnesthetistStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.ReliefAnesthetistStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.AssistingAnesthetistStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.AnesthesiologistSupervisorStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.VerifierStaffIEN"
* performer.actor -> "Surg.SurgeryINTRA.ProviderIEN"
* performer.actor -> "Surg.SurgeryINTRA.FoleyCatheterStaffIEN"
* code.text -> "Surg.SurgeryPRE.PrincipalProcedureText"