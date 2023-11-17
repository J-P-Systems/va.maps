Profile: VitalSignsObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id: VitalSignsObservation
Title: "Vital Signs {Observation}"
Description: "This StructureDefinition contains the maps for VistA GMRV VITAL MEASUREMENT (file 120.5) to FHIR Observation"
* ^status = #draft
* performer only Reference(VitalSignsOrganization)
* category.coding.code obeys inv-34
* code.coding from http://va.gov/fhir/ValueSet/VSVFVitalsCodes
* bodySite from http://va.gov/fhir/ValueSet/VSVFVitalsSite
* device only Reference(VitalSignsDevice)
* method from http://va.gov/fhir/ValueSet/VSVFVitalsMethod

Invariant: inv-34
Description: "658: fixed value = vital-signs"
Severity: #warning

Mapping: vista-to-VitalSignsObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsObservation
* issued -> "652: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS ENTERED (#120.5-.04)"
* performer -> "++: reference from GMRV VITAL MEASUREMENT - HOSPITAL LOCATION (#120.5-.05)"
* status -> "655: transform using \"final\" on GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (#120.5-4) case null"
* status -> "656: transform using \"entered-in-error\" on GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (#120.5-4) case not null"
* effectiveDateTime -> "657: source value from GMRV VITAL MEASUREMENT - DATE/TIME VITALS TAKEN (#120.5-.01)"
* category.coding.code -> "658: fixed value = vital-signs"
* subject -> "659: reference from GMRV VITAL MEASUREMENT - PATIENT (#120.5-.02)"
* identifier.value -> "660: source value from GMRV VITAL MEASUREMENT - IEN (#120.5-.001)"
* code.coding -> "661: terminologyMaps using VF_VitalsCodes on GMRV VITAL MEASUREMENT - VITAL TYPE (#120.5-.03)" "Pulse Oximetry has 2 values"
* bodySite -> "662: terminologyMaps using VF_VitalsSite on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"
* device -> "++: reference from GMRV VITAL MEASUREMENT – QUALIFIER > GMRV VITAL QUALIFIER – VUID (#120.5-5 > 120.52-99.99)" "contained"
* method -> "867: terminologyMaps using VF_VitalsMethod on GMRV VITAL MEASUREMENT - QUALIFIER (#120.5-5)"
* valueQuantity.value -> "664: source value from GMRV VITAL MEASUREMENT - RATE (#120.5-1.2) case VUID not = 4500634"
* valueQuantity.code -> "665: transform using VF_VitalsUnits on GMRV VITAL MEASUREMENT - VITAL TYPE (#120.5-.03)" "VPR may transform"

Mapping: cdw-to-VitalSignsObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsObservation
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime\nVital.VitalSignQualifier.VitalSignTakenDateTime"
* valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"