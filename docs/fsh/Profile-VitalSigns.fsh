Profile: VitalSigns
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-vital-signs
Id: VitalSigns
Title: "Vital Signs"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to us-core-vital-signs."
* ^status = #active
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains va-pre-condition 0..1 and va-pre-condition-device 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-deviceCode named observation-deviceCode 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* issued and performer and status and effectiveDateTime and category[VSCat] and subject and identifier.value and identifier.system and code.coding and bodySite and extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept and method and component[va-pre-condition].valueCodeableConcept and component[va-pre-condition].code and component[va-pre-condition-device].valueCodeableConcept and component[va-pre-condition-device].code and extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept and valueQuantity.value and valueQuantity.code MS
* performer only Reference(Organization)
* subject only Reference(Patient)
* status obeys vs-10-655
* status obeys vs-10-656
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* identifier.system = "http://va.gov/identifiers/$Sta3n/120.5"
* code.coding from http://va.gov/fhir/ValueSet/VitalsCodes
* code.coding ^binding.description = "see mapping [VF_VitalsCodes](ConceptMap-VF-VitalsCodes.html)"
* bodySite from http://va.gov/fhir/ValueSet/VitalsBodySite
* bodySite ^binding.description = "see mapping [VF_VitalsBodySite](ConceptMap-VF-VitalsBodySite.html)"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsMeasurementDevice
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept ^binding.description = "see mapping [VF_VitalsMeasurementDevice](ConceptMap-VF-VitalsMeasurementDevice.html)"
* method from http://va.gov/fhir/ValueSet/VitalsMethod
* method ^binding.description = "see mapping [VF_VitalsMethod](ConceptMap-VF-VitalsMethod.html)"
* component[va-pre-condition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsPrecondition
* component[va-pre-condition].valueCodeableConcept ^binding.description = "see mapping [VF_VitalsPrecondition](ConceptMap-VF-VitalsPrecondition.html)"
* component[va-pre-condition].code = http://loinc.org#104158-1 "Associated precondition - Reported"
* component[va-pre-condition-device].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsQualifyingDevice
* component[va-pre-condition-device].valueCodeableConcept ^binding.description = "see mapping [VF_VitalsQualifyingDevice](ConceptMap-VF-VitalsQualifyingDevice.html)"
* component[va-pre-condition-device].code = http://loinc.org#104158-1 "Associated precondition - Reported"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsBodyPosition
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept ^binding.description = "see mapping [VF_VitalsBodyPosition](ConceptMap-VF-VitalsBodyPosition.html)"
* valueQuantity.value obeys vs-10-664
* valueQuantity.code ^comment = "see mapping [VF_VitalsUnits](ConceptMap-VF-VitalsUnits.html)"

Invariant: vs-10-655
Description: "If (120.5-4) is null then fixed value #final"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vs-10-656
Description: "If (120.5-4) is not null then fixed value #entered-in-error"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vs-10-664
Description: "If VUID not = 4500634 then source value from (120.5-1.2)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-VitalSigns
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSigns
* issued -> "652: source value based on GMRV VITAL MEASUREMENT - DATE/TIME VITALS ENTERED (120.5-.04)"
* performer -> "1653: reference based on GMRV VITAL MEASUREMENT - HOSPITAL LOCATION (120.5-.05)"
* status -> "655: fixed value = #final when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) if null"
* status -> "656: fixed value = #entered-in-error when GMRV VITAL MEASUREMENT - REASON ENTERED IN ERROR (120.5-4) if not null"
* effectiveDateTime -> "657: source value based on GMRV VITAL MEASUREMENT - DATE/TIME VITALS TAKEN (120.5-.01)"
* category[VSCat] -> "658: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs"
* subject -> "659: reference based on GMRV VITAL MEASUREMENT - PATIENT (120.5-.02)"
* identifier.value -> "660: source value based on GMRV VITAL MEASUREMENT - IEN (120.5-.001)"
* identifier.system -> "660-1: fixed value = http://va.gov/identifiers/$Sta3n/120.5" "generated from mapParameter line 1"
* code.coding -> "661: terminologyMaps using VF_VitalsCodes on GMRV VITAL MEASUREMENT - VITAL TYPE > GMRV VITAL TYPE - VUID (120.5-.03 > 120.51-99.99)" "Pulse Oximetry has 2 code values per US Core"
* bodySite -> "662: terminologyMaps using VF_VitalsBodySite on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept -> "663: terminologyMaps using VF_VitalsMeasurementDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* method -> "867: terminologyMaps using VF_VitalsMethod on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition].valueCodeableConcept -> "1802: terminologyMaps using VF_VitalsPrecondition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition].code -> "1802-1: fixed value = http://loinc.org#104158-1 \"Associated precondition - Reported\"" "generated from mapParameter line 1"
* component[va-pre-condition-device].valueCodeableConcept -> "1803: terminologyMaps using VF_VitalsQualifyingDevice on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-pre-condition-device].code -> "1803-1: fixed value = http://loinc.org#104158-1 \"Associated precondition - Reported\"" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "1804: terminologyMaps using VF_VitalsBodyPosition on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* valueQuantity.value -> "664: source value based on GMRV VITAL MEASUREMENT - RATE (120.5-1.2) if VUID not = 4500634"
* valueQuantity.code -> "665: transform using VF_VitalsUnits on GMRV VITAL MEASUREMENT - VITAL TYPE (120.5-.03)" "VPR may transform"

Mapping: cdw-to-VitalSigns
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSigns
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* performer -> "Vital.VitalSign.LocationIEN"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime,Vital.VitalSignQualifier.VitalSignTakenDateTime"
* subject -> "Vital.VitalSign.PatientIEN"
* code.coding -> "Vital.VitalSign.VitalTypeIEN\nDim.VitalType.VUID"
* valueQuantity.value -> "Vital.VitalSign.Diastolic,Vital.VitalSign.Systolic,Vital.VitalSign.VitalResult,Vital.VitalSign.VitalResultNumeric"
* valueQuantity.code -> "Vital.VitalSign.VitalTypeIEN"

Mapping: sda-to-VitalSigns
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: VitalSigns
* performer -> "Observation.EnteredAt,Observation.Extension[ObservationExtension].Location"
* status -> "Observation.Extension[ObservationExtension].Removed"
* status -> "Observation.Extension[ObservationExtension].Removed"
* effectiveDateTime -> "Observation.ObservationCode[Observation].Description,Observation.ObservationMethods[ObservationMethod].Description"
* code.coding -> "Observation.ObservationCode,Observation.Extension[ObservationExtension].BMI"
* bodySite -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept -> "Observation.ObservationMethods"
* method -> "Observation.ObservationMethods"
* component[va-pre-condition].valueCodeableConcept -> "Observation.ObservationMethods"
* component[va-pre-condition-device].valueCodeableConcept -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "Observation.ObservationMethods"
* valueQuantity.value -> "Observation.ObservationValue,Observation.Extension[ObservationExtension].BMI"
* valueQuantity.code -> "Observation.ObservationCode,Observation.Extension[ObservationExtension].BMI"

Mapping: vpr-to-VitalSigns
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: VitalSigns
* issued -> "vital.entered"
* performer -> "vital.facility (>44-3),vital.facility (>44-.07),vital.location (>44-.01)"
* status -> "vital.removed [m]"
* status -> "vital.removed [m]"
* effectiveDateTime -> "vital.taken"
* code.coding -> "vital.vuid (>120.51-99.99),vital.name (>120.51-.01)"
* valueQuantity.value -> "vital.value,vital.units,vital.metricvalue,vital.metricUnits,vital.bmi"
* valueQuantity.code -> "vital.vuid (>120.51-99.99),vital.name (>120.51-.01)"