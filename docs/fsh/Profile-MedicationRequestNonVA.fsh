Profile: MedicationRequestNonVA
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestNonVA
Title: "MedicationRequest: NonVA"
Description: "This StructureDefinition contains the maps for VistA file NON-VA MEDS (55.05) to us-core-medicationrequest."
* ^status = #draft
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-order-number 0..1 and va-ien 0..1
* requester.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* encounter.extension contains http://hl7.org/fhir/StructureDefinition/data-absent-reason named data-absent-reason 0..1
* dosageInstruction.doseAndRate.doseQuantity.extension contains http://hl7.org/fhir/StructureDefinition/originalText named originalText 0..1
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation named medicationrequest-recordedLocation 0..1
* identifier[va-order-number].value and identifier[va-order-number].system and identifier[va-order-number].type and identifier[va-ien].value and identifier[va-ien].system and intent and reportedBoolean and requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode and medicationCodeableConcept and dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] and dosageInstruction.route.text and dosageInstruction.timing.code.text and status and authoredOn and recorder and note and reasonCode.text and dosageInstruction.text and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference MS
* recorder only Reference(Practitioner)
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference only Reference(Location)
* identifier[va-order-number].system = "http://va.gov/identifiers/$Sta3n/55.05-7"
* identifier[va-order-number].type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* identifier[va-ien].system = "http://va.gov/identifiers/$Sta3n/55.05"
* intent = #plan
* reportedBoolean = true
* requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unsupported
* encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode = #unsupported
* medicationCodeableConcept obeys mrnva-22-1732
* status obeys mrnva-22-1737
* status obeys mrnva-22-1738

Invariant: mrnva-22-1732
Description: "If 55.05-1 is null then source value from (55.05-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mrnva-22-1737
Description: "If (55.05-5) is NULL then fixed value #active"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mrnva-22-1738
Description: "If (55.05-5) is NOT NULL then fixed value #inactive"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-MedicationRequestNonVA
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestNonVA
* identifier[va-order-number].value -> "1762: source value based on NON-VA MEDS - ORDER NUMBER (55.05-7)" "Not required by US Core"
* identifier[va-order-number].system -> "1762-1: fixed value = http://va.gov/identifiers/$Sta3n/55.05-7" "generated from mapParameter line 1"
* identifier[va-order-number].type -> "1762-2: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#FILL" "generated from mapParameter line 2"
* identifier[va-ien].value -> "1763: source value based on NON-VA MEDS - IEN (55.05-.001)" "Not required by US Core"
* identifier[va-ien].system -> "1763-1: fixed value = http://va.gov/identifiers/$Sta3n/55.05" "generated from mapParameter line 1"
* intent -> "1540: fixed value = #plan" "Revisit this if we can influence US Core"
* reportedBoolean -> "1347: fixed value = true"
* requester.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1730: fixed value = #unsupported"
* encounter.extension[http://hl7.org/fhir/StructureDefinition/data-absent-reason].valueCode -> "1731: fixed value = #unsupported"
* medicationCodeableConcept -> "1732: source value based on NON-VA MEDS - ORDERABLE ITEM (55.05-.01) if 55.05-1 is null"
* medicationCodeableConcept -> "1733: source value based on NON-VA MEDS - DISPENSE DRUG (55.05-1)"
* dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] -> "1734: source value based on NON-VA MEDS - DOSAGE (55.05-2)"
* dosageInstruction.route.text -> "1735: source value based on NON-VA MEDS - MEDICATION ROUTE (55.05-3)"
* dosageInstruction.timing.code.text -> "1736: source value based on NON-VA MEDS - SCHEDULE (55.05-4)"
* status -> "1737: fixed value = #active when NON-VA MEDS - STATUS (55.05-5) if NULL" "use status, not discontinue date"
* status -> "1738: fixed value = #inactive when NON-VA MEDS - STATUS (55.05-5) if NOT NULL" "use status, not discontinue date"
* authoredOn -> "1741: source value based on NON-VA MEDS - DOCUMENTED DATE (55.05-11)"
* recorder -> "1742: reference based on NON-VA MEDS - DOCUMENTED BY (55.05-12)"
* note -> "1743: source value based on NON-VA MEDS - COMMENTS (55.05-14)" "Concatenate Disclaimer to end."
* reasonCode.text -> "1744: source value based on NON-VA MEDS - INDICATION FOR USE (55.05-15)"
* dosageInstruction.text -> "1745: source value based on NON-VA MEDS - SIG (55.05-16)"
* note -> "1764: source value based on NON-VA MEDS - DISCLAIMER (55.05-10)" "Concatenate to Comment. Delimit with a period."
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "1765: reference based on NON-VA MEDS - CLINIC (55.05-13)"
* category[us-core] -> "2178: target not supported" "auto added because of must-support"
* reportedReference -> "2179: target not supported" "auto added because of must-support"
* medicationReference -> "2180: target not supported" "auto added because of must-support"
* subject -> "2181: target not supported" "auto added because of must-support"

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

Mapping: sda-to-MedicationRequestNonVA
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationRequestNonVA
* identifier[va-order-number].value -> "Medication.ExternalId,Medication.PlacerId"
* medicationCodeableConcept -> "Medication.DosageForm,Medication.OrderItem,Medication.IsNonFormulary,Medication.PharmacyOrderItem"
* medicationCodeableConcept -> "Medication.DrugProduct"
* dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] -> "Medication.Sig,Medication.DoseQuantity,Medication.TextInstruction"
* dosageInstruction.route.text -> "Medication.Route,Medication.Sig"
* dosageInstruction.timing.code.text -> "Medication.Sig,Medication.Frequency"
* status -> "Medication.PharmacyStatus,Medication.VAStatus"
* status -> "Medication.PharmacyStatus,Medication.VAStatus"
* authoredOn -> "Medication.EnteredOn"
* recorder -> "Medication.EnteredBy,Medication.OrderedBy"
* note -> "Medication.Comments"
* note -> "Medication.Statement"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "Medication.EnteredAt,Medication.EnteringOrganization"

Mapping: vpr-to-MedicationRequestNonVA
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationRequestNonVA
* identifier[va-order-number].value -> "med.id,med.orderID,pharmacy (med).id,pharmacy (med).orderID"
* medicationCodeableConcept -> "med.form (>50.7-.01),med.name (>50.7-.01),med.name (>50.7-.02),pharmacy (med).form (>50.7-.01),pharmacy (med).name (>50.7-.01),pharmacy (med).name (>50.7-.02)"
* medicationCodeableConcept -> "med.product [m] (>50-.01),pharmacy (med).product [m] (>50-.01)"
* dosageInstruction.doseAndRate.doseQuantity.extension[http://hl7.org/fhir/StructureDefinition/originalText] -> "med.dose,med.sig,pharmacy (med).dose,pharmacy (med).sig"
* dosageInstruction.route.text -> "med.route,med.sig,pharmacy (med).route,pharmacy (med).sig"
* dosageInstruction.timing.code.text -> "med.schedule,med.sig,pharmacy (med).schedule,pharmacy (med).sig"
* status -> "med.status,med.vaStatus,pharmacy (med).status,pharmacy (med).vaStatus"
* status -> "med.status,med.vaStatus,pharmacy (med).status,pharmacy (med).vaStatus"
* authoredOn -> "med.ordered,pharmacy (med).ordered"
* recorder -> "med.currentProvider (>200-.01),med.orderingProvider (>200-.01),pharmacy (med).currentProvider (>200-.01),pharmacy (med).orderingProvider (>200-.01)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-recordedLocation].valueReference -> "med.facility (>44-3),med.location (>44-.01),pharmacy (med).facility (>44-3),pharmacy (med).location (>44-.01)"