Profile: ImplantableDevicePacemakerDevice
Parent: http://va.gov/fhir/StructureDefinition/ImplantableDeviceDevice
Id: ImplantableDevicePacemakerDevice
Title: "Implantable Device: Pacemaker {Device}"
Description: "This StructureDefinition contains the maps for VistA GENERATOR IMPLANT (file 698) to FHIR Device"
* ^status = #draft
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDevicePacemakerDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDevicePacemakerDevice
* identifier.value -> "1349: source value from GENERATOR IMPLANT - IEN (#698-.001)"
* status -> "1356: transform using \"active\" on GENERATOR IMPLANT - EXPLANT DATE (#698-96) case is NULL" "If NULL, can it be assumed it is active?"
* status -> "1357: transform using \"inactive\" on GENERATOR IMPLANT - EXPLANT DATE (#698-96) case is not NULL"
* manufacturer -> "1366: source value from GENERATOR IMPLANT - PACEMAKER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (#698-3 > 698.6-.01)"
* serialNumber -> "1380: source value from GENERATOR IMPLANT - PACEMAKER SERIAL NUMBER (#698-4)" "Do not use with the Transmitter use case; use transmitter serial number if it has its own."
* modelNumber -> "1388: source value from GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (#698-2 > 698.4-.01)"
* type -> "1394: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (#698-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1400: reference from GENERATOR IMPLANT - MEDICAL PATIENT (#698-1)"