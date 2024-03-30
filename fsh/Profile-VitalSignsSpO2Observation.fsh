Profile: VitalSignsSpO2Observation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry
Id: VitalSignsSpO2Observation
Title: "Vital Signs: SpO2 Observation"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (#120.5) to us-core-pulse-oximetry"
* ^status = #draft
* component[FlowRate].valueQuantity.value and component[Concentration].valueQuantity.value and issued and performer and status and effectiveDateTime and category and subject and identifier.value and code.coding and device and method and valueQuantity.value and valueQuantity.code MS
* performer only Reference(VitalSignsOrganization)
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding from http://va.gov/fhir/ValueSet/VSVFVitalsCodes
* device only Reference(VitalSignsDevice)
* method from http://va.gov/fhir/ValueSet/VSVFVitalsMethod
* valueQuantity.code.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* valueQuantity.code.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/CMVFVitalsUnits"

Mapping: vista-to-VitalSignsSpO2Observation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsSpO2Observation
* component[FlowRate].valueQuantity.value -> "1239: transform using Split_SpO2_value.Flow() on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* component[Concentration].valueQuantity.value -> "1240: transform using Split_SpO2_value.Consentration() on GMRV VITAL MEASUREMENT - SUPPLEMENTAL O2 (#120.5-1.4) case VUID = 4500637" "Value needs to be parsed from VistA"
* issued -> "652: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS ENTERED (#120.5-.04)"
* performer -> "1653: reference from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION (#120.5-.05)"
* status -> "655: fixed value = #final when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (#120.5-4) case null"
* status -> "656: fixed value = #entered-in-error when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (#120.5-4) case not null"
* effectiveDateTime -> "657: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS TAKEN (#120.5-.01)"
* category -> "658: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs"
* subject -> "659: reference from GMRV VITAL MEASUREMENT - PATIENT (#120.5-.02)"
* identifier.value -> "660: source value from GMRV VITAL MEASUREMENT - IEN (#120.5-.001)"
* code.coding -> "661: terminologyMaps using VF_VitalsCodes on GMRV VITAL MEASUREMENT - VITAL TYPE (#120.5-.03)" "Pulse Oximetry has 2 values"
* device -> "1655: reference from GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (#120.5-5 > 120.52-99.99)" "There is no device instance; just a code"
* method -> "867: terminologyMaps using VF_VitalsMethod on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"
* valueQuantity.value -> "664: source value from GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID not = 4500634"
* valueQuantity.code -> "665: transform using VF_VitalsUnits on GMRV VITAL MEASUREMENT - VITAL TYPE (#120.5-.03)" "VPR may transform"
* dataAbsentReason -> "1792: target not supported" "Always has data"
* component.dataAbsentReason -> "1793: target not supported" "Always has data"

Mapping: cdw-to-VitalSignsSpO2Observation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsSpO2Observation
* component[FlowRate].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* component[Concentration].valueQuantity.value -> "Vital.VitalSign.SupplementalO2"
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime,Vital.VitalSignQualifier.VitalSignTakenDateTime"
* valueQuantity.value -> "Vital.VitalSign.Diastolic,Vital.VitalSign.Systolic,Vital.VitalSign.VitalResult,Vital.VitalSign.VitalResultNumeric"