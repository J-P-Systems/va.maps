Profile: ImplantableDeviceDental
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceDental
Title: "Implantable Device: Dental"
Description: "This StructureDefinition contains the maps for VistA file DENTAL DEVICE TRACKING (228.9) to us-core-implantable-device."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|7.0.0"
* identifier.value and identifier.system and udiCarrier.deviceIdentifier and status and distinctIdentifier and manufacturer and manufactureDate and expirationDate and lotNumber and serialNumber and modelNumber and type.text and type.coding.system and type.coding.code and type.coding.display and patient MS
* patient only Reference(Patient)
* identifier.system = "http://va.gov/identifiers/$Sta3n/228.9"
* status from http://va.gov/fhir/ValueSet/DentalDeviceStatus
* status ^binding.description = "see mapping [VF_DentalDeviceStatus](ConceptMap-VF-DentalDeviceStatus.html)"
* type.coding.system = "http://snomed.info/sct"
* type.coding.code = #277986000
* type.coding.display = "Dental equipment and devices"

Mapping: source-to-ImplantableDeviceDental
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceDental
* identifier.value -> "1352: source value based on DENTAL DEVICE TRACKING - IEN (228.9-.001)"
* identifier.system -> "1352-1: fixed value = http://va.gov/identifiers/$Sta3n/228.9" "generated from mapParameter line 1"
* udiCarrier.deviceIdentifier -> "1354: source value based on DENTAL DEVICE TRACKING - UDI (228.9-1)"
* status -> "1362: terminologyMaps using VF_DentalDeviceStatus on DENTAL DEVICE TRACKING - STATUS (228.9-.08)"
* distinctIdentifier -> "1364: source value based on DENTAL DEVICE TRACKING - DONATION ID (228.9-4.8)"
* manufacturer -> "1370: source value based on DENTAL DEVICE TRACKING - MANUFACTURER (228.9-4.1)"
* manufactureDate -> "1372: source value based on DENTAL DEVICE TRACKING - MANUFACTURER DATE (228.9-4.6)"
* expirationDate -> "1375: source value based on DENTAL DEVICE TRACKING - EXPIRATION DATE (228.9-4.7)"
* lotNumber -> "1378: source value based on DENTAL DEVICE TRACKING - LOT (228.9-4.4)"
* serialNumber -> "1384: source value based on DENTAL DEVICE TRACKING - S/N (228.9-4.3)"
* modelNumber -> "1392: source value based on DENTAL DEVICE TRACKING - MODEL (228.9-4.2)"
* type.text -> "1398: source value based on DENTAL DEVICE TRACKING - TYPE (228.9-2)"
* type.coding.system -> "1398-1: fixed value = http://snomed.info/sct" "generated from mapParameter line 1"
* type.coding.code -> "1398-2: fixed value = #277986000" "generated from mapParameter line 2"
* type.coding.display -> "1398-3: fixed value = Dental equipment and devices" "generated from mapParameter line 3"
* patient -> "1403: reference based on DENTAL DEVICE TRACKING - PATIENT (228.9-.03)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"

Mapping: cdw-to-ImplantableDeviceDental
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceDental
* udiCarrier.deviceIdentifier -> "Dental.DeviceTracking.DeviceIdentification"
* status -> "Dental.DeviceTracking.DeviceStatus"
* distinctIdentifier -> "Dental.DeviceTracking.DonationIdentification"
* manufacturer -> "Dental.DeviceTracking.DeviceManufacturer"
* manufactureDate -> "Dental.DeviceTracking.ManufacturerDate"
* expirationDate -> "Dental.DeviceTracking.ExpirationDate"
* lotNumber -> "Dental.DeviceTracking.DeviceLotNumber"
* serialNumber -> "Dental.DeviceTracking.SerialNumber"
* modelNumber -> "Dental.DeviceTracking.DeviceModel"
* type.text -> "Dental.DeviceTracking.DeviceType"
* patient -> "Dental.DeviceTracking.PatientIEN,Dental.DeviceTracking.PatientSID,Dental.DeviceTrackingDetail.PatientIEN"