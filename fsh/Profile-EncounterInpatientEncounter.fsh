Profile: EncounterInpatientEncounter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterInpatientEncounter
Title: "Encounter: Inpatient Encounter"
Description: "This StructureDefinition contains the maps for VistA file PTF (45) to us-core-encounter"
* ^status = #draft
* identifier.value and class and status and subject and participant.individual and period.start and period.end and reasonCode.coding.code and diagnosis.condition and hospitalization.admitSource.coding.code and hospitalization.admitSource.coding and hospitalization.origin.display and hospitalization.destination.display and hospitalization.dischargeDisposition.coding.code and location.location and serviceProvider and type MS
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* diagnosis.condition only Reference(EncounterInpatientCondition)
* hospitalization.admitSource.coding from http://va.gov/fhir/ValueSet/VSVFSourceOfAdmission

Mapping: vista-to-EncounterInpatientEncounter
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientEncounter
* identifier.value -> "427: source value from PTF - NUMBER (45-.001)" "removed use=IFN typo and split of class to new mapset row"
* class -> "1601: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP"
* identifier.value -> "428: source value from PTF - INTERNAL ADMISSION # (45-2.1)"
* status -> "433: fixed value = #planned when PTF - ADMISSION DATE (45-2) case null or > now"
* status -> "434: fixed value = #in-progress when PTF - ADMISSION DATE (45-2) case not null, < now, field 70 null" "tweaked case logic 9/21"
* status -> "435: fixed value = #finished when PTF - DISCHARGE DATE (45-70) case not null"
* subject -> "441: reference from PTF - PATIENT (45-.01)"
* participant.individual -> "442: reference from PTF - PROVIDER (45-79.1)"
* period.start -> "445: source value from PTF - ADMISSION DATE (45-2)"
* period.end -> "446: source value from PTF - DISCHARGE DATE (45-70)"
* reasonCode.coding.code -> "448: source value from PTF - PRINCIPAL DIAGNOSIS (45-79)"
* diagnosis.condition -> "1723: reference"
* reasonCode.coding.code -> "449: source value from PTF - SECONDARY DIAGNOSIS [#] (45-79.16)" "79.16 and following"
* reasonCode.coding.code -> "450: source value from PTF - PROCEDURE [#] (45-45.01)" "45.01 and following"
* hospitalization.admitSource.coding.code -> "453: source value from PTF - SOURCE OF ADMISSION > SOURCE OF ADMISSION - PTF CODE (45-20 > 45.1-.01)"
* hospitalization.admitSource.coding -> "955: terminologyMaps using VF_SourceOfAdmission on PTF - SOURCE OF ADMISSION > SOURCE OF ADMISSION - PTF CODE (45-20 > 45.1-.01)" "preferred binding"
* hospitalization.origin.display -> "454: source value from PTF - TRANSFERRING FACILITY (45-21.1)"
* hospitalization.destination.display -> "455: source value from PTF - RECEIVING FACILITY (45-76.1)"
* hospitalization.dischargeDisposition.coding.code -> "456: source value from PTF - PLACE OF DISPOSITION (45-75)"
* location.location -> "460: reference from PTF - WARD AT DISCHARGE (45-2.2)"
* location.location -> "461: reference from PTF - FACILITY (45-3)"
* serviceProvider -> "1600: reference from PTF - FACILITY (45-3)"
* type -> "1616: source value from INPATIENT CPT CODE - CPT CODE > CPT (46-.01 > 81-)"
* participant.period -> "1800: target not supported"

Mapping: cdw-to-EncounterInpatientEncounter
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientEncounter
* status -> "Inpat.Census.AdmitDateSID,Inpat.Census.AdmitDateTime,Inpat.Census501.AdmitDateTime,Inpat.Census501Diagnosis.AdmitDateTime,Inpat.Census535.AdmitDateTime,Inpat.CensusDiagnosis.AdmitDateTime,Inpat.CensusICDProcedure.AdmitDateTime,Inpat.CensusSurgicalProcedure.AdmitDateTime,Inpat.Inpatient.AdmitDateTime,Inpat.Inpatient501Multiple.AdmitDateTime,Inpat.Inpatient501Transaction.AdmitDateTime,Inpat.Inpatient535Multiple.AdmitDateTime,Inpat.Inpatient535Transaction.AdmitDateTime,Inpat.InpatientDischargeDiagnosis.AdmitDateTime,Inpat.InpatientFeeBasis.AdmitDateTime,Inpat.InpatientFeeDiagnosis.AdmitDateTime,Inpat.InpatientICDProcedure.AdmitDateTime,Inpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.AdmitDateSID,Inpat.Census.AdmitDateTime,Inpat.Census501.AdmitDateTime,Inpat.Census501Diagnosis.AdmitDateTime,Inpat.Census535.AdmitDateTime,Inpat.CensusDiagnosis.AdmitDateTime,Inpat.CensusICDProcedure.AdmitDateTime,Inpat.CensusSurgicalProcedure.AdmitDateTime,Inpat.Inpatient.AdmitDateTime,Inpat.Inpatient501Multiple.AdmitDateTime,Inpat.Inpatient501Transaction.AdmitDateTime,Inpat.Inpatient535Multiple.AdmitDateTime,Inpat.Inpatient535Transaction.AdmitDateTime,Inpat.InpatientDischargeDiagnosis.AdmitDateTime,Inpat.InpatientFeeBasis.AdmitDateTime,Inpat.InpatientFeeDiagnosis.AdmitDateTime,Inpat.InpatientICDProcedure.AdmitDateTime,Inpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.CensusDateSID,Inpat.Census.CensusDateTime,Inpat.Census501.CensusDateTime,Inpat.Census501Diagnosis.CensusDateTime,Inpat.Census535.CensusDateTime,Inpat.CensusDiagnosis.CensusDateTime,Inpat.CensusICDProcedure.CensusDateTime,Inpat.CensusSurgicalProcedure.CensusDateTime,Inpat.Inpatient.DischargeDateTime,Inpat.Inpatient501Transaction.DischargeDateTime,Inpat.Inpatient501TransactionDiagnosis.DischargeDateTime,Inpat.Inpatient535Multiple.DischargeDateTime,Inpat.Inpatient535Transaction.DischargeDateTime,Inpat.InpatientDiagnosis.DischargeDateTime,Inpat.InpatientFeeBasis.DischargeDateTime,Inpat.InpatientFeeDiagnosis.DischargeDateTime,Inpat.InpatientICDProcedure.DischargeDateTime,Inpat.InpatientSurgicalProcedure.DischargeDateTime"
* subject -> "Inpat.Census.PatientIEN,Inpat.Census501.PatientIEN,Inpat.Census501.PatientSID,Inpat.Census535.PatientIEN,Inpat.CensusDiagnosis.PatientIEN,Inpat.CensusICDProcedure.PatientIEN,Inpat.CensusSurgicalProcedure.PatientIEN,Inpat.Inpatient.PatientIEN,Inpat.Inpatient501Transaction.PatientIEN,Inpat.Inpatient535Transaction.PatientIEN,Inpat.InpatientDiagnosis.PatientIEN,Inpat.InpatientDischargeDiagnosis.PatientIEN,Inpat.InpatientFeeBasis.PatientIEN,Inpat.InpatientFeeDiagnosis.PatientIEN,Inpat.InpatientICDProcedure.PatientIEN,Inpat.InpatientSurgicalProcedure.PatientIEN,Inpat.PresentOnAdmission.PatientIEN"
* period.start -> "Inpat.Census.AdmitDateSID,Inpat.Census.AdmitDateTime,Inpat.Census501.AdmitDateTime,Inpat.Census501Diagnosis.AdmitDateTime,Inpat.Census535.AdmitDateTime,Inpat.CensusDiagnosis.AdmitDateTime,Inpat.CensusICDProcedure.AdmitDateTime,Inpat.CensusSurgicalProcedure.AdmitDateTime,Inpat.Inpatient.AdmitDateTime,Inpat.Inpatient501Multiple.AdmitDateTime,Inpat.Inpatient501Transaction.AdmitDateTime,Inpat.Inpatient535Multiple.AdmitDateTime,Inpat.Inpatient535Transaction.AdmitDateTime,Inpat.InpatientDischargeDiagnosis.AdmitDateTime,Inpat.InpatientFeeBasis.AdmitDateTime,Inpat.InpatientFeeDiagnosis.AdmitDateTime,Inpat.InpatientICDProcedure.AdmitDateTime,Inpat.InpatientSurgicalProcedure.AdmitDateTime"
* period.end -> "Inpat.Census.CensusDateSID,Inpat.Census.CensusDateTime,Inpat.Census501.CensusDateTime,Inpat.Census501Diagnosis.CensusDateTime,Inpat.Census535.CensusDateTime,Inpat.CensusDiagnosis.CensusDateTime,Inpat.CensusICDProcedure.CensusDateTime,Inpat.CensusSurgicalProcedure.CensusDateTime,Inpat.Inpatient.DischargeDateTime,Inpat.Inpatient501Transaction.DischargeDateTime,Inpat.Inpatient501TransactionDiagnosis.DischargeDateTime,Inpat.Inpatient535Multiple.DischargeDateTime,Inpat.Inpatient535Transaction.DischargeDateTime,Inpat.InpatientDiagnosis.DischargeDateTime,Inpat.InpatientFeeBasis.DischargeDateTime,Inpat.InpatientFeeDiagnosis.DischargeDateTime,Inpat.InpatientICDProcedure.DischargeDateTime,Inpat.InpatientSurgicalProcedure.DischargeDateTime"
* reasonCode.coding.code -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"
* reasonCode.coding.code -> "Inpat.CensusDiagnosis.ICDIEN,Inpat.InpatientDiagnosis.ICDIEN"
* hospitalization.admitSource.coding.code -> "Inpat.Census.AdmitSourceIEN,Inpat.Inpatient.AdmitSourceIEN,Inpat.InpatientFeeBasis.AdmitSourceIEN\nDim.AdmitSource.AdmitSourceCode"
* hospitalization.admitSource.coding -> "Inpat.Census.AdmitSourceIEN,Inpat.Inpatient.AdmitSourceIEN,Inpat.InpatientFeeBasis.AdmitSourceIEN\nDim.AdmitSource.AdmitSourceCode"
* hospitalization.origin.display -> "Inpat.Census.TransferringFacility,Inpat.Inpatient.TransferFromFacility,Inpat.InpatientFeeBasis.TransferringFacility"
* hospitalization.destination.display -> "Inpat.Census.ReceivingFacility,Inpat.Inpatient.TransferToFacility,Inpat.InpatientFeeBasis.ReceivingFacility"
* hospitalization.dischargeDisposition.coding.code -> "Inpat.Census.PlaceOfDispositionIEN,Inpat.Inpatient.PlaceOfDispositionIEN,Inpat.InpatientFeeBasis.PlaceOfDispositionIEN"
* location.location -> "Inpat.Inpatient.Discharge45WardLocationIEN"
* location.location -> "Inpat.Census.DischargeFacility,Inpat.Inpatient.DischargeFromFacility,Inpat.InpatientFeeBasis.DischargeFacility"
* serviceProvider -> "Inpat.Census.DischargeFacility,Inpat.Inpatient.DischargeFromFacility,Inpat.InpatientFeeBasis.DischargeFacility"
* type -> "Inpat.InpatientCPTProcedure.CPTIEN"