Profile: ProcedureOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureOutpatient
Title: "Procedure: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file V CPT (9000010.18) to us-core-procedure."
* ^status = #active
* subject and encounter and code.text and reasonCode and reasonCode.coding.system and reasonCode.coding.code and performedDateTime and performer.actor and note.text and category and code.coding and code.coding.code and code.coding.display and code.coding.system and status MS
* subject only Reference(Patient)
* encounter only Reference(EncounterOutpatient)
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* category = http://snomed.info/sct#371883000 "Outpatient procedure (procedure)"
* code.coding.system = "http://www.ama-assn.org/go/cpt"
* status = #completed

Mapping: source-to-ProcedureOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureOutpatient
* subject -> "1299: reference based on V CPT - PATIENT NAME > PATIENT/IHS - NAME (9000010.18-.02 > 9000001-.01)" "is reference to file #2"
* encounter -> "1300: reference based on V CPT - VISIT (9000010.18-.03)"
* code.text -> "1301: source value based on V CPT - PROVIDER NARRATIVE > PROVIDER NARRATIVE - NARRATIVE (9000010.18-.04 > 9999999.27-.01)"
* reasonCode -> "1302: source value based on V CPT - DIAGNOSIS > ICD DIAGNOSIS (9000010.18-.05 > 80-)"
* reasonCode.coding.system -> "1302-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1302-2: source value based on V CPT - DIAGNOSIS > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.05 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1303: source value based on V CPT - DIAGNOSIS 2 > ICD DIAGNOSIS (9000010.18-.09 > 80-)"
* reasonCode.coding.system -> "1303-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1303-2: source value based on V CPT - DIAGNOSIS 2 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.09 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1304: source value based on V CPT - DIAGNOSIS 3 > ICD DIAGNOSIS (9000010.18-.1 > 80-)"
* reasonCode.coding.system -> "1304-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1304-2: source value based on V CPT - DIAGNOSIS 3 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.1 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1305: source value based on V CPT - DIAGNOSIS 4 > ICD DIAGNOSIS (9000010.18-.11 > 80-)"
* reasonCode.coding.system -> "1305-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1305-2: source value based on V CPT - DIAGNOSIS 4 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.11 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1306: source value based on V CPT - DIAGNOSIS 5 > ICD DIAGNOSIS (9000010.18-.12 > 80-)"
* reasonCode.coding.system -> "1306-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1306-2: source value based on V CPT - DIAGNOSIS 5 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.12 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1307: source value based on V CPT - DIAGNOSIS 6 > ICD DIAGNOSIS (9000010.18-.13 > 80-)"
* reasonCode.coding.system -> "1307-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1307-2: source value based on V CPT - DIAGNOSIS 6 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.13 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1308: source value based on V CPT - DIAGNOSIS 7 > ICD DIAGNOSIS (9000010.18-.14 > 80-)"
* reasonCode.coding.system -> "1308-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1308-2: source value based on V CPT - DIAGNOSIS 7 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.14 > 80-.01)" "generated from mapParameter line 2"
* reasonCode -> "1309: source value based on V CPT - DIAGNOSIS 8 > ICD DIAGNOSIS (9000010.18-.15 > 80-)"
* reasonCode.coding.system -> "1309-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode.coding.code -> "1309-2: source value based on V CPT - DIAGNOSIS 8 > ICD DIAGNOSIS - CODE NUMBER (9000010.18-.15 > 80-.01)" "generated from mapParameter line 2"
* performedDateTime -> "1310: source value based on V CPT - EVENT DATE AND TIME (9000010.18-1201)"
* performer.actor -> "1311: reference based on V CPT - ENCOUNTER PROVIDER (9000010.18-1204)"
* note.text -> "1312: source value based on V CPT - COMMENTS (9000010.18-81101)"
* category -> "1314: fixed value = http://snomed.info/sct#371883000 \"Outpatient procedure (procedure)\""
* code.coding -> "1413: source value based on V CPT - CPT > CPT (9000010.18-.01 > 81-)"
* code.coding.code -> "1413-1: source value based on V CPT - CPT > CPT - CPT CODE (9000010.18-.01 > 81-.01)" "generated from mapParameter line 1"
* code.coding.display -> "1413-2: source value based on V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2)" "generated from mapParameter line 2"
* code.coding.system -> "1413-3: fixed value = http://www.ama-assn.org/go/cpt" "generated from mapParameter line 3"
* status -> "1539: fixed value = #completed" "From the description of the file these look like completed procedures. Check with Jay."

Mapping: cdw-to-ProcedureOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureOutpatient
* subject -> "Outpat.VProcedure.PatientIEN\nOutpat.VProcedureCPTModifier.PatientIEN\nOutpat.VProcedureDiagnosis.PatientIEN\nOutpat.WorkloadVProcedure.PatientIEN\nOutpat.WorkloadVProcedureCPTModifier.PatientIEN\nOutpat.WorkloadVProcedureDiagnosis.PatientIEN"
* encounter -> "Outpat.VProcedure.VisitDateTime\nOutpat.VProcedure.VisitIEN\nOutpat.VProcedureCPTModifier.VisitDateTime\nOutpat.VProcedureCPTModifier.VisitIEN\nOutpat.VProcedureDiagnosis.VisitDateTime\nOutpat.VProcedureDiagnosis.VisitIEN\nOutpat.WorkloadVProcedure.VisitDateTime\nOutpat.WorkloadVProcedure.VisitIEN\nOutpat.WorkloadVProcedureCPTModifier.VisitDateTime\nOutpat.WorkloadVProcedureCPTModifier.VisitIEN\nOutpat.WorkloadVProcedureDiagnosis.VisitDateTime\nOutpat.WorkloadVProcedureDiagnosis.VisitIEN"
* code.text -> "Outpat.VProcedure.ProviderNarrativeIEN\nOutpat.WorkloadVProcedure.ProviderNarrativeIEN\nDim.ProviderNarrative.ProviderNarrative"
* reasonCode -> "Outpat.VProcedureDiagnosis.ICDIEN\nOutpat.WorkloadVProcedureDiagnosis.ICDIEN"
* reasonCode.coding.code -> "Outpat.VProcedureDiagnosis.ICDIEN\nOutpat.WorkloadVProcedureDiagnosis.ICDIEN\nDim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode.coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* performedDateTime -> "Outpat.VProcedure.EventDateTime\nOutpat.VProcedureDiagnosis.EventDateTime\nOutpat.WorkloadVProcedure.EventDateTime\nOutpat.WorkloadVProcedureDiagnosis.EventDateTime"
* performer.actor -> "Outpat.VProcedure.EncounterProviderIEN\nOutpat.WorkloadVProcedure.EncounterProviderIEN"
* note.text -> "Outpat.VProcedure.Comments\nOutpat.WorkloadVProcedure.Comments"
* code.coding -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN"
* code.coding.code -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTCode\nDim.CPT.CPTCode"
* code.coding.display -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName\nDim.CPT.CPTName"

Mapping: sda-to-ProcedureOutpatient
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ProcedureOutpatient
* encounter -> "Procedure.EncounterNumber\nProcedure.EnteredAt\nProcedure.EnteredBy\nProcedure.EnteredOn\nProcedure.Extension[ProcedureExtension].Location"
* code.text -> "Procedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].OriginalText"
* performedDateTime -> "Procedure.FromTime\nProcedure.ProcedureTime"
* performer.actor -> "Procedure.Clinician"
* note.text -> "Procedure.Extension[ProcedureExtension].Comments"
* code.coding -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"
* code.coding.code -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"
* code.coding.display -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"

Mapping: vpr-to-ProcedureOutpatient
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ProcedureOutpatient
* code.coding -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"
* code.coding.code -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"
* code.coding.display -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"