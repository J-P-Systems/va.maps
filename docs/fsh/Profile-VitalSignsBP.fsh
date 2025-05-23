Profile: VitalSignsBP
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure
Id: VitalSignsBP
Title: "Vital Signs: BP"
Description: "This StructureDefinition contains the maps for VistA file GMRV VITAL MEASUREMENT (120.5) to us-core-blood-pressure."
* ^status = #active
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains va-cuff-size 0..1 and va-pre-condition 0..1 and va-pre-condition-device 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-deviceCode named observation-deviceCode 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/observation-bodyPosition named observation-bodyPosition 0..1
* component[va-cuff-size].valueCodeableConcept and component[va-cuff-size].code and component[systolic].valueQuantity.value and component[systolic].valueQuantity.code and component[systolic].valueQuantity.unit and component[systolic].code and component[diastolic].valueQuantity.value and component[diastolic].valueQuantity.code and component[diastolic].valueQuantity.unit and component[diastolic].code and issued and performer and status and effectiveDateTime and category[VSCat] and subject and identifier.value and identifier.system and code.coding and bodySite and extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept and method and component[va-pre-condition].valueCodeableConcept and component[va-pre-condition].code and component[va-pre-condition-device].valueCodeableConcept and component[va-pre-condition-device].code and extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept and valueQuantity.value and valueQuantity.code MS
* performer only Reference(Organization)
* subject only Reference(Patient)
* component[va-cuff-size].valueCodeableConcept from http://va.gov/fhir/ValueSet/VitalsCuffSize
* component[va-cuff-size].valueCodeableConcept ^binding.description = "see mapping [VF_VitalsCuffSize](ConceptMap-VF-VitalsCuffSize.html)"
* component[va-cuff-size].code = http://loinc.org#8358-4 "Blood pressure device cuff size"
* component[systolic].valueQuantity.value obeys vsbp-12-666
* component[systolic].valueQuantity.code obeys vsbp-12-666-1
* component[systolic].valueQuantity.unit obeys vsbp-12-666-2
* component[systolic].code obeys vsbp-12-666-3
* component[diastolic].valueQuantity.value obeys vsbp-12-667
* component[diastolic].valueQuantity.code obeys vsbp-12-667-1
* component[diastolic].valueQuantity.unit obeys vsbp-12-667-2
* component[diastolic].code obeys vsbp-12-667-3
* status obeys vsbp-12-655
* status obeys vsbp-12-656
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
* valueQuantity.value obeys vsbp-12-664
* valueQuantity.code ^comment = "see mapping [VF_VitalsUnits](ConceptMap-VF-VitalsUnits.html)"

Invariant: vsbp-12-666
Description: "If VUID = 4500634 then transform (120.5-1.2) using Split_rate_value.Systolic()"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-666-1
Description: "If VUID = 4500634 then fixed value #mm[Hg]"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-666-2
Description: "If VUID = 4500634 then fixed value mm[Hg]"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-666-3
Description: "If VUID = 4500634 then fixed value http://loinc.org#8480-6"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-667
Description: "If VUID = 4500634 then transform (120.5-1.2) using Split_rate_value.Diastolic()"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-667-1
Description: "If VUID = 4500634 then fixed value #mm[Hg]"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-667-2
Description: "If VUID = 4500634 then fixed value mm[Hg]"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-667-3
Description: "If VUID = 4500634 then fixed value http://loinc.org#8462-4"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-655
Description: "If (120.5-4) is null then fixed value #final"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-656
Description: "If (120.5-4) is not null then fixed value #entered-in-error"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: vsbp-12-664
Description: "If VUID not = 4500634 then source value from (120.5-1.2)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-VitalSignsBP
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: VitalSignsBP
* component[va-cuff-size].valueCodeableConcept -> "1805: terminologyMaps using VF_VitalsCuffSize on GMRV VITAL MEASUREMENT - QUALIFIER > GMRV VITAL QUALIFIER - VUID (120.5-5 > 120.52-99.99)"
* component[va-cuff-size].code -> "1805-1: fixed value = http://loinc.org#8358-4 \"Blood pressure device cuff size\"" "generated from mapParameter line 1"
* component[systolic].valueQuantity.value -> "666: transform using Split_rate_value.Systolic() on GMRV VITAL MEASUREMENT - RATE (120.5-1.2) if VUID = 4500634" "Value needs to be parsed from VistA"
* component[systolic].valueQuantity.code -> "666-1: fixed value = #mm[Hg] if VUID = 4500634" "generated from mapParameter line 1"
* component[systolic].valueQuantity.unit -> "666-2: fixed value = mm[Hg] if VUID = 4500634" "generated from mapParameter line 2"
* component[systolic].code -> "666-3: fixed value = http://loinc.org#8480-6 if VUID = 4500634" "generated from mapParameter line 3"
* component[diastolic].valueQuantity.value -> "667: transform using Split_rate_value.Diastolic() on GMRV VITAL MEASUREMENT - RATE (120.5-1.2) if VUID = 4500634" "Value needs to be parsed from VistA"
* component[diastolic].valueQuantity.code -> "667-1: fixed value = #mm[Hg] if VUID = 4500634" "generated from mapParameter line 1"
* component[diastolic].valueQuantity.unit -> "667-2: fixed value = mm[Hg] if VUID = 4500634" "generated from mapParameter line 2"
* component[diastolic].code -> "667-3: fixed value = http://loinc.org#8462-4 if VUID = 4500634" "generated from mapParameter line 3"
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

Mapping: cdw-to-VitalSignsBP
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VitalSignsBP
* component[systolic].valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"
* component[diastolic].valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"
* issued -> "Vital.VitalSign.VitalSignEnteredDateTime"
* performer -> "Vital.VitalSign.LocationIEN"
* effectiveDateTime -> "Vital.VitalSign.VitalSignTakenDateTime\nVital.VitalSignQualifier.VitalSignTakenDateTime"
* subject -> "Vital.VitalSign.PatientIEN"
* code.coding -> "Vital.VitalSign.VitalTypeIEN\nDim.VitalType.VUID"
* valueQuantity.value -> "Vital.VitalSign.Diastolic\nVital.VitalSign.Systolic\nVital.VitalSign.VitalResult\nVital.VitalSign.VitalResultNumeric"
* valueQuantity.code -> "Vital.VitalSign.VitalTypeIEN"

Mapping: sda-to-VitalSignsBP
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: VitalSignsBP
* component[va-cuff-size].valueCodeableConcept -> "Observation.ObservationMethods"
* component[systolic].valueQuantity.value -> "Observation.ObservationValue\nObservation.Extension[ObservationExtension].BMI"
* component[diastolic].valueQuantity.value -> "Observation.ObservationValue\nObservation.Extension[ObservationExtension].BMI"
* performer -> "Observation.EnteredAt\nObservation.Extension[ObservationExtension].Location"
* status -> "Observation.Extension[ObservationExtension].Removed"
* status -> "Observation.Extension[ObservationExtension].Removed"
* effectiveDateTime -> "Observation.ObservationCode[Observation].Description\nObservation.ObservationMethods[ObservationMethod].Description"
* code.coding -> "Observation.ObservationCode\nObservation.Extension[ObservationExtension].BMI"
* bodySite -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-deviceCode].valueCodeableConcept -> "Observation.ObservationMethods"
* method -> "Observation.ObservationMethods"
* component[va-pre-condition].valueCodeableConcept -> "Observation.ObservationMethods"
* component[va-pre-condition-device].valueCodeableConcept -> "Observation.ObservationMethods"
* extension[http://hl7.org/fhir/StructureDefinition/observation-bodyPosition].valueCodeableConcept -> "Observation.ObservationMethods"
* valueQuantity.value -> "Observation.ObservationValue\nObservation.Extension[ObservationExtension].BMI"
* valueQuantity.code -> "Observation.ObservationCode\nObservation.Extension[ObservationExtension].BMI"

Mapping: vpr-to-VitalSignsBP
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: VitalSignsBP
* component[systolic].valueQuantity.value -> "vital.value\nvital.units\nvital.metricvalue\nvital.metricUnits\nvital.bmi"
* component[diastolic].valueQuantity.value -> "vital.value\nvital.units\nvital.metricvalue\nvital.metricUnits\nvital.bmi"
* issued -> "vital.entered"
* performer -> "vital.facility (>44-3)\nvital.facility (>44-.07)\nvital.location (>44-.01)"
* status -> "vital.removed [m]"
* status -> "vital.removed [m]"
* effectiveDateTime -> "vital.taken"
* code.coding -> "vital.vuid (>120.51-99.99)\nvital.name (>120.51-.01)"
* valueQuantity.value -> "vital.value\nvital.units\nvital.metricvalue\nvital.metricUnits\nvital.bmi"
* valueQuantity.code -> "vital.vuid (>120.51-99.99)\nvital.name (>120.51-.01)"