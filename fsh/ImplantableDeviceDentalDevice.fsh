Profile: ImplantableDeviceDentalDevice
Parent: http://va.gov/fhir/StructureDefinition/ImplantableDeviceDevice
Id: ImplantableDeviceDentalDevice
Title: "Implantable Device: Dental {Device}"
Description: "This StructureDefinition contains the maps for VistA DENTAL DEVICE TRACKING (file 228.9) to FHIR Device"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDentalDeviceStatus

Mapping: vista-to-ImplantableDeviceDentalDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceDentalDevice
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

Mapping: cdw-to-ImplantableDeviceDentalDevice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceDentalDevice
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
* patient -> "Dental.DeviceTracking.PatientIEN\nDental.DeviceTrackingDetail.PatientIEN"