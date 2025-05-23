Profile: EncounterInpatientEncounter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterInpatientEncounter
Title: "Encounter: Inpatient Encounter"
Description: "This StructureDefinition contains the maps for VistA file PTF (45) to us-core-encounter."
* ^status = #draft
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-IEN 0..1 and va-IA 0..1
* reasonCode ^slicing.discriminator.type = #value
* reasonCode ^slicing.discriminator.path = "$this"
* reasonCode ^slicing.rules = #open
* reasonCode contains va-principle 0..1 and va-secondary 0..1 and va-procedure 0..1
* location ^slicing.discriminator.type = #value
* location ^slicing.discriminator.path = "$this"
* location ^slicing.rules = #open
* location contains va-ward 0..1 and va-facility 0..1
* identifier[va-IEN].value and identifier[va-IEN].system and identifier[va-IEN].type.text and class and identifier[va-IA].value and identifier[va-IA].system and identifier[va-IA].type.text and status and subject and participant.individual and participant.type.coding and period.start and period.end and reasonCode[va-principle].coding.code and reasonCode[va-principle].coding.system and diagnosis.condition and diagnosis.rank and reasonCode[va-secondary].coding.code and reasonCode[va-secondary].coding.system and reasonCode[va-procedure].coding.code and reasonCode[va-procedure].coding.system and hospitalization.admitSource.coding.code and hospitalization.admitSource.coding.system and hospitalization.admitSource.coding and hospitalization.origin.display and hospitalization.destination.display and hospitalization.dischargeDisposition.coding.code and hospitalization.dischargeDisposition.coding.system and location[va-ward].location and location[va-facility].location and serviceProvider and type and type.coding.system and type.coding.code and type.coding.display and type.text MS
* subject only Reference(Patient)
* participant.individual only Reference(Practitioner)
* diagnosis.condition only Reference(EncounterInpatientCondition)
* location[va-ward].location only Reference(Location)
* location[va-facility].location only Reference(Location)
* serviceProvider only Reference(Organization)
* identifier[va-IEN].system = "http://va.gov/identifiers/$Sta3n/45"
* identifier[va-IEN].type.text = "IEN"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* identifier[va-IA].system = "http://va.gov/identifiers/$Sta3n/45-2.1"
* identifier[va-IA].type.text = "Internal Admission #"
* status obeys eie-27-433
* status obeys eie-27-434
* status obeys eie-27-435
* participant.type.coding = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF
* reasonCode[va-principle].coding.system = "urn:see-termmap-in-mapParameter"
* diagnosis.rank = 1
* reasonCode[va-secondary].coding.system = "urn:see-termmap-in-mapParameter"
* reasonCode[va-procedure].coding.system = "http://www.cms.gov/Medicare/Coding/ICD10"
* hospitalization.admitSource.coding.system = "http://va.gov/terminology/vistaDefinedTerms/45.1"
* hospitalization.admitSource.coding from http://va.gov/fhir/ValueSet/SourceOfAdmission
* hospitalization.admitSource.coding ^binding.description = "see mapping [VF_SourceOfAdmission](ConceptMap-VF-SourceOfAdmission.html)"
* hospitalization.dischargeDisposition.coding.system = "http://va.gov/terminology/vistaDefinedTerms/45.6"
* type.coding.system = "http://www.ama-assn.org/go/cpt"

Invariant: eie-27-433
Description: "If (45-2) is null or > now then fixed value #planned"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eie-27-434
Description: "If (45-2) is not null, < now, field 70 null then fixed value #in-progress"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: eie-27-435
Description: "If (45-70) is not null then fixed value #finished"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-EncounterInpatientEncounter
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientEncounter
* identifier[va-IEN].value -> "427: source value based on PTF - NUMBER (45-.001)" "removed use=IFN typo and split of class to new mapset row"
* identifier[va-IEN].system -> "427-1: fixed value = http://va.gov/identifiers/$Sta3n/45" "generated from mapParameter line 1"
* identifier[va-IEN].type.text -> "427-2: fixed value = IEN" "generated from mapParameter line 2"
* class -> "1601: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP"
* identifier[va-IA].value -> "428: source value based on PTF - INTERNAL ADMISSION # (45-2.1)"
* identifier[va-IA].system -> "428-1: fixed value = http://va.gov/identifiers/$Sta3n/45-2.1" "generated from mapParameter line 1"
* identifier[va-IA].type.text -> "428-2: fixed value = Internal Admission #" "generated from mapParameter line 2"
* status -> "433: fixed value = #planned when PTF - ADMISSION DATE (45-2) if null or > now"
* status -> "434: fixed value = #in-progress when PTF - ADMISSION DATE (45-2) if not null, < now, field 70 null"
* status -> "435: fixed value = #finished when PTF - DISCHARGE DATE (45-70) if not null"
* subject -> "441: reference based on PTF - PATIENT (45-.01)"
* participant.individual -> "442: reference based on PTF - PROVIDER (45-79.1)"
* participant.type.coding -> "442-1: fixed value = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#PPRF" "generated from mapParameter line 1"
* period.start -> "445: source value based on PTF - ADMISSION DATE (45-2)"
* period.end -> "446: source value based on PTF - DISCHARGE DATE (45-70)"
* reasonCode[va-principle].coding.code -> "448: source value based on PTF - PRINCIPAL DIAGNOSIS (45-79)"
* reasonCode[va-principle].coding.system -> "448-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* diagnosis.condition -> "1723: reference" "This points to the Condition identified at #956"
* diagnosis.rank -> "1723-1: fixed value = 1" "generated from mapParameter line 1"
* reasonCode[va-secondary].coding.code -> "449: source value based on PTF - SECONDARY DIAGNOSIS 1-24 > ICD DIAGNOSIS - CODE NUMBER (45-79.* > 80-.01)" "*) 79.16-79.19,79.201,79.21-79.24,79.241-79.249,79.2491,79.24911-79.24915"
* reasonCode[va-secondary].coding.system -> "449-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* reasonCode[va-procedure].coding.code -> "450: source value based on PTF - PROCEDURE 1-5 > ICD OPERATION/PROCEDURE - CODE NUMBER (45-45.01+to+45.05 > 80.1-.01)" "45.01-45.05"
* reasonCode[va-procedure].coding.system -> "450-1: fixed value = http://www.cms.gov/Medicare/Coding/ICD10" "generated from mapParameter line 1"
* hospitalization.admitSource.coding.code -> "453: source value based on PTF - SOURCE OF ADMISSION > SOURCE OF ADMISSION - PTF CODE (45-20 > 45.1-.01)"
* hospitalization.admitSource.coding.system -> "453-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/45.1" "generated from mapParameter line 1"
* hospitalization.admitSource.coding -> "955: terminologyMaps using VF_SourceOfAdmission on PTF - SOURCE OF ADMISSION > SOURCE OF ADMISSION - PTF CODE (45-20 > 45.1-.01)" "preferred binding"
* hospitalization.origin.display -> "454: source value based on PTF - TRANSFERRING FACILITY (45-21.1)"
* hospitalization.destination.display -> "455: source value based on PTF - RECEIVING FACILITY (45-76.1)"
* hospitalization.dischargeDisposition.coding.code -> "456: source value based on PTF - PLACE OF DISPOSITION (45-75)"
* hospitalization.dischargeDisposition.coding.system -> "456-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/45.6" "generated from mapParameter line 1"
* location[va-ward].location -> "460: reference based on PTF - WARD AT DISCHARGE > WARD LOCATION - HOSPITAL LOCATION FILE POINTER (45-2.2 > 42-44)" "computed\n45-2.2 is in CDW ; DIM WardLocation.SID 104.302 indirect pointer"
* location[va-facility].location -> "461: reference based on PTF - FACILITY (45-3)" "This is the Sta3n"
* serviceProvider -> "1600: reference based on PTF - FACILITY (45-3)"
* type -> "1616: source value based on INPATIENT CPT CODE - CPT CODE > CPT (46-.01 > 81-)"
* type.coding.system -> "1616-1: fixed value = http://www.ama-assn.org/go/cpt" "generated from mapParameter line 1"
* type.coding.code -> "1616-2: source value based on INPATIENT CPT CODE - CPT CODE > CPT - CPT CODE (46-.01 > 81-.01)" "generated from mapParameter line 2"
* type.coding.display -> "1616-3: source value based on INPATIENT CPT CODE - CPT CODE > CPT - SHORT NAME (46-.01 > 81-2)" "generated from mapParameter line 3"
* type.text -> "1616-4: source value based on INPATIENT CPT CODE - CPT CODE > CPT - SHORT NAME (46-.01 > 81-2)" "generated from mapParameter line 4"
* participant.period -> "1800: target not supported"
* reasonReference -> "2144: target not supported" "auto added because of must-support"

Mapping: cdw-to-EncounterInpatientEncounter
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientEncounter
* status -> "Inpat.Census.AdmitDateSID\nInpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.AdmitDateSID\nInpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.CensusDateSID\nInpat.Census.CensusDateTime\nInpat.Census501.CensusDateTime\nInpat.Census501Diagnosis.CensusDateTime\nInpat.Census535.CensusDateTime\nInpat.CensusDiagnosis.CensusDateTime\nInpat.CensusICDProcedure.CensusDateTime\nInpat.CensusSurgicalProcedure.CensusDateTime\nInpat.Inpatient.DischargeDateTime\nInpat.Inpatient501Transaction.DischargeDateTime\nInpat.Inpatient501TransactionDiagnosis.DischargeDateTime\nInpat.Inpatient535Multiple.DischargeDateTime\nInpat.Inpatient535Transaction.DischargeDateTime\nInpat.InpatientDiagnosis.DischargeDateTime\nInpat.InpatientFeeBasis.DischargeDateTime\nInpat.InpatientFeeDiagnosis.DischargeDateTime\nInpat.InpatientICDProcedure.DischargeDateTime\nInpat.InpatientSurgicalProcedure.DischargeDateTime"
* subject -> "Inpat.Census.PatientIEN\nInpat.Census501.PatientIEN\nInpat.Census501.PatientSID\nInpat.Census535.PatientIEN\nInpat.CensusDiagnosis.PatientIEN\nInpat.CensusICDProcedure.PatientIEN\nInpat.CensusSurgicalProcedure.PatientIEN\nInpat.Inpatient.PatientIEN\nInpat.Inpatient501Transaction.PatientIEN\nInpat.Inpatient535Transaction.PatientIEN\nInpat.InpatientDiagnosis.PatientIEN\nInpat.InpatientDischargeDiagnosis.PatientIEN\nInpat.InpatientFeeBasis.PatientIEN\nInpat.InpatientFeeDiagnosis.PatientIEN\nInpat.InpatientICDProcedure.PatientIEN\nInpat.InpatientSurgicalProcedure.PatientIEN\nInpat.PresentOnAdmission.PatientIEN"
* period.start -> "Inpat.Census.AdmitDateSID\nInpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* period.end -> "Inpat.Census.CensusDateSID\nInpat.Census.CensusDateTime\nInpat.Census501.CensusDateTime\nInpat.Census501Diagnosis.CensusDateTime\nInpat.Census535.CensusDateTime\nInpat.CensusDiagnosis.CensusDateTime\nInpat.CensusICDProcedure.CensusDateTime\nInpat.CensusSurgicalProcedure.CensusDateTime\nInpat.Inpatient.DischargeDateTime\nInpat.Inpatient501Transaction.DischargeDateTime\nInpat.Inpatient501TransactionDiagnosis.DischargeDateTime\nInpat.Inpatient535Multiple.DischargeDateTime\nInpat.Inpatient535Transaction.DischargeDateTime\nInpat.InpatientDiagnosis.DischargeDateTime\nInpat.InpatientFeeBasis.DischargeDateTime\nInpat.InpatientFeeDiagnosis.DischargeDateTime\nInpat.InpatientICDProcedure.DischargeDateTime\nInpat.InpatientSurgicalProcedure.DischargeDateTime"
* reasonCode[va-principle].coding.code -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"
* reasonCode[va-secondary].coding.code -> "Dim.ICD10.ICD10Code\nDim.ICD9.ICD9Code"
* reasonCode[va-procedure].coding.code -> "Dim.ICD10Procedure.ICD10ProcedureCode\nDim.ICD9Procedure.ICD9ProcedureCode"
* hospitalization.admitSource.coding.code -> "Inpat.Census.AdmitSourceIEN\nInpat.Inpatient.AdmitSourceIEN\nInpat.InpatientFeeBasis.AdmitSourceIEN\nDim.AdmitSource.AdmitSourceCode"
* hospitalization.admitSource.coding -> "Inpat.Census.AdmitSourceIEN\nInpat.Inpatient.AdmitSourceIEN\nInpat.InpatientFeeBasis.AdmitSourceIEN\nDim.AdmitSource.AdmitSourceCode"
* hospitalization.origin.display -> "Inpat.Census.TransferringFacility\nInpat.Inpatient.TransferFromFacility\nInpat.InpatientFeeBasis.TransferringFacility"
* hospitalization.destination.display -> "Inpat.Census.ReceivingFacility\nInpat.Inpatient.TransferToFacility\nInpat.InpatientFeeBasis.ReceivingFacility"
* hospitalization.dischargeDisposition.coding.code -> "Inpat.Census.PlaceOfDispositionIEN\nInpat.Inpatient.PlaceOfDispositionIEN\nInpat.InpatientFeeBasis.PlaceOfDispositionIEN"
* location[va-ward].location -> "Inpat.Inpatient.Discharge45WardLocationIEN\nDim.WardLocation.LocationIEN"
* location[va-facility].location -> "Inpat.Census.DischargeFacility\nInpat.Inpatient.DischargeFromFacility\nInpat.InpatientFeeBasis.DischargeFacility"
* serviceProvider -> "Inpat.Census.DischargeFacility\nInpat.Inpatient.DischargeFromFacility\nInpat.InpatientFeeBasis.DischargeFacility"
* type -> "Inpat.InpatientCPTProcedure.CPTIEN"
* type.coding.code -> "Inpat.InpatientCPTProcedure.CPTIEN\nDim.CPT.CPTCode\nDim.CPT.CPTCode"
* type.coding.display -> "Inpat.InpatientCPTProcedure.CPTIEN\nDim.CPT.CPTName\nDim.CPT.CPTName"
* type.text -> "Inpat.InpatientCPTProcedure.CPTIEN\nDim.CPT.CPTName\nDim.CPT.CPTName"

Mapping: sda-to-EncounterInpatientEncounter
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: EncounterInpatientEncounter
* status -> "Diagnosis.FromTime"
* status -> "Diagnosis.FromTime"
* status -> "Diagnosis.ToTime"
* subject -> "Diagnosis.Diagnosis[CodeTableDetail.Diagnosis].Code"
* participant.individual -> "Diagnosis.DiagnosingClinician"
* period.start -> "Diagnosis.FromTime"
* period.end -> "Diagnosis.ToTime"
* reasonCode[va-principle].coding.code -> "Diagnosis.Diagnosis\nDiagnosis.DiagnosisType"
* location[va-facility].location -> "Diagnosis.EnteredAt\nProcedure.EnteredAt"
* serviceProvider -> "Diagnosis.EnteredAt\nProcedure.EnteredAt"