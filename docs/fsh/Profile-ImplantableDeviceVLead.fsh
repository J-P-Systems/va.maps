Profile: ImplantableDeviceVLead
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceVLead
Title: "Implantable Device: V Lead"
Description: "This StructureDefinition contains the maps for VistA file V LEAD IMPLANT (698.1) to us-core-implantable-device."
* ^status = #active
* identifier.value and identifier.system and status and manufacturer and serialNumber and modelNumber and type and patient MS
* patient only Reference(Patient)
* identifier.system = "http://va.gov/identifiers/$Sta3n/698.1"
* status obeys idvl-22-1360
* status obeys idvl-22-1361
* type from http://va.gov/fhir/ValueSet/deviceTypePacemaker
* type ^binding.description = "see mapping [VF_deviceTypePacemaker](ConceptMap-VF-deviceTypePacemaker.html)"

Invariant: idvl-22-1360
Description: "If (698.1-56) is is NULL then fixed value #active"
Severity: #warning
Expression: "true"

Invariant: idvl-22-1361
Description: "If (698.1-56) is is not NULL then fixed value #inactive"
Severity: #warning
Expression: "true"

Mapping: source-to-ImplantableDeviceVLead
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceVLead
* identifier.value -> "1351: source value based on V LEAD IMPLANT - IEN (698.1-.001)"
* identifier.system -> "1351-1: fixed value = http://va.gov/identifiers/$Sta3n/698.1" "generated from mapParameter line 1"
* status -> "1360: fixed value = #active when V LEAD IMPLANT - EXPLANT DATE (698.1-56) if is NULL" "If NULL, can it be assumed it is active?"
* status -> "1361: fixed value = #inactive when V LEAD IMPLANT - EXPLANT DATE (698.1-56) if is not NULL"
* manufacturer -> "1369: source value based on V LEAD IMPLANT - V LEAD MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698.1-3 > 698.6-.01)"
* serialNumber -> "1383: source value based on V LEAD IMPLANT - V LEAD SERIAL NUMBER (698.1-4)"
* modelNumber -> "1391: source value based on V LEAD IMPLANT - V LEAD MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698.1-2 > 698.4-.01)"
* type -> "1397: terminologyMaps using VF_deviceTypePacemaker on V LEAD IMPLANT - V LEAD MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698.1-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1402: reference based on V LEAD IMPLANT - MEDICAL PATIENT > MEDICAL PATIENT - NAME (698.1-1 > 690-.01)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"