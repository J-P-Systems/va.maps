Profile: ImplantableDeviceALead
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceALead
Title: "Implantable Device: A Lead"
Description: "This StructureDefinition contains the maps for VistA file A LEAD IMPLANT (698.2) to us-core-implantable-device"
* ^status = #draft
* identifier.value and status and manufacturer and serialNumber and modelNumber and type and patient MS
* type from http://va.gov/fhir/ValueSet/VSVFdeviceTypePacemaker

Mapping: vista-to-ImplantableDeviceALead
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceALead
* identifier.value -> "1350: source value from A LEAD IMPLANT - IEN (698.2-.001)"
* status -> "1358: fixed value = #active when A LEAD IMPLANT - EXPLANT DATE (698.2-56) case is NULL" "If NULL, can it be assumed it is active?"
* status -> "1359: fixed value = #inactive when A LEAD IMPLANT - EXPLANT DATE (698.2-56) case is not NULL"
* manufacturer -> "1368: source value from A LEAD IMPLANT - A LEAD MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698.2-3 > 698.6-.01)"
* serialNumber -> "1382: source value from A LEAD - A LEAD SERIAL NUMBER (698.2-4)"
* modelNumber -> "1390: source value from A LEAD IMPLANT - A LEAD MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698.2-2 > 698.4-.01)"
* type -> "1396: terminologyMaps using VF_deviceTypePacemaker on A LEAD IMPLANT - A LEAD MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698.2-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1401: reference from A LEAD IMPLANT - MEDICAL PATIENT (698.2-1)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* deviceName -> "1386: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"

Mapping: cdw-to-ImplantableDeviceALead
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImplantableDeviceALead