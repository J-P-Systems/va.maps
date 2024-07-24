Profile: MedicationRequestNonVA
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestNonVA
Title: "MedicationRequest: NonVA"
Description: "This StructureDefinition contains the maps for VistA file NON-VA MEDS (55.05) to us-core-medicationrequest"
* ^status = #draft
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-order-number 0..1 and va-ien 0..1
* requester.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* encounter.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* dosageInstruction.doseAndRate.doseQuantity.extension contains http://hl7.org/fhir/StructureDefinition/originalText named originalText 0..1
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation named medicationrequest-recordedLocation 0..1
* identifier[va-order-number].value and identifier[va-order-number].system and identifier[va-ien].value and identifier[va-ien].system and intent and reportedBoolean and requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and medicationCodeableConcept and dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] and dosageInstruction.route.text and dosageInstruction.timing.code.text and status and authoredOn and recorder and note and reasonCode.text and dosageInstruction.text and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference MS
* identifier[va-order-number].system = "http://va.gov/identifiers/$Sta3n/55.05-7"
* identifier[va-ien].system = "http://va.gov/identifiers/$Sta3n/55.05"
* intent = #plan
* reportedBoolean = true
* requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unsupported
* encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unsupported

Mapping: vista-to-MedicationRequestNonVA
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestNonVA
* identifier[va-order-number].value -> "1762: source value from NON-VA MEDS - ORDER NUMBER (55.05-7)" "Not required by US Core"
* identifier[va-order-number].system -> "1762-1: fixed value = http://va.gov/identifiers/$Sta3n/55.05-7" "from mapParameter 1"
* identifier[va-ien].value -> "1763: source value from NON-VA MEDS - IEN (55.05-.001)" "Not required by US Core"
* identifier[va-ien].system -> "1763-1: fixed value = http://va.gov/identifiers/$Sta3n/55.05" "from mapParameter 1"
* intent -> "1540: fixed value = #plan" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true"
* requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1730: fixed value = #unsupported"
* encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1731: fixed value = #unsupported"
* medicationCodeableConcept -> "1732: source value from NON-VA MEDS - ORDERABLE ITEM (55.05-.01) case 55.05-1 is null"
* medicationCodeableConcept -> "1733: source value from NON-VA MEDS - DISPENSE DRUG (55.05-1)"
* dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] -> "1734: source value from NON-VA MEDS - DOSAGE (55.05-2)"
* dosageInstruction.route.text -> "1735: source value from NON-VA MEDS - MEDICATION ROUTE (55.05-3)"
* dosageInstruction.timing.code.text -> "1736: source value from NON-VA MEDS - SCHEDULE (55.05-4)"
* status -> "1737: fixed value = #active when NON-VA MEDS - STATUS (55.05-5) case NULL" "use status, not discontinue date"
* status -> "1738: fixed value = #inactive when NON-VA MEDS - STATUS (55.05-5) case NOT NULL" "use status, not discontinue date"
* authoredOn -> "1741: source value from NON-VA MEDS - DOCUMENTED DATE (55.05-11)"
* recorder -> "1742: reference from NON-VA MEDS - DOCUMENTED BY (55.05-12)"
* note -> "1743: source value from NON-VA MEDS - COMMENTS (55.05-14)" "Concatenate Disclaimer to end."
* reasonCode.text -> "1744: source value from NON-VA MEDS - INDICATION FOR USE (55.05-15)"
* dosageInstruction.text -> "1745: source value from NON-VA MEDS - SIG (55.05-16)"
* note -> "1764: source value from NON-VA MEDS - DISCLAIMER (55.05-10)" "Concatenate to Comment. Delimit with a period."
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "1765: reference from NON-VA MEDS - CLINIC (55.05-13)"

Mapping: cdw-to-MedicationRequestNonVA
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestNonVA
* identifier[va-order-number].value -> "NonVAMed.NonVAMed.CPRSOrderIEN"
* medicationCodeableConcept -> "NonVAMed.NonVAMed.PharmacyOrderableItemIEN"
* medicationCodeableConcept -> "NonVAMed.NonVAMed.LocalDrugIEN"
* dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] -> "NonVAMed.NonVAMed.Dosage"
* dosageInstruction.route.text -> "NonVAMed.NonVAMed.MedicationRoute"
* dosageInstruction.timing.code.text -> "NonVAMed.NonVAMed.Schedule"
* status -> "NonVAMed.NonVAMed.NonVAMedStatus"
* status -> "NonVAMed.NonVAMed.NonVAMedStatus"
* authoredOn -> "NonVAMed.NonVAMed.DocumentedDateTime"
* recorder -> "NonVAMed.NonVAMed.DocumentedByStaffIEN"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "NonVAMed.NonVAMed.LocationIEN"