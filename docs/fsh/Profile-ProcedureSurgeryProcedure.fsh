Profile: ProcedureSurgeryProcedure
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureSurgeryProcedure
Title: "Procedure: Surgery Procedure"
Description: "This StructureDefinition contains the maps for VistA file SURGERY (130) to us-core-procedure."
* ^status = #active
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-p0 0..1 and va-p1 0..1 and va-p2 0..1 and va-p3 0..1 and va-p4 0..1 and va-p5 0..1 and va-p6 0..1 and va-p7 0..1 and va-p8 0..1 and va-p9 0..1 and va-p10 0..1 and va-p11 0..1 and va-p12 0..1 and va-p13 0..1
* encounter and performedDateTime and subject and note and reasonCode.text and performedPeriod.start and performedPeriod.end and location and complication.coding and complication.text and performer[va-p0].actor and performer[va-p0].function.text and performer[va-p0].function.coding and category.coding and performer[va-p1].actor and performer[va-p1].function.text and performer[va-p1].function.coding and performer[va-p2].actor and performer[va-p2].function.text and performer[va-p2].function.coding and performer[va-p3].actor and performer[va-p3].function.text and performer[va-p3].function.coding and performer[va-p4].actor and performer[va-p4].function.text and performer[va-p4].function.coding and performer[va-p5].actor and performer[va-p5].function.text and performer[va-p5].function.coding and performer[va-p6].actor and performer[va-p6].function.text and performer[va-p6].function.coding and performer[va-p7].actor and performer[va-p7].function.text and performer[va-p7].function.coding and performer[va-p8].actor and performer[va-p8].function.text and performer[va-p8].function.coding and performer[va-p9].actor and performer[va-p9].function.text and performer[va-p9].function.coding and performer[va-p10].actor and performer[va-p10].function.text and performer[va-p10].function.coding and performer[va-p11].actor and performer[va-p11].function.text and performer[va-p11].function.coding and performer[va-p12].actor and performer[va-p12].function.text and performer[va-p12].function.coding and performer[va-p13].actor and performer[va-p13].function.text and performer[va-p13].function.coding and code.text and code.coding and code.coding.code and code.coding.system and code.coding.display and status MS
* encounter only Reference(EncounterOutpatient)
* subject only Reference(Patient)
* location only Reference(Location or ProcedureSurgeryLocationOR)
* performer[va-p0].actor only Reference(Practitioner)
* performer[va-p1].actor only Reference(Practitioner)
* performer[va-p2].actor only Reference(Practitioner)
* performer[va-p3].actor only Reference(Practitioner)
* performer[va-p4].actor only Reference(Practitioner)
* performer[va-p5].actor only Reference(Practitioner)
* performer[va-p6].actor only Reference(Practitioner)
* performer[va-p7].actor only Reference(Practitioner)
* performer[va-p8].actor only Reference(Practitioner)
* performer[va-p9].actor only Reference(Practitioner)
* performer[va-p10].actor only Reference(Practitioner)
* performer[va-p11].actor only Reference(Practitioner)
* performer[va-p12].actor only Reference(Practitioner)
* performer[va-p13].actor only Reference(Practitioner)
* performedPeriod.start obeys psp-25-1290
* performedPeriod.end obeys psp-25-1291
* performedPeriod.start obeys psp-25-1292
* performedPeriod.end obeys psp-25-1293
* location obeys psp-25-1294
* location obeys psp-25-1295
* complication.coding obeys psp-25-1296
* complication.text obeys psp-25-1296-1
* complication.coding obeys psp-25-1297
* complication.text obeys psp-25-1297-1
* performer[va-p0].function.text = "PERFUSIONIST"
* performer[va-p0].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.167 "PERFUSIONIST"
* category.coding = http://snomed.info/sct#387713003 "Surgical procedure"
* performer[va-p1].function.text = "PRIMARY SURGEON"
* performer[va-p1].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.14 "PRIMARY SURGEON"
* performer[va-p2].function.text = "FIRST ASST"
* performer[va-p2].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.15 "FIRST ASST"
* performer[va-p3].function.text = "SECOND ASST"
* performer[va-p3].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.16 "SECOND ASST"
* performer[va-p4].function.text = "ATTENDING SURGEON"
* performer[va-p4].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.164 "ATTENDING SURGEON"
* performer[va-p5].function.text = "ASST PERFUSIONIST"
* performer[va-p5].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.168 "ASST PERFUSIONIST"
* performer[va-p6].function.text = "SKIN PREPPED BY (1)"
* performer[va-p6].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.18 "SKIN PREPPED BY (1)"
* performer[va-p7].function.text = "PRINC ANESTHETIST"
* performer[va-p7].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.31 "PRINC ANESTHETIST"
* performer[va-p8].function.text = "RELIEF ANESTHETIST"
* performer[va-p8].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.32 "RELIEF ANESTHETIST"
* performer[va-p9].function.text = "ASST ANESTHETIST"
* performer[va-p9].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.33 "ASST ANESTHETIST"
* performer[va-p10].function.text = "ANESTHESIOLOGIST SUPVR"
* performer[va-p10].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.34 "ANESTHESIOLOGIST SUPVR"
* performer[va-p11].function.text = "VERIFIER"
* performer[va-p11].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.522 "VERIFIER"
* performer[va-p12].function.text = "PROVIDER"
* performer[va-p12].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#123 "PROVIDER"
* performer[va-p13].function.text = "FOLEY CATHETER INSERTED BY"
* performer[va-p13].function.coding = http://va.gov/terminology/vistaDefinedTerms/130#.57 "FOLEY CATHETER INSERTED BY"
* code.coding.system = "http://www.ama-assn.org/go/cpt"

Invariant: psp-25-1290
Description: "If 130-118 NON-OR PROCEDURE == ‘Y’ then source value from (130-121)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1291
Description: "If 130-118 NON-OR PROCEDURE == ‘Y’ then source value from (130-122)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1292
Description: "If 130-118 NON-OR PROCEDURE != ‘Y’ then source value from (130-.22)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1293
Description: "If 130-118 NON-OR PROCEDURE != ‘Y’ then source value from (130-.23)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1294
Description: "If 130-118 NON-OR PROCEDURE == ‘Y’ then reference /Location based on (130-119)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1295
Description: "If 130-118 NON-OR PROCEDURE != ‘Y’ then reference LocationOR based on (130-.02)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1296
Description: "If (130-688) is == ‘Y’ then fixed value http://snomed.info/sct#88797001 \"Complication of surgical procedure (disorder)\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1296-1
Description: "If == ‘Y’ then fixed value STOMA COMPLICATIONS"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1297
Description: "If (130-258) is == ‘Y’ then fixed value http://snomed.info/sct#22298006 \"Myocardial infarction (disorder)\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: psp-25-1297-1
Description: "If == ‘Y’ then fixed value MYOCARDIAL INFARCTION"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-ProcedureSurgeryProcedure
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureSurgeryProcedure
* encounter -> "1285: reference based on SURGERY - VISIT (130-.015)"
* performedDateTime -> "1286: source value based on SURGERY - DATE OF OPERATION (130-.09)"
* subject -> "1287: reference based on SURGERY - PATIENT (130-.01)"
* note -> "1288: source value based on SURGERY - GENERAL COMMENTS (130-.28)"
* reasonCode.text -> "1289: source value based on SURGERY - PRINCIPAL PRE-OP DIAGNOSIS (130-32)"
* performedPeriod.start -> "1290: source value based on SURGERY - TIME PROCEDURE BEGAN (130-121) if 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.end -> "1291: source value based on SURGERY - TIME PROCEDURE ENDED (130-122) if 130-118 NON-OR PROCEDURE == ‘Y’"
* performedPeriod.start -> "1292: source value based on SURGERY - TIME OPERATION BEGAN (130-.22) if 130-118 NON-OR PROCEDURE != ‘Y’"
* performedPeriod.end -> "1293: source value based on SURGERY - TIME OPERATION ENDS (130-.23) if 130-118 NON-OR PROCEDURE != ‘Y’"
* location -> "1294: reference based on SURGERY - NON-OR LOCATION (130-119) if 130-118 NON-OR PROCEDURE == ‘Y’"
* location -> "1295: reference based on SURGERY - OP ROOM PROCEDURE PERFORMED (130-.02) if 130-118 NON-OR PROCEDURE != ‘Y’"
* complication.coding -> "1296: fixed value = http://snomed.info/sct#88797001 \"Complication of surgical procedure (disorder)\" when SURGERY - STOMA COMPLICATIONS (130-688) if == ‘Y’"
* complication.text -> "1296-1: fixed value = STOMA COMPLICATIONS if == ‘Y’" "generated from mapParameter line 1"
* complication.coding -> "1297: fixed value = http://snomed.info/sct#22298006 \"Myocardial infarction (disorder)\" when SURGERY - MYOCARDIAL INFARCTION (130-258) if == ‘Y’" "Removed \"perioperative\" in the .text"
* complication.text -> "1297-1: fixed value = MYOCARDIAL INFARCTION if == ‘Y’" "generated from mapParameter line 1"
* performer[va-p0].actor -> "1298: reference based on SURGERY - PERFUSIONIST (130-.167)"
* performer[va-p0].function.text -> "1298-1: fixed value = PERFUSIONIST" "generated from mapParameter line 1"
* performer[va-p0].function.coding -> "1298-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.167 \"PERFUSIONIST\"" "generated from mapParameter line 2"
* category.coding -> "1313: fixed value = http://snomed.info/sct#387713003 \"Surgical procedure\""
* performer[va-p1].actor -> "1330: reference based on SURGERY - PRIMARY SURGEON (130-.14)"
* performer[va-p1].function.text -> "1330-1: fixed value = PRIMARY SURGEON" "generated from mapParameter line 1"
* performer[va-p1].function.coding -> "1330-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.14 \"PRIMARY SURGEON\"" "generated from mapParameter line 2"
* performer[va-p2].actor -> "1331: reference based on SURGERY - FIRST ASST (130-.15)"
* performer[va-p2].function.text -> "1331-1: fixed value = FIRST ASST" "generated from mapParameter line 1"
* performer[va-p2].function.coding -> "1331-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.15 \"FIRST ASST\"" "generated from mapParameter line 2"
* performer[va-p3].actor -> "1332: reference based on SURGERY - SECOND ASST (130-.16)"
* performer[va-p3].function.text -> "1332-1: fixed value = SECOND ASST" "generated from mapParameter line 1"
* performer[va-p3].function.coding -> "1332-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.16 \"SECOND ASST\"" "generated from mapParameter line 2"
* performer[va-p4].actor -> "1333: reference based on SURGERY - ATTENDING SURGEON (130-.164)"
* performer[va-p4].function.text -> "1333-1: fixed value = ATTENDING SURGEON" "generated from mapParameter line 1"
* performer[va-p4].function.coding -> "1333-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.164 \"ATTENDING SURGEON\"" "generated from mapParameter line 2"
* performer[va-p5].actor -> "1334: reference based on SURGERY - ASST PERFUSIONIST (130-.168)"
* performer[va-p5].function.text -> "1334-1: fixed value = ASST PERFUSIONIST" "generated from mapParameter line 1"
* performer[va-p5].function.coding -> "1334-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.168 \"ASST PERFUSIONIST\"" "generated from mapParameter line 2"
* performer[va-p6].actor -> "1335: reference based on SURGERY - SKIN PREPPED BY (1) (130-.18)"
* performer[va-p6].function.text -> "1335-1: fixed value = SKIN PREPPED BY (1)" "generated from mapParameter line 1"
* performer[va-p6].function.coding -> "1335-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.18 \"SKIN PREPPED BY (1)\"" "generated from mapParameter line 2"
* performer[va-p7].actor -> "1336: reference based on SURGERY - PRINC ANESTHETIST (130-.31)"
* performer[va-p7].function.text -> "1336-1: fixed value = PRINC ANESTHETIST" "generated from mapParameter line 1"
* performer[va-p7].function.coding -> "1336-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.31 \"PRINC ANESTHETIST\"" "generated from mapParameter line 2"
* performer[va-p8].actor -> "1337: reference based on SURGERY - RELIEF ANESTHETIST (130-.32)"
* performer[va-p8].function.text -> "1337-1: fixed value = RELIEF ANESTHETIST" "generated from mapParameter line 1"
* performer[va-p8].function.coding -> "1337-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.32 \"RELIEF ANESTHETIST\"" "generated from mapParameter line 2"
* performer[va-p9].actor -> "1338: reference based on SURGERY - ASST ANESTHETIST (130-.33)"
* performer[va-p9].function.text -> "1338-1: fixed value = ASST ANESTHETIST" "generated from mapParameter line 1"
* performer[va-p9].function.coding -> "1338-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.33 \"ASST ANESTHETIST\"" "generated from mapParameter line 2"
* performer[va-p10].actor -> "1339: reference based on SURGERY - ANESTHESIOLOGIST SUPVR (130-.34)"
* performer[va-p10].function.text -> "1339-1: fixed value = ANESTHESIOLOGIST SUPVR" "generated from mapParameter line 1"
* performer[va-p10].function.coding -> "1339-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.34 \"ANESTHESIOLOGIST SUPVR\"" "generated from mapParameter line 2"
* performer[va-p11].actor -> "1340: reference based on SURGERY - VERIFIER (130-.522)"
* performer[va-p11].function.text -> "1340-1: fixed value = VERIFIER" "generated from mapParameter line 1"
* performer[va-p11].function.coding -> "1340-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.522 \"VERIFIER\"" "generated from mapParameter line 2"
* performer[va-p12].actor -> "1341: reference based on SURGERY - PROVIDER (130-123)"
* performer[va-p12].function.text -> "1341-1: fixed value = PROVIDER" "generated from mapParameter line 1"
* performer[va-p12].function.coding -> "1341-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#123 \"PROVIDER\"" "generated from mapParameter line 2"
* performer[va-p13].actor -> "1342: reference based on SURGERY - FOLEY CATHETER INSERTED BY (130-.57)"
* performer[va-p13].function.text -> "1342-1: fixed value = FOLEY CATHETER INSERTED BY" "generated from mapParameter line 1"
* performer[va-p13].function.coding -> "1342-2: fixed value = http://va.gov/terminology/vistaDefinedTerms/130#.57 \"FOLEY CATHETER INSERTED BY\"" "generated from mapParameter line 2"
* code.text -> "1343: source value based on SURGERY - PRINCIPAL PROCEDURE (130-26)"
* code.coding -> "1344: source value based on SURGERY - PLANNED PRIN PROCEDURE CODE > CPT (130-27 > 81)"
* code.coding.code -> "1344-1: source value based on SURGERY - PLANNED PRIN PROCEDURE CODE > CPT - CPT CODE (130-27 > 81-.01)" "generated from mapParameter line 1"
* code.coding.system -> "1344-2: fixed value = http://www.ama-assn.org/go/cpt" "generated from mapParameter line 2"
* code.coding.display -> "1344-3: source value based on SURGERY - PLANNED PRIN PROCEDURE CODE > CPT - SHORT NAME (130-27 > 81-2)" "generated from mapParameter line 3"
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
* performer[va-p0].actor -> "Surg.SurgeryINTRA.PerfusionistStaffIEN"
* performer[va-p1].actor -> "Surg.SurgeryINTRA.SurgeonStaffIEN"
* performer[va-p2].actor -> "Surg.SurgeryINTRA.FirstAssistingStaffIEN"
* performer[va-p3].actor -> "Surg.SurgeryINTRA.SecondAssistingStaffIEN"
* performer[va-p4].actor -> "Surg.SurgeryINTRA.AttendingSurgeonStaffIEN"
* performer[va-p5].actor -> "Surg.SurgeryINTRA.AssistingPerfusionistStaffIEN"
* performer[va-p6].actor -> "Surg.SurgeryINTRA.SkinPreparationStaffIEN"
* performer[va-p7].actor -> "Surg.SurgeryINTRA.PrincipalAnesthetistStaffIEN"
* performer[va-p8].actor -> "Surg.SurgeryINTRA.ReliefAnesthetistStaffIEN"
* performer[va-p9].actor -> "Surg.SurgeryINTRA.AssistingAnesthetistStaffIEN"
* performer[va-p10].actor -> "Surg.SurgeryINTRA.AnesthesiologistSupervisorStaffIEN"
* performer[va-p11].actor -> "Surg.SurgeryINTRA.VerifierStaffIEN"
* performer[va-p12].actor -> "Surg.SurgeryINTRA.ProviderIEN"
* performer[va-p13].actor -> "Surg.SurgeryINTRA.FoleyCatheterStaffIEN"
* code.text -> "Surg.SurgeryPRE.PrincipalProcedureText"
* code.coding.code -> "Dim.CPT.CPTCode,Dim.CPT.CPTCode"
* code.coding.display -> "Dim.CPT.CPTName,Dim.CPT.CPTName"

Mapping: sda-to-ProcedureSurgeryProcedure
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ProcedureSurgeryProcedure
* encounter -> "Procedure.Extension[ProcedureExtension].SecondaryVisit"
* performedDateTime -> "Procedure.ProcedureTime"
* subject -> "Procedure.Procedure[CodeTableDetail.Procedure].Code"
* performer[va-p1].actor -> "Procedure.Clinician"
* performer[va-p4].actor -> "Procedure.Extension[ProcedureExtension].AttendingClinician"
* performer[va-p12].actor -> "Procedure.Clinician"

Mapping: vpr-to-ProcedureSurgeryProcedure
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ProcedureSurgeryProcedure
* encounter -> "surgery.encounter"
* performedDateTime -> "surgery.dateTime"
* performer[va-p1].actor -> "surgery.provider (>200-.01)"
* performer[va-p12].actor -> "surgery.provider"
* code.text -> "surgery.name"