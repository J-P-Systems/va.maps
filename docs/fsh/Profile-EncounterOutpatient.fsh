Profile: EncounterOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterOutpatient
Title: "Encounter: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file VISIT (9000010) to us-core-encounter."
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* location ^slicing.discriminator.type = #pattern
* location ^slicing.discriminator.path = "$this"
* location ^slicing.rules = #open
* location contains va-stop 0..1 and va-loc 0..1
* extension contains http://va.gov/fhir/StructureDefinition/resource-serviceConnection named resource-serviceConnection 0..1
* identifier.value and identifier.system and status and extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding and serviceType.coding.code and serviceType.coding.system and subject and period.start and period.end and reasonCode.coding.code and reasonCode.coding.system and diagnosis.condition and location[va-stop].location and location[va-loc].location and class and serviceProvider and participant.individual and participant.type and type and type.coding.system and type.coding.code and type.coding.display and type.text MS
* subject only Reference(Patient)
* diagnosis.condition only Reference(ConditionEncounterDiagnosis)
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
* participant.type from http://va.gov/fhir/ValueSet/encounterParticipationType
* type.coding.system = "http://www.ama-assn.org/go/cpt"

Invariant: eo-19-430
Description: "9000010-.01: if null or > now then #planned"
Severity: #warning

Invariant: eo-19-431
Description: "9000010-.01: if not null, < now, .18 null then #in-progress"
Severity: #warning

Invariant: eo-19-432
Description: "9000010-.18: if not null, < now then #finished"
Severity: #warning

Invariant: eo-19-2035
Description: "409.68-.1 > 409.1-.01: if SERVICE CONNECTED then http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\""
Severity: #warning

Invariant: eo-19-2036
Description: "409.68-.1 > 409.1-.01: if Not SERVICE CONNECTED then http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\""
Severity: #warning

Mapping: source-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value from VISIT - VISIT ID (9000010-15001)"
* identifier.system -> "429-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010-15001" "from mapParameter 1"
* status -> "430: fixed value = #planned when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case null or > now"
* status -> "431: fixed value = #in-progress when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case not null, < now, .18 null"
* status -> "432: fixed value = #finished when VISIT - CHECK OUT DATE&TIME (9000010-.18) case not null, < now"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2035: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) case SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2036: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) case Not SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* serviceType.coding.code -> "439: source value from VISIT - SERVICE CATEGORY (9000010-.07)"
* serviceType.coding.system -> "439-1: fixed value = http://va.gov/terminology/VistADefinedTerms/9000010-.07" "from mapParameter 1"
* subject -> "440: reference from VISIT - PATIENT NAME (9000010-.05)"
* period.start -> "443: source value from VISIT - VISIT/ADMIT DATE&TIME (9000010-.01)"
* period.end -> "444: source value from VISIT - CHECK OUT DATE&TIME (9000010-.18)"
* reasonCode.coding.code -> "447: source value from V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)"
* reasonCode.coding.system -> "447-1: fixed value = urn:see-termmap-in-mapParameter" "from mapParameter 1"
* diagnosis.condition -> "452: reference from V POV - PROBLEM LIST ENTRY (9000010.07-.16)"
* hospitalization -> "2030: target not supported" "because of must-support: Outpatient so no hospitalization"
* location[va-stop].location -> "458: reference from VISIT - DSS ID (9000010-.08)" "Stop Code"
* location[va-loc].location -> "459: reference from VISIT - HOSPITAL LOCATION (9000010-.22)"
* class -> "614: terminologyMaps using VF_encounterClass on VISIT - PATIENT STATUS IN/OUT (9000010-15002)" "84% are Outpatient (2024 Jan-Mar)"
* serviceProvider -> "1599: reference from VISIT - LOC. OF ENCOUNTER > LOCATION - NAME (9000010-.06 > 9999999.06-.01)"
* participant.individual -> "1614: reference from V PROVIDER - PROVIDER > NEW PERSON (9000010.06-.01 > 200-)"
* participant.type -> "1854: terminologyMaps using VF_encounterParticipationType on V PROVIDER - PRIMARY/SECONDARY (9000010.06-.04)"
* type -> "1615: source value from V CPT - CPT > CPT (9000010.18-.01 > 81-)"
* type.coding.system -> "1615-1: fixed value = http://www.ama-assn.org/go/cpt" "from mapParameter 1"
* type.coding.code -> "1615-2: source value from V CPT - CPT > CPT - CPT CODE (9000010.18-.01 > 81-.01)" "from mapParameter 2"
* type.coding.display -> "1615-3: source value from V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2)" "from mapParameter 3"
* type.text -> "1615-4: source value from V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2)" "from mapParameter 4"
* participant.period -> "1799: target not supported"

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