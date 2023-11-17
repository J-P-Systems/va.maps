Profile: ImplantableDeviceVLeadDevice
Parent: http://va.gov/fhir/StructureDefinition/ImplantableDeviceDevice
Id: ImplantableDeviceVLeadDevice
Title: "Implantable Device: V Lead {Device}"
Description: "This StructureDefinition contains the maps for VistA V LEAD IMPLANT (file 698.1) to FHIR Device"
* ^status = #draft
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDeviceVLeadDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceVLeadDevice
* identifier.value -> "1351: source value from V LEAD IMPLANT - IEN (#698.1-.001)"
* status -> "1360: transform using \"active\" on V LEAD IMPLANT - EXPLANT DATE (#698.1-56) case is NULL" "If NULL, can it be assumed it is active?"
* status -> "1361: transform using \"inactive\" on V LEAD IMPLANT - EXPLANT DATE (#698.1-56) case is not NULL"
* manufacturer -> "1369: source value from V LEAD IMPLANT - V LEAD MANUFACTURER > PACEMAKER MANUFACTURER - NAME (#698.1-3 > 698.6-.01)"
* serialNumber -> "1383: source value from V LEAD - V LEAD SERIAL NUMBER (#698.1-4)"
* modelNumber -> "1391: source value from V LEAD IMPLANT - V LEAD MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (#698.1-2 > 698.4-.01)"
* type -> "1397: terminologyMaps using VF_deviceTypePacemaker on V LEAD IMPLANT - V LEAD MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (#698.1-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1402: reference from V LEAD IMPLANT - MEDICAL PATIENT (#698.1-1)"