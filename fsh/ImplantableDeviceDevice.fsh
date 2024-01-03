Profile: ImplantableDeviceDevice
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceDevice
Title: "Implantable Device {Device}"
Description: "This StructureDefinition contains the maps for VistA file ? (#?) to us-core-implantable-device"
* ^status = #draft

Mapping: vista-to-ImplantableDeviceDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceDevice
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"