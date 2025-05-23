Profile: ImplantableDeviceProsthesis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceProsthesis
Title: "Implantable Device: Prosthesis"
Description: "This StructureDefinition contains the maps for VistA file PROSTHESIS INSTALLED (130.01) to us-core-implantable-device."
* ^status = #active
* identifier.value and identifier.system and manufacturer and expirationDate and lotNumber and serialNumber and deviceName.name and deviceName.type and modelNumber and type and patient and owner MS
* patient only Reference(Patient)
* owner only Reference(Organization)
* identifier.system = "http://va.gov/identifiers/$Sta3n/131.01"
* deviceName.type = #model-name
* type = http://snomed.info/sct#63653004 "Biomedical device"

Mapping: source-to-ImplantableDeviceProsthesis
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceProsthesis
* identifier.value -> "1348: source value based on PROSTHESIS INSTALLED - IEN (130.01-.001)"
* identifier.system -> "1348-1: fixed value = http://va.gov/identifiers/$Sta3n/131.01" "generated from mapParameter line 1"
* manufacturer -> "1365: source value based on PROSTHESIS INSTALLED - VENDOR (130.01-1)"
* expirationDate -> "1373: source value based on PROSTHESIS INSTALLED - STERILITY EXPIRATION DATE (130.01-9)"
* lotNumber -> "1376: source value based on PROSTHESIS INSTALLED - LOT NUMBER (130.01-11)"
* serialNumber -> "1379: source value based on PROSTHESIS INSTALLED - SERIAL NUMBER (130.01-12)"
* deviceName.name -> "1385: source value based on PROSTHESIS INSTALLED - PROSTHESIS ITEM > PROSTHESIS - NAME (130.01-.01 > 131.9-.01)"
* deviceName.type -> "1385-1: fixed value = #model-name" "generated from mapParameter line 1"
* modelNumber -> "1387: source value based on PROSTHESIS INSTALLED - MODEL (130.01-2)"
* type -> "1393: fixed value = http://snomed.info/sct#63653004 \"Biomedical device\"" "required, must support. SCT codes under 49062001 (Device)"
* patient -> "1399: reference based on SURGERY - PATIENT (130-.01)" "Surgery points to Prosthesis Installed in field .47"
* owner -> "1807: reference based on SURGERY - DIVISION (130-50)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"

Mapping: cdw-to-ImplantableDeviceProsthesis
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceProsthesis
* manufacturer -> "SPatient.ImplantedProsthesis.ProsthesisVendor"
* expirationDate -> "SPatient.ImplantedProsthesis.SterilityExpirationDate"
* lotNumber -> "SPatient.ImplantedProsthesis.LotNumber"
* serialNumber -> "SPatient.ImplantedProsthesis.SerialNumber"
* deviceName.name -> "SPatient.ImplantedProsthesis.ProsthesisIEN\nDim.Prosthesis.ProsthesisName"
* modelNumber -> "SPatient.ImplantedProsthesis.ProsthesisModel"
* patient -> "SPatient.ImplantedProsthesis.PatientIEN\nSPatient.OperationsIndication.PatientIEN\nSurg.AnesthesiaAgent.PatientIEN\nSurg.AnesthesiaBlockSite.PatientIEN\nSurg.AnesthesiaTechnique.PatientIEN\nSurg.AnesthesiaTestDose.PatientIEN\nSurg.ReferringPhysician.PatientIEN\nSurg.ReferringPhysician.PatientSID\nSurg.ReplacementFluidType.PatientIEN\nSurg.ReplacementFluidType.PatientSID\nSurg.SurgeryAssistant.PatientIEN\nSurg.SurgeryAssistantOther.PatientIEN\nSurg.SurgeryDelay.PatientIEN\nSurg.SurgeryINTRA.PatientIEN\nSurg.SurgeryIrrigation.PatientIEN\nSurg.SurgeryIrrigation.PatientSID\nSurg.SurgeryMedication.PatientIEN\nSurg.SurgeryOccurrenceNonOp.PatientIEN\nSurg.SurgeryOccurrenceNonOp.PatientSID\nSurg.SurgeryOtherPostOpDiagnosis.PatientIEN\nSurg.SurgeryOtherProcedure.PatientIEN\nSurg.SurgeryOtherProcedureCPTModifier.PatientIEN\nSurg.SurgeryOtherProcedureCPTModifier.PatientSID\nSurg.SurgeryOtherProcedureDiagnosis.PatientIEN\nSurg.SurgeryPOST.PatientIEN\nSurg.SurgeryPostOpDiagnosis.PatientIEN\nSurg.SurgeryPreOpDiagnosis.PatientIEN\nSurg.SurgeryPreOpDiagnosis.PatientSID\nSurg.SurgeryPrincipalAssociatedDiagnosis.PatientIEN\nSurg.SurgeryPrincipalAssociatedProcedure.PatientIEN\nSurg.SurgeryPrincipalCPTModifier.PatientIEN\nSurg.SurgeryPrincipalDiagnosis.PatientIEN\nSurg.SurgeryProcedureCPTModifier.PatientIEN\nSurg.SurgeryProcedureDiagnosisCode.PatientIEN\nSurg.SurgeryProcedureOccurrence.PatientIEN\nSurg.SurgeryProcedureOccurrence.PatientSID\nSurg.SurgeryRequiredBloodProducts.PatientIEN\nSurg.SurgeryReturnCase.PatientIEN\nSurg.SurgORCircSupport.PatientIEN\nSurg.SurgORCircSupportTime.PatientIEN\nSurg.SurgORCircSupportTime.PatientSID\nSurg.SurgORScrubSupport.PatientIEN\nSurg.SurgORScrubSupportTime.PatientIEN\nSurg.SurgORScrubSupportTime.PatientSID"
* owner -> "Surg.SurgeryINTRA.InstitutionIEN\nSurg.SurgeryPOST.InstitutionIEN"

Mapping: sda-to-ImplantableDeviceProsthesis
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ImplantableDeviceProsthesis
* patient -> "Procedure.Procedure[CodeTableDetail.Procedure].Code"
* owner -> "Procedure.EnteredAt"

Mapping: vpr-to-ImplantableDeviceProsthesis
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ImplantableDeviceProsthesis
* owner -> "surgery.facility (>4-.01)\nsurgery.facility (>4-99)"