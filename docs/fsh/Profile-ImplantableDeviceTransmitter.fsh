Profile: ImplantableDeviceTransmitter
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device
Id: ImplantableDeviceTransmitter
Title: "Implantable Device: Transmitter"
Description: "This StructureDefinition contains the maps for VistA file GENERATOR IMPLANT (698) to us-core-implantable-device."
* ^status = #active
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-implantable-device|7.0.0"
* manufacturer and modelNumber and type and identifier.value and identifier.system and status and serialNumber and patient MS
* patient only Reference(Patient)
* type from http://va.gov/fhir/ValueSet/deviceTypePacemaker
* type ^binding.description = "see mapping [VF_deviceTypePacemaker](ConceptMap-VF-deviceTypePacemaker.html)"
* identifier.system = "http://va.gov/identifiers/$Sta3n/698"
* status obeys idt-28-1356
* status obeys idt-28-1357
* type from http://va.gov/fhir/ValueSet/deviceTypePacemaker
* type ^binding.description = "see mapping [VF_deviceTypePacemaker](ConceptMap-VF-deviceTypePacemaker.html)"

Invariant: idt-28-1356
Description: "If (698-96) is is NULL then fixed value #active"
Severity: #warning
Expression: "true"

Invariant: idt-28-1357
Description: "If (698-96) is is not NULL then fixed value #inactive"
Severity: #warning
Expression: "true"

Mapping: source-to-ImplantableDeviceTransmitter
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImplantableDeviceTransmitter
* manufacturer -> "1367: source value based on GENERATOR IMPLANT - TRANSMITTER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698-13 > 698.6-.01)"
* modelNumber -> "1389: source value based on GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698-12 > 698.4-.01)"
* type -> "1395: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - TRANSMITTER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698-12 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* identifier.value -> "1349: source value based on GENERATOR IMPLANT - IEN (698-.001)"
* identifier.system -> "1349-1: fixed value = http://va.gov/identifiers/$Sta3n/698" "generated from mapParameter line 1"
* status -> "1356: fixed value = #active when GENERATOR IMPLANT - EXPLANT DATE (698-96) if is NULL" "If NULL, can it be assumed it is active?"
* status -> "1357: fixed value = #inactive when GENERATOR IMPLANT - EXPLANT DATE (698-96) if is not NULL"
* manufacturer -> "1366: source value based on GENERATOR IMPLANT - PACEMAKER MANUFACTURER > PACEMAKER MANUFACTURER - NAME (698-3 > 698.6-.01)"
* serialNumber -> "1380: source value based on GENERATOR IMPLANT - PACEMAKER SERIAL NUMBER (698-4)" "Do not use with the Transmitter use case; use transmitter serial number if it has its own."
* modelNumber -> "1388: source value based on GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - MODEL NUMBER/NAME (698-2 > 698.4-.01)"
* type -> "1394: terminologyMaps using VF_deviceTypePacemaker on GENERATOR IMPLANT - PACEMAKER MODEL > PACEMAKER EQUIPMENT - TYPE OF EQUIPMENT (698-2 > 698.4-1)" "A request for more specific SNOMED codes will be submitted (01/04/2023)"
* patient -> "1400: reference based on GENERATOR IMPLANT - MEDICAL PATIENT > MEDICAL PATIENT - NAME (698-1 > 690-.01)"
* udiCarrier.deviceIdentifier -> "1353: target not supported"
* status -> "1355: target not supported"
* distinctIdentifier -> "1363: target not supported"
* manufactureDate -> "1371: target not supported"
* expirationDate -> "1374: target not supported"
* lotNumber -> "1377: target not supported"
* serialNumber -> "1381: target not supported"
* udiCarrier.carrierHRF -> "1795: target not supported"