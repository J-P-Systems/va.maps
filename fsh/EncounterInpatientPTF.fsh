Profile: EncounterInpatientPTF
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Id: EncounterInpatientPTF
Title: "Encounter: Inpatient (PTF)"
Description: "This StructureDefinition contains the maps for VistA PTF (file 45) to FHIR Encounter"
* ^status = #draft
* class obeys inv-5
* status obeys inv-6
* hospitalization.admitSource.coding from http://va.gov/fhir/ValueSet/VSVFSourceOfAdmission
* serviceProvider only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)

Invariant: inv-5
Description: "1601: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode|IMP"
Severity: #warning

Invariant: inv-6
Description: "435: fixed value = finished if PTF - DISCHARGE DATE (#45-70) case not null"
Severity: #warning

Mapping: vista-to-EncounterInpatientPTF
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: EncounterInpatientPTF
* identifier.value -> "427: source value from PTF - NUMBER (#45-.001)" "MvdZ QA\nremoved use=IFN typo and split of class to new mapset row"
* class -> "1601: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode|IMP" "MvdZ QA"
* identifier.value -> "428: source value from PTF - INTERNAL ADMISSION # (#45-2.1)"
* status -> "433: transform using planned on PTF - ADMISSION DATE (#45-2) case null or > now"
* status -> "434: transform using in-progress on PTF - ADMISSION DATE (#45-2) case not null, < now, field 70 null" "tweaked case logic 9/21"
* status -> "435: fixed value = finished if PTF - DISCHARGE DATE (#45-70) case not null"
* subject -> "441: source value from PTF - PATIENT (#45-.01)"
* participant.individual -> "442: reference from PTF - PROVIDER (#45-79.1)" "MvdZ QA"
* period.start -> "445: source value from PTF - ADMISSION DATE (#45-2)"
* period.end -> "446: source value from PTF - DISCHARGE DATE (#45-70)"
* reasonCode -> "448: source value from PTF - PRINCIPAL DIAGNOSIS (#45-79)"
* reasonCode -> "449: source value from PTF - SECONDARY DIAGNOSIS [#] (#45-79.16)" "79.16 and following"
* reasonCode -> "450: source value from PTF - PROCEDURE [#] (#45-45.01)" "45.01 and following"
* hospitalization.admitSource.coding.code -> "453: source value from PTF - SOURCE OF ADMISSION > PRF CODE (#45-20 > 45.1-.01)" "MvdZ QA"
* hospitalization.admitSource.coding -> "955: terminologyMaps using VF_SourceOfAdmission on PTF - SOURCE OF ADMISSION > PRF CODE (#45-20 > 45.1-.01)" "preferred binding\nMvdZ QA"
* hospitalization.origin.display -> "454: source value from PTF - TRANSFERRING FACILITY (#45-21.1)"
* hospitalization.destination.display -> "455: source value from PTF - RECEIVING FACILITY (#45-76.1)"
* hospitalization.dischargeDisposition -> "456: source value from PTF - PLACE OF DISPOSITION (#45-75)"
* location.location -> "460: reference from PTF - WARD AT DISCHARGE (#45-2.2)" "added slicing"
* location.location -> "461: reference from PTF - FACILITY (#45-3)" "added slicing"
* serviceProvider -> "1600: reference from PTF - FACILITY (#45-3)"

Mapping: cdw-to-EncounterInpatientPTF
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: EncounterInpatientPTF
* identifier.value -> "Inpat.Census.AdmitEligibilityIEN\nInpat.Inpatient.AdmitEligibilityIEN\nInpat.InpatientFeeBasis.AdmitEligibilityIEN"
* status -> "Inpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* status -> "Inpat.Census.CensusDateTime\nInpat.Census501.CensusDateTime\nInpat.Census501Diagnosis.CensusDateTime\nInpat.Census535.CensusDateTime\nInpat.CensusDiagnosis.CensusDateTime\nInpat.CensusICDProcedure.CensusDateTime\nInpat.CensusSurgicalProcedure.CensusDateTime\nInpat.Inpatient.DischargeDateTime\nInpat.Inpatient501Transaction.DischargeDateTime\nInpat.Inpatient501TransactionDiagnosis.DischargeDateTime\nInpat.Inpatient535Multiple.DischargeDateTime\nInpat.Inpatient535Transaction.DischargeDateTime\nInpat.InpatientDiagnosis.DischargeDateTime\nInpat.InpatientFeeBasis.DischargeDateTime\nInpat.InpatientFeeDiagnosis.DischargeDateTime\nInpat.InpatientICDProcedure.DischargeDateTime\nInpat.InpatientSurgicalProcedure.DischargeDateTime"
* subject -> "Inpat.Census.PatientIEN\nInpat.Census501.PatientIEN\nInpat.Census535.PatientIEN\nInpat.CensusICDProcedure.PatientIEN\nInpat.CensusSurgicalProcedure.PatientIEN\nInpat.Inpatient.PatientIEN\nInpat.Inpatient501Transaction.PatientIEN\nInpat.Inpatient535Transaction.PatientIEN\nInpat.InpatientDiagnosis.PatientIEN\nInpat.InpatientDischargeDiagnosis.PatientIEN\nInpat.InpatientFeeBasis.PatientIEN\nInpat.InpatientICDProcedure.PatientIEN\nInpat.InpatientSurgicalProcedure.PatientIEN\nInpat.PresentOnAdmission.PatientIEN"
* period.start -> "Inpat.Census.AdmitDateTime\nInpat.Census501.AdmitDateTime\nInpat.Census501Diagnosis.AdmitDateTime\nInpat.Census535.AdmitDateTime\nInpat.CensusDiagnosis.AdmitDateTime\nInpat.CensusICDProcedure.AdmitDateTime\nInpat.CensusSurgicalProcedure.AdmitDateTime\nInpat.Inpatient.AdmitDateTime\nInpat.Inpatient501Multiple.AdmitDateTime\nInpat.Inpatient501Transaction.AdmitDateTime\nInpat.Inpatient535Multiple.AdmitDateTime\nInpat.Inpatient535Transaction.AdmitDateTime\nInpat.InpatientDischargeDiagnosis.AdmitDateTime\nInpat.InpatientFeeBasis.AdmitDateTime\nInpat.InpatientFeeDiagnosis.AdmitDateTime\nInpat.InpatientICDProcedure.AdmitDateTime\nInpat.InpatientSurgicalProcedure.AdmitDateTime"
* period.end -> "Inpat.Census.CensusDateTime\nInpat.Census501.CensusDateTime\nInpat.Census501Diagnosis.CensusDateTime\nInpat.Census535.CensusDateTime\nInpat.CensusDiagnosis.CensusDateTime\nInpat.CensusICDProcedure.CensusDateTime\nInpat.CensusSurgicalProcedure.CensusDateTime\nInpat.Inpatient.DischargeDateTime\nInpat.Inpatient501Transaction.DischargeDateTime\nInpat.Inpatient501TransactionDiagnosis.DischargeDateTime\nInpat.Inpatient535Multiple.DischargeDateTime\nInpat.Inpatient535Transaction.DischargeDateTime\nInpat.InpatientDiagnosis.DischargeDateTime\nInpat.InpatientFeeBasis.DischargeDateTime\nInpat.InpatientFeeDiagnosis.DischargeDateTime\nInpat.InpatientICDProcedure.DischargeDateTime\nInpat.InpatientSurgicalProcedure.DischargeDateTime"
* reasonCode -> "Inpat.Inpatient.PrincipalDiagnosisICDIEN"
* reasonCode -> "Inpat.InpatientDiagnosis.ICDIEN"
* hospitalization.admitSource.coding.code -> "Inpat.Census.AdmitSourceIEN\nInpat.Inpatient.AdmitSourceIEN\nInpat.InpatientFeeBasis.AdmitSourceIEN"
* hospitalization.admitSource.coding -> "Inpat.Census.AdmitSourceIEN\nInpat.Inpatient.AdmitSourceIEN\nInpat.InpatientFeeBasis.AdmitSourceIEN"
* hospitalization.origin.display -> "Inpat.Census.TransferringFacility\nInpat.Inpatient.TransferFromFacility\nInpat.InpatientFeeBasis.TransferringFacility"
* hospitalization.destination.display -> "Inpat.Census.ReceivingFacility\nInpat.Inpatient.TransferToFacility\nInpat.InpatientFeeBasis.ReceivingFacility"
* hospitalization.dischargeDisposition -> "Inpat.Census.PlaceOfDispositionIEN\nInpat.Inpatient.PlaceOfDispositionIEN\nInpat.InpatientFeeBasis.PlaceOfDispositionIEN"
* location.location -> "Inpat.Inpatient.Discharge45WardLocationIEN"
* location.location -> "Inpat.Census.DischargeFacility\nInpat.Inpatient.DischargeFromFacility\nInpat.InpatientFeeBasis.DischargeFacility"