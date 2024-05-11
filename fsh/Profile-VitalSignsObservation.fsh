Profile: VitalSignsObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id: VitalSignsObservation
Title: "Vital Signs Observation"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to us-core-vital-signs"
* ^status = #draft
* ^abstract = true
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains va-pre-condition 0..1 and va-pre-condition-device 0..1 and va-cuff-size 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* issued and performer and status and effectiveDateTime and category and subject and identifier.value and code.coding and method and valueQuantity.value and valueQuantity.code and component[va-pre-condition].valueCodeableConcept.coding and component[va-pre-condition-device].valueCodeableConcept.coding and extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept and component[va-cuff-size].valueCodeableConcept.coding MS
* performer only Reference(VitalSignsOrganization)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding from http://va.gov/fhir/ValueSet/VSVFVitalsCodes
* method from http://va.gov/fhir/ValueSet/VSVFVitalsMethod
* valueQuantity.code.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* valueQuantity.code.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/CMVFVitalsUnits"
* component[va-pre-condition].valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VSVFVitalsPrecondition
* component[va-pre-condition-device].valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VSVFVitalsQualifyingDevice
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFVitalsBodyPosition
* component[va-cuff-size].valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VSVFVitalsCuffSize

Mapping: vista-to-VitalSignsObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservation
* issued -> "652: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS ENTERED (120.5-.04)"
* performer -> "1653: reference from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION (120.5-.05)"
* status -> "655: fixed value = #final when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) case null"
* status -> "656: fixed value = #entered-in-error when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) case not null"
* effectiveDateTime -> "657: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS TAKEN (120.5-.01)"
* category -> "658: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs"
* subject -> "659: reference from GMRV VITAL MEASUREMENT - PATIENT (120.5-.02)"
* identifier.value -> "660: source value from GMRV VITAL MEASUREMENT - IEN (120.5-.001)"
* code.coding -> "661: terminologyMaps using VF_VitalsCodes on GMRV VITAL MEASUREMENT - VITAL TYPE (120.5-.03)" "Pulse Oximetry has 2 values"
* method -> "867: terminologyMaps using VF_VitalsMethod on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* valueQuantity.value -> "664: source value from GMRV VITAL MEASUREMENT - RATE (120.5-1.2) case VUID not = 4500634"
* valueQuantity.code -> "665: transform using VF_VitalsUnits on GMRV VITAL MEASUREMENT - VITAL TYPE (120.5-.03)" "VPR may transform"
* dataAbsentReason -> "1793: target not supported" "Always has data"
* component.dataAbsentReason -> "1794: target not supported" "Always has data"
* component[va-pre-condition].valueCodeableConcept.coding -> "1802: terminologyMaps using VF_VitalsPrecondition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition-device].valueCodeableConcept.coding -> "1803: terminologyMaps using VF_VitalsQualifyingDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "1804: terminologyMaps using VF_VitalsBodyPosition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-cuff-size].valueCodeableConcept.coding -> "1805: terminologyMaps using VF_VitalsCuffSize on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"

Mapping: cdw-to-VitalSignsObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservation
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* performer -> "Vital.VitalSign.LocationIEN"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime,Vital.VitalSignQualifier.VitalSignTakenDateTime"
* subject -> "Vital.VitalSign.PatientIEN"
* code.coding -> "Vital.VitalSign.VitalTypeIEN"
* valueQuantity.value -> "Vital.VitalSign.Diastolic,Vital.VitalSign.Systolic,Vital.VitalSign.VitalResult,Vital.VitalSign.VitalResultNumeric"
* valueQuantity.code -> "Vital.VitalSign.VitalTypeIEN"