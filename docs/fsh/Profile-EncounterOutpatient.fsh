Profile: EncounterOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterOutpatient
Title: "Encounter: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file VISIT (9000010) to us-core-encounter."
* ^status = #draft
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "$this"
* location ^slicing.rules = #open
* location contains va-stop 0..1 and va-loc 0..1
* extension contains http://va.gov/fhir/StructureDefinition/resource-serviceConnection named resource-serviceConnection 0..1
* identifier.value and identifier.system and status and extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding and serviceType.coding.code and serviceType.coding.system and subject and period.start and period.end and reasonCode.coding.code and reasonCode.coding.system and diagnosis.condition and location[va-stop].location and location[va-loc].location and class and serviceProvider and participant.individual and participant.type and type and type.coding.system and type.coding.code and type.coding.display and type.text MS
* subject only Reference(Patient)
* diagnosis.condition only Reference(ConditionEncounterDiagnosis)
* location[va-stop].location only Reference(Location)
* location[va-loc].location only Reference(Location)
* serviceProvider only Reference(Organization)
* participant.individual only Reference(Practitioner)
* identifier.system = "http://va.gov/identifiers/$Sta3n/9000010-15001"
* status obeys eo-19-430
* status obeys eo-19-431
* status obeys eo-19-432
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys eo-19-2035
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding obeys eo-19-2036
* serviceType.coding.system = "http://va.gov/terminology/VistADefinedTerms/9000010-.07"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* class from http://va.gov/fhir/ValueSet/encounterClass
* class ^binding.description = "see mapping [VF_encounterClass](ConceptMap-VF-encounterClass.html)"
* participant.type from http://va.gov/fhir/ValueSet/encounterParticipationType
* participant.type ^binding.description = "see mapping [VF_encounterParticipationType](ConceptMap-VF-encounterParticipationType.html)"
* type.coding.system = "http://www.ama-assn.org/go/cpt"

Invariant: eo-19-430
Description: "If (9000010-.01) is null or > now then fixed value #planned"
Severity: #warning
Expression: "true"

Invariant: eo-19-431
Description: "If (9000010-.01) is not null, < now, .18 null then fixed value #in-progress"
Severity: #warning
Expression: "true"

Invariant: eo-19-432
Description: "If (9000010-.18) is not null, < now then fixed value #finished"
Severity: #warning
Expression: "true"

Invariant: eo-19-2035
Description: "If (409.68-.1 > 409.1-.01) is SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\""
Severity: #warning
Expression: "true"

Invariant: eo-19-2036
Description: "If (409.68-.1 > 409.1-.01) is Not SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\""
Severity: #warning
Expression: "true"

Mapping: source-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value based on VISIT - VISIT ID (9000010-15001)"
* identifier.system -> "429-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010-15001" "generated from mapParameter line 1"
* status -> "430: fixed value = #planned when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) if null or > now"
* status -> "431: fixed value = #in-progress when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) if not null, < now, .18 null"
* status -> "432: fixed value = #finished when VISIT - CHECK OUT DATE&TIME (9000010-.18) if not null, < now"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2035: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) if SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2036: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) if Not SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* serviceType.coding.code -> "439: source value based on VISIT - SERVICE CATEGORY (9000010-.07)"
* serviceType.coding.system -> "439-1: fixed value = http://va.gov/terminology/VistADefinedTerms/9000010-.07" "generated from mapParameter line 1"
* subject -> "440: reference based on VISIT - PATIENT NAME > PATIENT/IHS - NAME (9000010-.05 > 9000001-.01)"
* period.start -> "443: source value based on VISIT - VISIT/ADMIT DATE&TIME (9000010-.01)"
* period.end -> "444: source value based on VISIT - CHECK OUT DATE&TIME (9000010-.18)"
* reasonCode.coding.code -> "447: source value based on V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)"
* reasonCode.coding.system -> "447-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* diagnosis.condition -> "452: reference based on V POV - PROBLEM LIST ENTRY (9000010.07-.16)"
* hospitalization -> "2030: target not supported" "because of must-support: Outpatient so no hospitalization"
* location[va-stop].location -> "458: reference based on VISIT - DSS ID (9000010-.08)" "Stop Code"
* location[va-loc].location -> "459: reference based on VISIT - HOSPITAL LOCATION (9000010-.22)"
* class -> "614: terminologyMaps using VF_encounterClass on VISIT - PATIENT STATUS IN/OUT (9000010-15002)" "84% are Outpatient (2024 Jan-Mar)"
* serviceProvider -> "1599: reference based on VISIT - LOC. OF ENCOUNTER > LOCATION - NAME (9000010-.06 > 9999999.06-.01)"
* participant.individual -> "1614: reference based on V PROVIDER - PROVIDER > NEW PERSON (9000010.06-.01 > 200-)"
* participant.type -> "1854: terminologyMaps using VF_encounterParticipationType on V PROVIDER - PRIMARY/SECONDARY (9000010.06-.04)"
* type -> "1615: source value based on V CPT - CPT > CPT (9000010.18-.01 > 81-)"
* type.coding.system -> "1615-1: fixed value = http://www.ama-assn.org/go/cpt" "generated from mapParameter line 1"
* type.coding.code -> "1615-2: source value based on V CPT - CPT > CPT - CPT CODE (9000010.18-.01 > 81-.01)" "generated from mapParameter line 2"
* type.coding.display -> "1615-3: source value based on V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2)" "generated from mapParameter line 3"
* type.text -> "1615-4: source value based on V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2)" "generated from mapParameter line 4"
* participant.period -> "1799: target not supported"
* reasonReference -> "2152: target not supported" "auto added because of must-support"

Mapping: cdw-to-EncounterOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterOutpatient
* identifier.value -> "Outpat.Visit.VisitIdentifier,Outpat.Workload.VisitIdentifier"
* status -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* status -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* status -> "Outpat.Visit.CheckOutDateTime,Outpat.Workload.CheckOutDateTime"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Outpat.Visit.AppointmentTypeIEN,Outpat.Workload.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Outpat.Visit.AppointmentTypeIEN,Outpat.Workload.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* serviceType.coding.code -> "Outpat.Visit.ServiceCategory,Outpat.Workload.ServiceCategory"
* subject -> "Outpat.Visit.PatientIEN,Outpat.Workload.PatientIEN"
* period.start -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* period.end -> "Outpat.Visit.CheckOutDateTime,Outpat.Workload.CheckOutDateTime"
* reasonCode.coding.code -> "Outpat.VDiagnosis.ICDIEN,Outpat.WorkloadVDiagnosis.ICDIEN\nDim.ICD10.ICD10Code,Dim.ICD9.ICD9Code"
* diagnosis.condition -> "Outpat.VDiagnosis.ProblemListIEN,Outpat.WorkloadVDiagnosis.ProblemListIEN"
* location[va-stop].location -> "Outpat.Visit.PrimaryStopCodeIEN,Outpat.Visit.SecondaryStopCodeIEN,Outpat.Workload.PrimaryStopCodeIEN,Outpat.Workload.SecondaryStopCodeIEN"
* location[va-loc].location -> "Outpat.Visit.LocationIEN,Outpat.Workload.LocationIEN"
* class -> "Outpat.Visit.PatientStatusInOut,Outpat.Workload.PatientStatusInOut"
* serviceProvider -> "Outpat.Visit.InstitutionIEN,Outpat.Workload.InstitutionIEN"
* participant.individual -> "Outpat.VProvider.ProviderIEN,Outpat.WorkloadVProvider.ProviderIEN"
* participant.type -> "Outpat.VProvider.PrimarySecondary,Outpat.WorkloadVProvider.PrimarySecondary"
* type -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN"
* type.coding.code -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTCode,Dim.CPT.CPTCode"
* type.coding.display -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName,Dim.CPT.CPTName"
* type.text -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName,Dim.CPT.CPTName"

Mapping: sda-to-EncounterOutpatient
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: EncounterOutpatient
* identifier.value -> "Encounter.Extension[EncounterExtension].VisitID,Encounter.Extension[EncounterExtension].VisitID"
* status -> "Encounter.ConsultingClinician[CareProvider].Description,Encounter.ConsultingClinician[CareProvider].Name"
* status -> "Encounter.ConsultingClinician[CareProvider].Description,Encounter.ConsultingClinician[CareProvider].Name"
* status -> "Encounter.ToTime"
* serviceType.coding.code -> "Encounter.EncounterCodedType,Encounter.ExternalId,Encounter.ToTime"
* subject -> "Encounter.EncounterMRN"
* period.start -> "Encounter.ConsultingClinician[CareProvider].Description,Encounter.ConsultingClinician[CareProvider].Name"
* period.end -> "Encounter.ToTime"
* reasonCode.coding.code -> "Diagnosis.Diagnosis,Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* diagnosis.condition -> "Diagnosis.Extension[DiagnosisExtension].ProblemId"
* location[va-stop].location -> "Encounter.Extension[EncounterExtension].StopCode"
* location[va-loc].location -> "Encounter.ExternalId,Encounter.HealthCareFacility"
* serviceProvider -> "Encounter.EncounterMRNAA,Encounter.EncounterNumberAssigningAuthority,Encounter.EnteredAt"
* participant.individual -> "Encounter.ConsultingClinicians"
* type -> "Encounter.Extension[EncounterExtension].Cpt,Encounter.Extension[EncounterExtension].Cpt,Procedure.Procedure,Procedure.Procedure[CodeTableDetail.Procedure].Code"
* type.coding.code -> "Encounter.Extension[EncounterExtension].Cpt,Encounter.Extension[EncounterExtension].Cpt,Procedure.Procedure,Procedure.Procedure[CodeTableDetail.Procedure].Code"
* type.coding.display -> "Encounter.Extension[EncounterExtension].Cpt,Encounter.Extension[EncounterExtension].Cpt,Procedure.Procedure,Procedure.Procedure[CodeTableDetail.Procedure].Code"
* type.text -> "Encounter.Extension[EncounterExtension].Cpt,Encounter.Extension[EncounterExtension].Cpt,Procedure.Procedure,Procedure.Procedure[CodeTableDetail.Procedure].Code"

Mapping: vpr-to-EncounterOutpatient
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: EncounterOutpatient
* status -> "visit.dateTime,visit.visitString"
* status -> "visit.dateTime,visit.visitString"
* serviceType.coding.code -> "visit.serviceCategory,visit.visitString"
* period.start -> "visit.dateTime,visit.visitString"
* reasonCode.coding.code -> "visit.icd [m] (>80-.01),visit.icd [m] (>80-1.1),visit.icd [m] (>80-10),visit.reason (>80-.01),visit.reason (>80-1.1),visit.reason (>80-10)"
* location[va-stop].location -> "visit.stopCode (>40.7-.01)"
* location[va-loc].location -> "visit.creditStopCode (>44-2503),visit.location (>44-.01),visit.visitString"
* class -> "visit.patientClass"
* serviceProvider -> "visit.facility (>4-.01),visit.facility (>4-99)"
* participant.individual -> "visit.provider [m] (>200-.01),visit.provider [m] (>200-8932.1)"
* participant.type -> "visit.provider [m]"
* type -> "visit.cpt [m] (>81-.01),visit.cpt [m] (>81-2),visit.type (>81-.01),visit.type (>81-2)"
* type.coding.code -> "visit.cpt [m] (>81-.01),visit.cpt [m] (>81-2),visit.type (>81-.01),visit.type (>81-2)"
* type.coding.display -> "visit.cpt [m] (>81-.01),visit.cpt [m] (>81-2),visit.type (>81-.01),visit.type (>81-2)"
* type.text -> "visit.cpt [m] (>81-.01),visit.cpt [m] (>81-2),visit.type (>81-.01),visit.type (>81-2)"