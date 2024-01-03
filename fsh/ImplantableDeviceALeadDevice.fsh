Profile: ImplantableDeviceALeadDevice
Parent: http://va.gov/fhir/StructureDefinition/ImplantableDeviceDevice
Id: ImplantableDeviceALeadDevice
Title: "Implantable Device: A Lead {Device}"
Description: "This StructureDefinition contains the maps for VistA file A LEAD IMPLANT (#698.2) to ImplantableDeviceDevice"
* ^status = #draft
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDeviceALeadDevice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceALeadDevice
* identifier.value -> "1350: source value from A LEAD IMPLANT - IEN (#698.2-.001)"
* status -> "1358: transform using \"active\" on A LEAD IMPLANT - EXPLANT DATE (#698.2-56) case is NULL" "If NULL, can it be assumed it is active?"
* status -> "1359: transform using \"inactive\" on A LEAD IMPLANT - EXPLANT DATE (#698.2-56) case is not NULL"
* manufacturer -> "1368: source value from A LEAD IMPLANT - A LEAD MANUFACTURER > PACEMAKER MANUFACTURER - NAME (#698.2-3 > 698.6-.01)"
* serialNumber -> "1382: source value from A LEAD - A LEAD SERIAL NUMBER (#698.2-4)"
* modelNumber -> "1390: source value from A LEAD IMPLANT - A LEAD MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (#698.2-2 > 698.4-.01)"
* type -> "1396: terminologyMaps using VF_deviceTypePacemaker on A LEAD IMPLANT - A LEAD MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (#698.2-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1401: reference from A LEAD IMPLANT - MEDICAL PATIENT (#698.2-1)"