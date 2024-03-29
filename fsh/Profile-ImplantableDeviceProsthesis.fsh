Profile: ImplantableDeviceProsthesis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceProsthesis
Title: "Implantable Device: Prosthesis"
Description: "This StructureDefinition contains the maps for VistA file PROSTHESIS INSTALLED (#130.01) to us-core-implantable-device"
* ^status = #draft
* identifier.value and manufacturer and expirationDate and lotNumber and serialNumber and deviceName.name and modelNumber and type and patient MS
* type = http://snomed.info/sct#63653004 "Biomedical device"

Mapping: vista-to-ImplantableDeviceProsthesis
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceProsthesis
* identifier.value -> "1348: source value from PROSTHESIS INSTALLED - IEN (#130.01-.001)"
* manufacturer -> "1365: source value from PROSTHESIS INSTALLED - VENDOR (#130.01-1)"
* expirationDate -> "1373: source value from PROSTHESIS INSTALLED - STERILITY EXPIRATION DATE (#130.01-9)"
* lotNumber -> "1376: source value from PROSTHESIS INSTALLED - LOT NUMBER (#130.01-11)"
* serialNumber -> "1379: source value from PROSTHESIS INSTALLED - SERIAL NUMBER (#130.01-12)"
* deviceName.name -> "1385: source value from PROSTHESIS INSTALLED - PROSTHESIS ITEM > PROSTHESIS - NAME (#130.01-.01 > 131.9-.01)"
* modelNumber -> "1387: source value from PROSTHESIS INSTALLED - MODEL (#130.01-2)"
* type -> "1393: fixed value = http://snomed.info/sct#63653004 Biomedical device" "required, must support. SCT codes under 49062001 (Device)"
* patient -> "1399: reference from SURGERY - PATIENT (#130-.01)" "Surgery points to Prosthesis Installed in field .47"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"

Mapping: cdw-to-ImplantableDeviceProsthesis
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceProsthesis
* manufacturer -> "SPatient.ImplantedProsthesis.ProsthesisVendor"
* expirationDate -> "SPatient.ImplantedProsthesis.SterilityExpirationDate"
* lotNumber -> "SPatient.ImplantedProsthesis.LotNumber"
* serialNumber -> "SPatient.ImplantedProsthesis.SerialNumber"
* deviceName.name -> "Dim.Prosthesis.ProsthesisName"
* modelNumber -> "SPatient.ImplantedProsthesis.ProsthesisModel"
* patient -> "Surg.AnesthesiaAgent.PatientIEN,Surg.AnesthesiaBlockSite.PatientIEN,Surg.AnesthesiaTechnique.PatientIEN,Surg.AnesthesiaTestDose.PatientIEN,Surg.ReferringPhysician.PatientIEN,Surg.ReplacementFluidType.PatientIEN,Surg.SurgeryAssistant.PatientIEN,Surg.SurgeryAssistantOther.PatientIEN,Surg.SurgeryDelay.PatientIEN,Surg.SurgeryINTRA.PatientIEN,Surg.SurgeryIrrigation.PatientIEN,Surg.SurgeryMedication.PatientIEN,Surg.SurgeryOccurrenceNonOp.PatientIEN,Surg.SurgeryOtherProcedure.PatientIEN,Surg.SurgeryOtherProcedureCPTModifier.PatientIEN,Surg.SurgeryOtherProcedureDiagnosis.PatientIEN,Surg.SurgeryPostOpDiagnosis.PatientIEN,Surg.SurgeryPreOpDiagnosis.PatientIEN,Surg.SurgeryPrincipalDiagnosis.PatientIEN,Surg.SurgeryProcedureCPTModifier.PatientIEN,Surg.SurgeryProcedureOccurrence.PatientIEN,Surg.SurgeryRequiredBloodProducts.PatientIEN,Surg.SurgeryReturnCase.PatientIEN,Surg.SurgORCircSupport.PatientIEN,Surg.SurgORCircSupportTime.PatientIEN,Surg.SurgORScrubSupport.PatientIEN,Surg.SurgORScrubSupportTime.PatientIEN"