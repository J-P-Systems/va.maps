Profile: ImplantableDeviceProsthesis
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceProsthesis
Title: "Implantable Device: Prosthesis"
Description: "This StructureDefinition contains the maps for VistA file PROSTHESIS INSTALLED (#130.01) to us-core-implantable-device"
* ^status = #draft
* identifier.value and manufacturer and expirationDate and lotNumber and serialNumber and deviceName.name and modelNumber and type.coding.code and patient MS
* type.coding.code = #63653004

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
* type.coding.code -> "1393: fixed value = #63653004" "required, must support. SCT codes under 49062001 (Device)"
* patient -> "1399: reference from SURGERY - PATIENT (#130-.01)" "Surgery points to Prosthesis Installed in field .47"

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
* patient -> "Surg.AnesthesiaAgent.PatientIEN\nSurg.AnesthesiaBlockSite.PatientIEN\nSurg.AnesthesiaTechnique.PatientIEN\nSurg.AnesthesiaTestDose.PatientIEN\nSurg.ReferringPhysician.PatientIEN\nSurg.ReplacementFluidType.PatientIEN\nSurg.SurgeryAssistant.PatientIEN\nSurg.SurgeryAssistantOther.PatientIEN\nSurg.SurgeryDelay.PatientIEN\nSurg.SurgeryINTRA.PatientIEN\nSurg.SurgeryIrrigation.PatientIEN\nSurg.SurgeryMedication.PatientIEN\nSurg.SurgeryOccurrenceNonOp.PatientIEN\nSurg.SurgeryOtherProcedure.PatientIEN\nSurg.SurgeryOtherProcedureCPTModifier.PatientIEN\nSurg.SurgeryOtherProcedureDiagnosis.PatientIEN\nSurg.SurgeryPostOpDiagnosis.PatientIEN\nSurg.SurgeryPreOpDiagnosis.PatientIEN\nSurg.SurgeryPrincipalDiagnosis.PatientIEN\nSurg.SurgeryProcedureCPTModifier.PatientIEN\nSurg.SurgeryProcedureOccurrence.PatientIEN\nSurg.SurgeryRequiredBloodProducts.PatientIEN\nSurg.SurgeryReturnCase.PatientIEN\nSurg.SurgORCircSupport.PatientIEN\nSurg.SurgORCircSupportTime.PatientIEN\nSurg.SurgORScrubSupport.PatientIEN\nSurg.SurgORScrubSupportTime.PatientIEN"