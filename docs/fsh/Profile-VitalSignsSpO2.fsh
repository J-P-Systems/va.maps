Profile: VitalSignsSpO2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Id: VitalSignsSpO2
Title: "Vital Signs: SpO2"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to us-core-pulse-oximetry."
* ^status = #active
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry|6.1.0"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains va-pre-condition 0..1 and va-pre-condition-device 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-deviceCode named observation-deviceCode 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* component[FlowRate].valueQuantity.value and component[FlowRate].valueQuantity.code and component[FlowRate].code.coding.system and component[FlowRate].code.coding.code and component[Concentration].valueQuantity.value and component[Concentration].valueQuantity.code and component[Concentration].code.coding.system and component[Concentration].code.coding.code and issued and performer and status and effectiveDateTime and category and subject and identifier.value and identifier.system and code.coding and bodySite and extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept and method and component[va-pre-condition].valueCodeableConcept.coding and component[va-pre-condition].code and component[va-pre-condition-device].valueCodeableConcept.coding and component[va-pre-condition-device].code and extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept and valueQuantity.value and valueQuantity.code MS
* performer only Reference(Organization)
* subject only Reference(Patient)
* code.coding 2..*
* component[FlowRate].valueQuantity.code obeys vsso-14-1239-1
* component[FlowRate].code.coding.system obeys vsso-14-1239-2
* component[FlowRate].code.coding.code obeys vsso-14-1239-3
* component[Concentration].valueQuantity.code obeys vsso-14-1240-1
* component[Concentration].code.coding.system obeys vsso-14-1240-2
* component[Concentration].code.coding.code obeys vsso-14-1240-3
* status obeys vsso-14-655
* status obeys vsso-14-656
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* identifier.system = "http://va.gov/identifiers/$Sta3n/120.5"
* code.coding from http://va.gov/fhir/ValueSet/VitalsCodes
* bodySite from http://va.gov/fhir/ValueSet/VitalsBodySite
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsMeasurementDevice
* method from http://va.gov/fhir/ValueSet/VitalsMethod
* component[va-pre-condition].valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VitalsPrecondition
* component[va-pre-condition].code = http://loinc.org#104158-1 "Associated precondition - Reported"
* component[va-pre-condition-device].valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VitalsQualifyingDevice
* component[va-pre-condition-device].code = http://loinc.org#104158-1 "Associated precondition - Reported"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsBodyPosition
* valueQuantity.code.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* valueQuantity.code.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/VitalsUnits"

Invariant: vsso-14-1239-1
Description: "undefined: if VUID = 4500637 then L/min"
Severity: #warning

Invariant: vsso-14-1239-2
Description: "undefined: if VUID = 4500637 then http://loinc.org"
Severity: #warning

Invariant: vsso-14-1239-3
Description: "undefined: if VUID = 4500637 then 3151-8"
Severity: #warning

Invariant: vsso-14-1240-1
Description: "undefined: if VUID = 4500637 then %"
Severity: #warning

Invariant: vsso-14-1240-2
Description: "undefined: if VUID = 4500637 then http://loinc.org"
Severity: #warning

Invariant: vsso-14-1240-3
Description: "undefined: if VUID = 4500637 then 3150-0"
Severity: #warning

Invariant: vsso-14-655
Description: "120.5-4: if null then #final"
Severity: #warning

Invariant: vsso-14-656
Description: "120.5-4: if not null then #entered-in-error"
Severity: #warning

Mapping: source-to-VitalSignsSpO2
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsSpO2
* component[FlowRate].valueQuantity.value -> "1239: transform using Split_SpO2_value.Flow() on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* component[FlowRate].valueQuantity.code -> "1239-1: fixed value = L/min case VUID = 4500637" "from mapParameter 1"
* component[FlowRate].code.coding.system -> "1239-2: fixed value = http://loinc.org case VUID = 4500637" "from mapParameter 2"
* component[FlowRate].code.coding.code -> "1239-3: fixed value = 3151-8 case VUID = 4500637" "from mapParameter 3"
* component[Concentration].valueQuantity.value -> "1240: transform using Split_SpO2_value.Consentration() on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* component[Concentration].valueQuantity.code -> "1240-1: fixed value = % case VUID = 4500637" "from mapParameter 1"
* component[Concentration].code.coding.system -> "1240-2: fixed value = http://loinc.org case VUID = 4500637" "from mapParameter 2"
* component[Concentration].code.coding.code -> "1240-3: fixed value = 3150-0 case VUID = 4500637" "from mapParameter 3"
* issued -> "652: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS ENTERED (120.5-.04)"
* performer -> "1653: reference from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION (120.5-.05)"
* status -> "655: fixed value = #final when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) case null"
* status -> "656: fixed value = #entered-in-error when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) case not null"
* effectiveDateTime -> "657: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS TAKEN (120.5-.01)"
* category -> "658: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs"
* subject -> "659: reference from GMRV VITAL MEASUREMENT - PATIENT (120.5-.02)"
* identifier.value -> "660: source value from GMRV VITAL MEASUREMENT - IEN (120.5-.001)"
* identifier.system -> "660-1: fixed value = http://va.gov/identifiers/$Sta3n/120.5" "from mapParameter 1"
* code.coding -> "661: terminologyMaps using VF_VitalsCodes on GMRV VITAL MEASUREMENT - VITAL TYPE (120.5-.03)" "Pulse Oximetry has 2 code values per US Core"
* bodySite -> "662: terminologyMaps using VF_VitalsBodySite on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept -> "663: terminologyMaps using VF_VitalsMeasurementDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* method -> "867: terminologyMaps using VF_VitalsMethod on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition].valueCodeableConcept.coding -> "1802: terminologyMaps using VF_VitalsPrecondition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition].code -> "1802-1: fixed value = http://loinc.org#104158-1 \"Associated precondition - Reported\"" "from mapParameter 1"
* component[va-pre-condition-device].valueCodeableConcept.coding -> "1803: terminologyMaps using VF_VitalsQualifyingDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition-device].code -> "1803-1: fixed value = http://loinc.org#104158-1 \"Associated precondition - Reported\"" "from mapParameter 1"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "1804: terminologyMaps using VF_VitalsBodyPosition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* valueQuantity.value -> "664: source value from GMRV VITAL MEASUREMENT - RATE (120.5-1.2) case VUID not = 4500634"
* valueQuantity.code -> "665: transform using VF_VitalsUnits on GMRV VITAL MEASUREMENT - VITAL TYPE (120.5-.03)" "VPR may transform"
* dataAbsentReason -> "1793: target not supported" "Always has data"
* component.dataAbsentReason -> "1794: target not supported" "Always has data"

Mapping: cdw-to-VitalSignsSpO2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsSpO2
* component[FlowRate].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* component[Concentration].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* performer -> "Vital.VitalSign.LocationIEN"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime,Vital.VitalSignQualifier.VitalSignTakenDateTime"
* subject -> "Vital.VitalSign.PatientIEN"
* code.coding -> "Vital.VitalSign.VitalTypeIEN"
* valueQuantity.value -> "Vital.VitalSign.Diastolic,Vital.VitalSign.Systolic,Vital.VitalSign.VitalResult,Vital.VitalSign.VitalResultNumeric"
* valueQuantity.code -> "Vital.VitalSign.VitalTypeIEN"

Mapping: sda-to-VitalSignsSpO2
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: VitalSignsSpO2
* component[FlowRate].valueQuantity.value -> "Observation.Extension[ObservationExtension].SupplementalO2"
* component[Concentration].valueQuantity.value -> "Observation.Extension[ObservationExtension].SupplementalO2"
* performer -> "Observation.EnteredAt,Observation.Extension[ObservationExtension].Location"
* status -> "Observation.Extension[ObservationExtension].Removed"
* status -> "Observation.Extension[ObservationExtension].Removed"
* effectiveDateTime -> "Observation.ObservationCode[Observation].Description,Observation.ObservationMethods[ObservationMethod].Description"
* code.coding -> "Observation.ObservationCode,Observation.Extension[ObservationExtension].BMI"
* bodySite -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept -> "Observation.ObservationMethods"
* method -> "Observation.ObservationMethods"
* component[va-pre-condition].valueCodeableConcept.coding -> "Observation.ObservationMethods"
* component[va-pre-condition-device].valueCodeableConcept.coding -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "Observation.ObservationMethods"
* valueQuantity.value -> "Observation.ObservationValue,Observation.Extension[ObservationExtension].BMI"
* valueQuantity.code -> "Observation.ObservationCode,Observation.Extension[ObservationExtension].BMI"