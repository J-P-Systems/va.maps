Profile: ImplantableDeviceProsthesis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceProsthesis
Title: "Implantable Device: Prosthesis"
Description: "This StructureDefinition contains the maps for VistA file PROSTHESIS INSTALLED (130.01) to us-core-implantable-device."
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|6.1.0"
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
* identifier.value -> "1348: source value from PROSTHESIS INSTALLED - IEN (130.01-.001)"
* identifier.system -> "1348-1: fixed value = http://va.gov/identifiers/$Sta3n/131.01" "from mapParameter 1"
* manufacturer -> "1365: source value from PROSTHESIS INSTALLED - VENDOR (130.01-1)"
* expirationDate -> "1373: source value from PROSTHESIS INSTALLED - STERILITY EXPIRATION DATE (130.01-9)"
* lotNumber -> "1376: source value from PROSTHESIS INSTALLED - LOT NUMBER (130.01-11)"
* serialNumber -> "1379: source value from PROSTHESIS INSTALLED - SERIAL NUMBER (130.01-12)"
* deviceName.name -> "1385: source value from PROSTHESIS INSTALLED - PROSTHESIS ITEM > PROSTHESIS - NAME (130.01-.01 > 131.9-.01)"
* deviceName.type -> "1385-1: fixed value = #model-name" "from mapParameter 1"
* modelNumber -> "1387: source value from PROSTHESIS INSTALLED - MODEL (130.01-2)"
* type -> "1393: fixed value = http://snomed.info/sct#63653004 \"Biomedical device\"" "required, must support. SCT codes under 49062001 (Device)"
* patient -> "1399: reference from SURGERY - PATIENT (130-.01)" "Surgery points to Prosthesis Installed in field .47"
* owner -> "1807: reference from SURGERY - DIVISION (130-50)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"
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
* patient -> "SPatient.ImplantedProsthesis.PatientIEN,SPatient.OperationsIndication.PatientIEN,Surg.AnesthesiaAgent.PatientIEN,Surg.AnesthesiaBlockSite.PatientIEN,Surg.AnesthesiaTechnique.PatientIEN,Surg.AnesthesiaTestDose.PatientIEN,Surg.ReferringPhysician.PatientIEN,Surg.ReferringPhysician.PatientSID,Surg.ReplacementFluidType.PatientIEN,Surg.ReplacementFluidType.PatientSID,Surg.SurgeryAssistant.PatientIEN,Surg.SurgeryAssistantOther.PatientIEN,Surg.SurgeryDelay.PatientIEN,Surg.SurgeryINTRA.PatientIEN,Surg.SurgeryIrrigation.PatientIEN,Surg.SurgeryIrrigation.PatientSID,Surg.SurgeryMedication.PatientIEN,Surg.SurgeryOccurrenceNonOp.PatientIEN,Surg.SurgeryOccurrenceNonOp.PatientSID,Surg.SurgeryOtherPostOpDiagnosis.PatientIEN,Surg.SurgeryOtherProcedure.PatientIEN,Surg.SurgeryOtherProcedureCPTModifier.PatientIEN,Surg.SurgeryOtherProcedureCPTModifier.PatientSID,Surg.SurgeryOtherProcedureDiagnosis.PatientIEN,Surg.SurgeryPOST.PatientIEN,Surg.SurgeryPostOpDiagnosis.PatientIEN,Surg.SurgeryPreOpDiagnosis.PatientIEN,Surg.SurgeryPreOpDiagnosis.PatientSID,Surg.SurgeryPrincipalAssociatedDiagnosis.PatientIEN,Surg.SurgeryPrincipalAssociatedProcedure.PatientIEN,Surg.SurgeryPrincipalCPTModifier.PatientIEN,Surg.SurgeryPrincipalDiagnosis.PatientIEN,Surg.SurgeryProcedureCPTModifier.PatientIEN,Surg.SurgeryProcedureDiagnosisCode.PatientIEN,Surg.SurgeryProcedureOccurrence.PatientIEN,Surg.SurgeryProcedureOccurrence.PatientSID,Surg.SurgeryRequiredBloodProducts.PatientIEN,Surg.SurgeryReturnCase.PatientIEN,Surg.SurgORCircSupport.PatientIEN,Surg.SurgORCircSupportTime.PatientIEN,Surg.SurgORCircSupportTime.PatientSID,Surg.SurgORScrubSupport.PatientIEN,Surg.SurgORScrubSupportTime.PatientIEN,Surg.SurgORScrubSupportTime.PatientSID"
* owner -> "Surg.SurgeryINTRA.InstitutionIEN,Surg.SurgeryPOST.InstitutionIEN"

Mapping: sda-to-ImplantableDeviceProsthesis
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ImplantableDeviceProsthesis
* patient -> "Procedure.Procedure[CodeTableDetail.Procedure].Code"
* owner -> "Procedure.EnteredAt"