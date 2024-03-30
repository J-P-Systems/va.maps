Profile: ImplantableDeviceDental
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceDental
Title: "Implantable Device: Dental"
Description: "This StructureDefinition contains the maps for VistA file DENTAL DEVICE TRACKING (#228.9) to us-core-implantable-device"
* ^status = #draft
* identifier.value and udiCarrier.deviceIdentifier and status and distinctIdentifier and manufacturer and manufactureDate and expirationDate and lotNumber and serialNumber and modelNumber and type.text and patient MS
* status from http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus

Mapping: vista-to-ImplantableDeviceDental
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceDental
* identifier.value -> "1352: source value from DENTAL DEVICE TRACKING - IEN (#228.9-.001)"
* udiCarrier.deviceIdentifier -> "1354: source value from DENTAL DEVICE TRACKING - UDI (#228.9-1)"
* status -> "1362: terminologyMaps using VF_DentalDeviceStatus on DENTAL DEVICE TRACKING - STATUS (#228.9-.08)"
* distinctIdentifier -> "1364: source value from DENTAL DEVICE TRACKING - DONATION ID (#228.9-4.8)"
* manufacturer -> "1370: source value from DENTAL DEVICE TRACKING - MANUFACTURER (#228.9-4.1)"
* manufactureDate -> "1372: source value from DENTAL DEVICE TRACKING - MANUFACTURER DATE (#228.9-4.6)"
* expirationDate -> "1375: source value from DENTAL DEVICE TRACKING - EXPRATION DATE (#228.9-4.7)"
* lotNumber -> "1378: source value from DENTAL DEVICE TRACKING - LOT (#228.9-4.4)"
* serialNumber -> "1384: source value from DENTAL DEVICE TRACKING - S/N (#228.9-4.3)"
* modelNumber -> "1392: source value from DENTAL DEVICE TRACKING - MODEL (#228.9-4.2)"
* type.text -> "1398: source value from DENTAL DEVICE TRACKING - TYPE (#228.9-2)"
* patient -> "1403: reference from DENTAL DEVICE TRACKING - PATIENT (#228.9-.03)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"
* udiCarrier.carrierHRF -> "1794: target not supported"

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
* patient -> "Dental.DeviceTracking.PatientIEN,Dental.DeviceTrackingDetail.PatientIEN"