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
* reasonCode.coding.code obeys eo-19-447
* reasonCode.coding.system obeys eo-19-447-1
* diagnosis.condition obeys eo-19-452
* class from http://va.gov/fhir/ValueSet/encounterClass
* class ^binding.description = "see mapping [VF_encounterClass](ConceptMap-VF-encounterClass.html)"
* participant.individual obeys eo-19-1614
* participant.type from http://va.gov/fhir/ValueSet/encounterParticipationType
* participant.type ^binding.description = "see mapping [VF_encounterParticipationType](ConceptMap-VF-encounterParticipationType.html)"
* participant.type obeys eo-19-1854
* type obeys eo-19-1615
* type.coding.system obeys eo-19-1615-1
* type.coding.code obeys eo-19-1615-2
* type.coding.display obeys eo-19-1615-3
* type.text obeys eo-19-1615-4

Invariant: eo-19-430
Description: "If (9000010-.01) is null or > now then fixed value #planned"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-431
Description: "If (9000010-.01) is not null, < now, .18 null then fixed value #in-progress"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-432
Description: "If (9000010-.18) is not null, < now then fixed value #finished"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-2035
Description: "If (409.68-.1 > 409.1-.01) is {.03>9000010} SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-2036
Description: "If (409.68-.1 > 409.1-.01) is {.03>9000010}  Not SERVICE CONNECTED then fixed value http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\""
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-447
Description: "If {.03>9000010} then source value from (9000010.07-.01 > 80-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-447-1
Description: "If {.03>9000010} then fixed value urn:see-termmap-in-mapParameter"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-452
Description: "If {.03>9000010} then reference /ConditionEncounterDiagnosis based on (9000010.07-.16)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1614
Description: "If {.03>9000010} then reference /Practitioner based on (9000010.06-.01 > 200-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1854
Description: "If {.03>9000010} then terminologyMaps (9000010.06-.04) using VF_encounterParticipationType"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1615
Description: "If {.03>9000010} then source value from (9000010.18-.01 > 81-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1615-1
Description: "If {.03>9000010} then fixed value http://www.ama-assn.org/go/cpt"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1615-2
Description: "If {.03>9000010} then source value from (9000010.18-.01 > 81-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1615-3
Description: "If {.03>9000010} then source value from (9000010.18-.01 > 81-2)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eo-19-1615-4
Description: "If {.03>9000010} then source value from (9000010.18-.01 > 81-2)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value based on VISIT - VISIT ID (9000010-15001)"
* identifier.system -> "429-1: fixed value = http://va.gov/identifiers/$Sta3n/9000010-15001" "generated from mapParameter line 1"
* status -> "430: fixed value = #planned when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) if null or > now"
* status -> "431: fixed value = #in-progress when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) if not null, < now, .18 null"
* status -> "432: fixed value = #finished when VISIT - CHECK OUT DATE&TIME (9000010-.18) if not null, < now"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2035: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#SC \"Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) if {.03>9000010} SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "2036: fixed value = http://va.gov/fhir/vistaDefinedTerms/409.1#NSC \"Not Service Connected\" when OUTPATIENT ENCOUNTER - APPOINTMENT TYPE > APPOINTMENT TYPE - NAME (409.68-.1 > 409.1-.01) if {.03>9000010}  Not SERVICE CONNECTED" "Outpatient Encounter points to Visit (409.68-.05)"
* serviceType.coding.code -> "439: source value based on VISIT - SERVICE CATEGORY (9000010-.07)"
* serviceType.coding.system -> "439-1: fixed value = http://va.gov/terminology/VistADefinedTerms/9000010-.07" "generated from mapParameter line 1"
* subject -> "440: reference based on VISIT - PATIENT NAME > PATIENT/IHS - NAME (9000010-.05 > 9000001-.01)"
* period.start -> "443: source value based on VISIT - VISIT/ADMIT DATE&TIME (9000010-.01)"
* period.end -> "444: source value based on VISIT - CHECK OUT DATE&TIME (9000010-.18)"
* reasonCode.coding.code -> "447: source value based on V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01) if {.03>9000010}"
* reasonCode.coding.system -> "447-1: fixed value = urn:see-termmap-in-mapParameter if {.03>9000010}" "generated from mapParameter line 1"
* diagnosis.condition -> "452: reference based on V POV - PROBLEM LIST ENTRY (9000010.07-.16) if {.03>9000010}"
* hospitalization -> "2030: target not supported" "because of must-support: Outpatient so no hospitalization"
* location[va-stop].location -> "458: reference based on VISIT - DSS ID (9000010-.08)" "Stop Code"
* location[va-loc].location -> "459: reference based on VISIT - HOSPITAL LOCATION (9000010-.22)"
* class -> "614: terminologyMaps using VF_encounterClass on VISIT - PATIENT STATUS IN/OUT (9000010-15002)" "84% are Outpatient (2024 Jan-Mar)"
* serviceProvider -> "1599: reference based on VISIT - LOC. OF ENCOUNTER > LOCATION - NAME (9000010-.06 > 9999999.06-.01)"
* participant.individual -> "1614: reference based on V PROVIDER - PROVIDER > NEW PERSON (9000010.06-.01 > 200-) if {.03>9000010}"
* participant.type -> "1854: terminologyMaps using VF_encounterParticipationType on V PROVIDER - PRIMARY/SECONDARY (9000010.06-.04) if {.03>9000010}"
* type -> "1615: source value based on V CPT - CPT > CPT (9000010.18-.01 > 81-) if {.03>9000010}"
* type.coding.system -> "1615-1: fixed value = http://www.ama-assn.org/go/cpt if {.03>9000010}" "generated from mapParameter line 1"
* type.coding.code -> "1615-2: source value based on V CPT - CPT > CPT - CPT CODE (9000010.18-.01 > 81-.01) if {.03>9000010}" "generated from mapParameter line 2"
* type.coding.display -> "1615-3: source value based on V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2) if {.03>9000010}" "generated from mapParameter line 3"
* type.text -> "1615-4: source value based on V CPT - CPT > CPT - SHORT NAME (9000010.18-.01 > 81-2) if {.03>9000010}" "generated from mapParameter line 4"
* participant.period -> "1799: target not supported"
* reasonReference -> "2152: target not supported" "auto added because of must-support"

Mapping: cdw-to-EncounterOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterOutpatient
* identifier.value -> "Outpat.Visit.VisitIdentifier\nOutpat.Workload.VisitIdentifier"
* status -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime\nOutpat.Visit.VisitDateTime\nOutpat.VisitLogic.VisitDateTime\nOutpat.Workload.VisitDateTime"
* status -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime\nOutpat.Visit.VisitDateTime\nOutpat.VisitLogic.VisitDateTime\nOutpat.Workload.VisitDateTime"
* status -> "Outpat.Visit.CheckOutDateTime\nOutpat.Workload.CheckOutDateTime"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Outpat.Visit.AppointmentTypeIEN\nOutpat.Workload.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* extension[http://va.gov/fhir/StructureDefinition/resource-serviceConnection].valueCoding -> "Outpat.Visit.AppointmentTypeIEN\nOutpat.Workload.AppointmentTypeIEN\nDim.AppointmentType.AppointmentType"
* serviceType.coding.code -> "Outpat.Visit.ServiceCategory\nOutpat.Workload.ServiceCategory"
* subject -> "Outpat.Visit.PatientIEN\nOutpat.Workload.PatientIEN"
* period.start -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime\nOutpat.Visit.VisitDateTime\nOutpat.VisitLogic.VisitDateTime\nOutpat.Workload.VisitDateTime"
* period.end -> "Outpat.Visit.CheckOutDateTime\nOutpat.Workload.CheckOutDateTime"
* reasonCode.coding.code -> "Outpat.VDiagnosis.ICDIEN\nOutpat.WorkloadVDiagnosis.ICDIEN\nDim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* diagnosis.condition -> "Outpat.VDiagnosis.ProblemListIEN\nOutpat.WorkloadVDiagnosis.ProblemListIEN"
* location[va-stop].location -> "Outpat.Visit.PrimaryStopCodeIEN\nOutpat.Visit.SecondaryStopCodeIEN\nOutpat.Workload.PrimaryStopCodeIEN\nOutpat.Workload.SecondaryStopCodeIEN"
* location[va-loc].location -> "Outpat.Visit.LocationIEN\nOutpat.Workload.LocationIEN"
* class -> "Outpat.Visit.PatientStatusInOut\nOutpat.Workload.PatientStatusInOut"
* serviceProvider -> "Outpat.Visit.InstitutionIEN\nOutpat.Workload.InstitutionIEN"
* participant.individual -> "Outpat.VProvider.ProviderIEN\nOutpat.WorkloadVProvider.ProviderIEN"
* participant.type -> "Outpat.VProvider.PrimarySecondary\nOutpat.WorkloadVProvider.PrimarySecondary"
* type -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN"
* type.coding.code -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTCode\nDim.CPT.CPTCode"
* type.coding.display -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName\nDim.CPT.CPTName"
* type.text -> "Outpat.VProcedure.CPTIEN\nOutpat.VProcedureCPTModifier.CPTIEN\nOutpat.VProcedureDiagnosis.CPTIEN\nOutpat.WorkloadVProcedure.CPTIEN\nOutpat.WorkloadVProcedureCPTModifier.CPTIEN\nOutpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName\nDim.CPT.CPTName"

Mapping: sda-to-EncounterOutpatient
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: EncounterOutpatient
* identifier.value -> "Encounter.Extension[EncounterExtension].VisitID\nEncounter.Extension[EncounterExtension].VisitID"
* status -> "Encounter.ConsultingClinician[CareProvider].Description\nEncounter.ConsultingClinician[CareProvider].Name"
* status -> "Encounter.ConsultingClinician[CareProvider].Description\nEncounter.ConsultingClinician[CareProvider].Name"
* status -> "Encounter.ToTime"
* serviceType.coding.code -> "Encounter.EncounterCodedType\nEncounter.ExternalId\nEncounter.ToTime"
* subject -> "Encounter.EncounterMRN"
* period.start -> "Encounter.ConsultingClinician[CareProvider].Description\nEncounter.ConsultingClinician[CareProvider].Name"
* period.end -> "Encounter.ToTime"
* reasonCode.coding.code -> "Diagnosis.Diagnosis\nDiagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* diagnosis.condition -> "Diagnosis.Extension[DiagnosisExtension].ProblemId"
* location[va-stop].location -> "Encounter.Extension[EncounterExtension].StopCode"
* location[va-loc].location -> "Encounter.ExternalId\nEncounter.HealthCareFacility"
* serviceProvider -> "Encounter.EncounterMRNAA\nEncounter.EncounterNumberAssigningAuthority\nEncounter.EnteredAt"
* participant.individual -> "Encounter.ConsultingClinicians"
* type -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"
* type.coding.code -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"
* type.coding.display -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"
* type.text -> "Encounter.Extension[EncounterExtension].Cpt\nEncounter.Extension[EncounterExtension].Cpt\nProcedure.Procedure\nProcedure.Procedure[CodeTableDetail.Procedure].Code"

Mapping: vpr-to-EncounterOutpatient
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: EncounterOutpatient
* status -> "visit.dateTime\nvisit.visitString"
* status -> "visit.dateTime\nvisit.visitString"
* serviceType.coding.code -> "visit.serviceCategory\nvisit.visitString"
* period.start -> "visit.dateTime\nvisit.visitString"
* reasonCode.coding.code -> "visit.icd [m] (>80-.01)\nvisit.icd [m] (>80-1.1)\nvisit.icd [m] (>80-10)\nvisit.reason (>80-.01)\nvisit.reason (>80-1.1)\nvisit.reason (>80-10)"
* location[va-stop].location -> "visit.stopCode (>40.7-.01)"
* location[va-loc].location -> "visit.creditStopCode (>44-2503)\nvisit.location (>44-.01)\nvisit.visitString"
* class -> "visit.patientClass"
* serviceProvider -> "visit.facility (>4-.01)\nvisit.facility (>4-99)"
* participant.individual -> "visit.provider [m] (>200-.01)\nvisit.provider [m] (>200-8932.1)"
* participant.type -> "visit.provider [m]"
* type -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"
* type.coding.code -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"
* type.coding.display -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"
* type.text -> "visit.cpt [m] (>81-.01)\nvisit.cpt [m] (>81-2)\nvisit.type (>81-.01)\nvisit.type (>81-2)"