Profile: EncounterOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterOutpatient
Title: "Encounter: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file VISIT (9000010) to us-core-encounter"
* ^status = #draft
* identifier.value and status and serviceType.coding.code and subject and period.start and period.end and reasonCode.coding.code and diagnosis.condition and location.location and class and serviceProvider and participant.individual and type MS
* class from http://va.gov/fhir/ValueSet/VSVFencounterClass

Mapping: vista-to-EncounterOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterOutpatient
* identifier.value -> "429: source value from VISIT - VISIT ID (9000010-15001)"
* status -> "430: fixed value = #planned when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case null or > now"
* status -> "431: fixed value = #in-progress when VISIT - VISIT/ADMIT DATE&TIME (9000010-.01) case not null, < now, .18 null" "tweaked case logic 9/21"
* status -> "432: fixed value = #finished when VISIT - CHECK OUT DATE&TIME (9000010-.18) case not null, < now" "tweaked case logic 9/21"
* serviceType.coding.code -> "439: source value from VISIT - SERVICE CATEGORY (9000010-.07)"
* subject -> "440: reference from VISIT - PATIENT NAME (9000010-.05)"
* period.start -> "443: source value from VISIT - VISIT/ADMIT DATE&TIME (9000010-.01)"
* period.end -> "444: source value from VISIT - CHECK OUT DATE&TIME (9000010-.18)"
* reasonCode.coding.code -> "447: source value from V POV - POV > ICD DIAGNOSIS - CODE NUMBER (9000010.07-.01 > 80-.01)"
* diagnosis.condition -> "452: reference from V POV - PROBLEM LIST ENTRY (9000010.07-.16)" "added parameter"
* location.location -> "458: reference from VISIT - DSS ID (9000010-.08) case stop"
* location.location -> "459: reference from VISIT - HOSPITAL LOCATION (9000010-.22) case location"
* class -> "614: terminologyMaps using VF_encounterClass on VISIT - PATIENT STATUS IN/OUT (9000010-15002)" "84% are Outpatient (2024 Jan-Mar)"
* serviceProvider -> "1599: reference from VISIT - LOC. OF ENCOUNTER > LOCATION - NAME (9000010-.06 > 9999999.06-.01)"
* participant.individual -> "1614: reference from V PROVIDER - PROVIDER > NEW PERSON (9000010.06-.01 > 200-)"
* type -> "1615: source value from V CPT - CPT > CPT (9000010.18-.01 > 81-)"
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
* diagnosis.condition -> "Outpat.VDiagnosis.ProblemListIEN,Outpat.WorkloadVDiagnosis.ProblemListIEN"
* location.location -> "Outpat.Visit.PrimaryStopCodeIEN,Outpat.Visit.SecondaryStopCodeIEN,Outpat.Workload.PrimaryStopCodeIEN,Outpat.Workload.SecondaryStopCodeIEN"
* location.location -> "Outpat.Visit.LocationIEN,Outpat.Workload.LocationIEN"
* class -> "Outpat.Visit.PatientStatusInOut,Outpat.Workload.PatientStatusInOut"
* serviceProvider -> "Outpat.Visit.InstitutionIEN,Outpat.Workload.InstitutionIEN"
* participant.individual -> "Outpat.VProvider.ProviderIEN,Outpat.WorkloadVProvider.ProviderIEN"
* type -> "Outpat.VProcedure.CPTIEN,Outpat.VProcedureCPTModifier.CPTIEN,Outpat.VProcedureDiagnosis.CPTIEN,Outpat.WorkloadVProcedure.CPTIEN,Outpat.WorkloadVProcedureCPTModifier.CPTIEN,Outpat.WorkloadVProcedureDiagnosis.CPTIEN"