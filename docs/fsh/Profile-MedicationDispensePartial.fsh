Profile: MedicationDispensePartial
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispensePartial
Title: "MedicationDispense: Partial"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense."
* ^status = #active
* type and destination.display and authorizingPrescription and daysSupply and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and medicationCodeableConcept.text and quantity.value and status and subject and whenPrepared and location and note.text and performer.actor and category MS
* authorizingPrescription only Reference(MedicationRequestOutpatient)
* subject only Reference(Patient)
* location only Reference(Location)
* performer.actor only Reference(Practitioner)
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#SIS
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/DoseUnits
* dosageInstruction.doseAndRate.doseQuantity.code ^binding.description = "see mapping [VF_DoseUnits](ConceptMap-VF-DoseUnits.html)"
* dosageInstruction.doseAndRate.doseQuantity.value obeys mdp-25-1570
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* status obeys mdp-25-1577
* status obeys mdp-25-1578
* category = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient

Invariant: mdp-25-1570
Description: "If number then source value from (52-113 > 52.0113-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdp-25-1577
Description: "If (52-60 > 52.2-8) is not null then fixed value #completed"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdp-25-1578
Description: "If (52-60 > 52.2-8) is null then fixed value #in-progress"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-MedicationDispensePartial
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispensePartial
* type -> "1710: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#SIS" "https://jira.hl7.org/browse/UP-641"
* destination.display -> "1713: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (52-60 > 52.2-.02)"
* authorizingPrescription -> "1565: reference based on PRESCRIPTION - PLACER ORDER # (52-39.3)"
* daysSupply -> "828: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - DAYS SUPPLY (52-60 > 52.2-.041)"
* destination.display -> "837: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (52-60 > 52.2-.02)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1571: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1576: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1570: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) if number"
* dosageInstruction.patientInstruction -> "1569: source value based on PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.text -> "1568: source value based on PRESCRIPTION - SIG (52-10)"
* medicationCodeableConcept.coding.code -> "1573: source value based on PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1573-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "generated from mapParameter line 1"
* medicationCodeableConcept.text -> "1572: source value based on PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "1566: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - QTY (52-60 > 52.2-.04)"
* status -> "1577: fixed value = #completed when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8) if not null"
* status -> "1578: fixed value = #in-progress when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8) if null"
* subject -> "1563: reference based on PRESCRIPTION - PATIENT (52-2)"
* whenPrepared -> "834: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8)" "see original fill note"
* location -> "1714: reference based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - DIVISION > OUTPATIENT SITE - DEFAULT ERX CLINIC (52-60 > 52.2-.09 > 59-10)" "not Clinic (written) but Division (filled)"
* note.text -> "1717: source value based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - REMARKS (52-60 > 52.2-.03)"
* performer.actor -> "1729: reference based on PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - PHARMACIST NAME (52-60 > 52.2-.05)"
* category -> "2216: fixed value = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient"

Mapping: cdw-to-MedicationDispensePartial
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispensePartial
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"

Mapping: sda-to-MedicationDispensePartial
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationDispensePartial
* destination.display -> "Medication.Fills"
* authorizingPrescription -> "Medication.ExternalId,Medication.PlacerId"
* daysSupply -> "Medication.Fills"
* destination.display -> "Medication.Fills"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.patientInstruction -> "Medication.TextInstruction"
* medicationCodeableConcept.coding.code -> "Medication.DrugProduct,Medication.CMOP\nMedication.DrugProduct.Identifier2,Medication.DrugProduct.ProductName,Medication.Extension[DrugProductExtension].FederalSchedule"
* medicationCodeableConcept.text -> "Medication.DrugProduct,Medication.CMOP\nMedication.ComponentMeds[DrugProduct].Description,Medication.ComponentMeds[DrugProduct].OriginalText,Medication.DrugProduct.Description,Medication.DrugProduct.OriginalText,Medication.ATCCode.Code,Medication.Generic.Description,Medication.Route.Description,Medication.OrderCategory.Description,Medication.OriginalText,Medication.OriginalText"
* quantity.value -> "Medication.Fills"
* status -> "Medication.Fills"
* status -> "Medication.Fills"
* whenPrepared -> "Medication.Fills"
* location -> "Medication.Fills"
* note.text -> "Medication.Fills"
* performer.actor -> "Medication.Fills"

Mapping: vpr-to-MedicationDispensePartial
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationDispensePartial
* dosageInstruction.doseAndRate.doseQuantity.unit -> "med.dose [m],pharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.code -> "med.dose [m],pharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.value -> "med.dose [m],pharmacy (med).dose [m]"
* medicationCodeableConcept.coding.code -> "med.route (>51.2-1),pharmacy (med).route (>51.2-1)"
* medicationCodeableConcept.text -> "med.route (>51.2-1),pharmacy (med).route (>51.2-1)"
* subject -> "med.units (>50.607-.01),pharmacy (med).units (>50.607-.01)"