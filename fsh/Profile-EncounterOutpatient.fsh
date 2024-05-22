Profile: EncounterOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterOutpatient
Title: "Encounter: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file VISIT (9000010) to us-core-encounter"
* ^status = #draft
* identifier.value and identifier.system and status and serviceType.coding.code and serviceType.coding.system and subject and period.start and period.end and reasonCode.coding.code and reasonCode.coding.system and location.location and class and serviceProvider and participant.individual and participant.type.coding and type and type.coding.system and type.coding.code and type.coding.display and type.text MS
* identifier.system = "http://va.gov/terminology/VistADefinedTerms/9000010-15001"
* serviceType.coding.system = "http://va.gov/terminology/VistADefinedTerms/9000010-.07"
* reasonCode.coding.system = "urn:see-termmap-in-mapParameter"
* class from http://va.gov/fhir/ValueSet/VSVFencounterClass
* serviceProvider only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* participant.type.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* type.coding.system = "http://www.ama-assn.org/go/cpt"

Mapping: vista-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value from VISIT - VISIT ID (9000010-15001)"
* identifier.system -> "429-1: fixed value = http://va.gov/terminology/VistADefinedTerms/9000010-15001" "from mapParameter 1"
* status -> "430: fixed value = #planned when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case null or > now"
* status -> "431: fixed value = #in-progress when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case not null, < now, .18 null" "tweaked case logic 9/21"
* status -> "432: fixed value = #finished when VISIT - CHECK OUT DATE&TIME (9000010-.18) case not null, < now" "tweaked case logic 9/21"
* serviceType.coding.code -> "439: source value from VISIT - SERVICE CATEGORY (9000010-.07)"
* serviceType.coding.system -> "439-1: fixed value = http://va.gov/terminology/VistADefinedTerms/9000010-.07" "from mapParameter 1"
* subject -> "440: reference from VISIT - PATIENT NAME (9000010-.05)"
* period.start -> "443: source value from VISIT - VISIT/ADMIT DATE&TIME (9000010-.01)"
* period.end -> "444: source value from VISIT - CHECK OUT DATE&TIME (9000010-.18)"
* reasonCode.coding.code -> "447: source value from V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)"
* reasonCode.coding.system -> "447-1: fixed value = urn:see-termmap-in-mapParameter" "from mapParameter 1"
* location.location -> "458: reference from VISIT - DSS ID (9000010-.08) case stop"
* location.location -> "459: reference from VISIT - HOSPITAL LOCATION (9000010-.22) case location"
* class -> "614: terminologyMaps using VF_encounterClass on VISIT - PATIENT STATUS IN/OUT (9000010-15002)" "84% are Outpatient (2024 Jan-Mar)"
* serviceProvider -> "1599: reference from VISIT - LOC. OF ENCOUNTER > LOCATION - NAME (9000010-.06 > 9999999.06-.01)"
* participant.individual -> "1614: reference from V PROVIDER - PROVIDER > NEW PERSON (9000010.06-.01 > 200-)"
* participant.type.coding -> "1614-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF" "from mapParameter 1"
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
* serviceType.coding.code -> "Outpat.Visit.ServiceCategory,Outpat.Workload.ServiceCategory"
* subject -> "Outpat.Visit.PatientIEN,Outpat.Workload.PatientIEN"
* period.start -> "Immun.ImmunizationContraRefusalEvent.VisitDateTime,Outpat.Visit.VisitDateTime,Outpat.VisitLogic.VisitDateTime,Outpat.Workload.VisitDateTime"
* period.end -> "Outpat.Visit.CheckOutDateTime,Outpat.Workload.CheckOutDateTime"
* reasonCode.coding.code -> "Outpat.VDiagnosis.ICDIEN,Outpat.WorkloadVDiagnosis.ICDIEN\nDim.ICD10.ICD10Code,Dim.ICD9.ICD9Code"
* location.location -> "Outpat.Visit.PrimaryStopCodeIEN,Outpat.Visit.SecondaryStopCodeIEN,Outpat.Workload.PrimaryStopCodeIEN,Outpat.Workload.SecondaryStopCodeIEN"
* location.location -> "Outpat.Visit.LocationIEN,Outpat.Workload.LocationIEN"
* class -> "Outpat.Visit.PatientStatusInOut,Outpat.Workload.PatientStatusInOut"
* serviceProvider -> "Outpat.Visit.InstitutionIEN,Outpat.Workload.InstitutionIEN"
* participant.individual -> "Outpat.VProvider.ProviderIEN,Outpat.WorkloadVProvider.ProviderIEN"
* type -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN"
* type.coding.code -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTCode,Dim.CPT.CPTCode"
* type.coding.display -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName,Dim.CPT.CPTName"
* type.text -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN\nDim.CPT.CPTName,Dim.CPT.CPTName"