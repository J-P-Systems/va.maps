Profile: ImplantableDeviceTransmitterDevice
Parent: http://va.gov/fhir/StructureDefinition/ImplantableDevicePacemakerDevice
Id: ImplantableDeviceTransmitterDevice
Title: "Implantable Device: Transmitter {Device}"
Description: "This StructureDefinition contains the maps for VistA file GENERATOR IMPLANT (#698) to ImplantableDevicePacemakerDevice"
* ^status = #draft
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDeviceTransmitterDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceTransmitterDevice
* manufacturer -> "1367: source value from GENERATOR IMPLANT - TRANSMITTER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (#698-13 > 698.6-.01)"
* modelNumber -> "1389: source value from GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (#698-12 > 698.4-.01)"
* type -> "1395: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (#698-12 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"