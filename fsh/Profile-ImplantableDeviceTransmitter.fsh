Profile: ImplantableDeviceTransmitter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceTransmitter
Title: "Implantable Device: Transmitter"
Description: "This StructureDefinition contains the maps for VistA file GENERATOR IMPLANT (698) to us-core-implantable-device"
* ^status = #draft
* manufacturer and modelNumber and type and identifier.value and identifier.system and status and serialNumber and patient MS
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker
* identifier.system = "http://va.gov/fhir/identifiers/Sta3n<stationNr>/<fileNr>"
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDeviceTransmitter
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceTransmitter
* manufacturer -> "1367: source value from GENERATOR IMPLANT - TRANSMITTER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698-13 > 698.6-.01)"
* modelNumber -> "1389: source value from GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698-12 > 698.4-.01)"
* type -> "1395: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698-12 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* identifier.value -> "1349: source value from GENERATOR IMPLANT - IEN (698-.001)"
* identifier.system -> "1349-1: fixed value = http://va.gov/fhir/identifiers/Sta3n<stationNr>/<fileNr>" "from mapParameter 1"
* status -> "1356: fixed value = #active when GENERATOR IMPLANT - EXPLANT DATE (698-96) case is NULL" "If NULL, can it be assumed it is active?"
* status -> "1357: fixed value = #inactive when GENERATOR IMPLANT - EXPLANT DATE (698-96) case is not NULL"
* manufacturer -> "1366: source value from GENERATOR IMPLANT - PACEMAKER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698-3 > 698.6-.01)"
* serialNumber -> "1380: source value from GENERATOR IMPLANT - PACEMAKER SERIAL NUMBER (698-4)" "Do not use with the Transmitter use case; use transmitter serial number if it has its own."
* modelNumber -> "1388: source value from GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698-2 > 698.4-.01)"
* type -> "1394: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1400: reference from GENERATOR IMPLANT - MEDICAL PATIENT (698-1)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"

Mapping: cdw-to-ImplantableDeviceTransmitter
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceTransmitter