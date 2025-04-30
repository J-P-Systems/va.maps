Profile: MedicationDispenseOriginal
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseOriginal
Title: "MedicationDispense: Original"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense."
* ^status = #active
* type and authorizingPrescription and daysSupply and destination.display and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and medicationCodeableConcept.text and quantity.value and status and subject and whenPrepared and category and location and note.text and performer.actor MS
* authorizingPrescription only Reference(MedicationRequestOutpatient)
* subject only Reference(Patient)
* location only Reference(Location)
* performer.actor only Reference(Practitioner)
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#FF
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/DoseUnits
* dosageInstruction.doseAndRate.doseQuantity.code ^binding.description = "see mapping [VF_DoseUnits](ConceptMap-VF-DoseUnits.html)"
* dosageInstruction.doseAndRate.doseQuantity.value obeys mdo-26-840
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* status obeys mdo-26-1541
* category = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient

Invariant: mdo-26-840
Description: "If number then source value from (52-113 > 52.0113-.01)"
Severity: #warning
Expression: "true"

Invariant: mdo-26-1541
Description: "If (52-31) is not null then fixed value #completed"
Severity: #warning
Expression: "true"

Mapping: source-to-MedicationDispenseOriginal
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseOriginal
* type -> "1708: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#FF"
* authorizingPrescription -> "822: reference based on PRESCRIPTION - PLACER ORDER # (52-39.3)"
* daysSupply -> "826: source value based on PRESCRIPTION - DAYS SUPPLY (52-8)"
* destination.display -> "835: source value based on PRESCRIPTION - MAIL/WINDOW/PARK (52-11)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "842: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1575: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "840: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) if number"
* dosageInstruction.patientInstruction -> "839: source value based on PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.text -> "838: source value based on PRESCRIPTION - SIG (52-10)"
* medicationCodeableConcept.coding.code -> "1545: source value based on PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1545-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "generated from mapParameter line 1"
* medicationCodeableConcept.text -> "1544: source value based on PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "823: source value based on PRESCRIPTION - QTY (52-7)"
* status -> "1541: fixed value = #completed when PRESCRIPTION - RELEASED DATE/TIME (52-31) if not null"
* subject -> "820: reference based on PRESCRIPTION - PATIENT (52-2)"
* whenPrepared -> "832: source value based on PRESCRIPTION - RELEASED DATE/TIME (52-31)" "WHO Per discussion with Pharma: Josh Miller 5/27/22\nupdated to WP per discussion with Eric Spahn 2/5/24"
* category -> "1668: fixed value = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient"
* location -> "1711: reference based on PRESCRIPTION - DIVISION > OUTPATIENT SITE - DEFAULT ERX CLINIC (52-20 > 59-10)" "not Clinic (written) but Division (filled)"
* note.text -> "1716: source value based on PRESCRIPTION - REMARKS (52-12)"
* performer.actor -> "1727: reference based on PRESCRIPTION - PHARMACIST (52-23)"

Mapping: cdw-to-MedicationDispenseOriginal
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseOriginal
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"

Mapping: sda-to-MedicationDispenseOriginal
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationDispenseOriginal
* authorizingPrescription -> "Medication.ExternalId,Medication.PlacerId"
* daysSupply -> "Medication.DaysSupply"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.patientInstruction -> "Medication.TextInstruction"
* medicationCodeableConcept.coding.code -> "Medication.DrugProduct,Medication.CMOP\nMedication.DrugProduct.Identifier2,Medication.DrugProduct.ProductName,Medication.Extension[DrugProductExtension].FederalSchedule"
* medicationCodeableConcept.text -> "Medication.DrugProduct,Medication.CMOP\nMedication.ComponentMeds[DrugProduct].Description,Medication.ComponentMeds[DrugProduct].OriginalText,Medication.DrugProduct.Description,Medication.DrugProduct.OriginalText,Medication.ATCCode.Code,Medication.Generic.Description,Medication.Route.Description,Medication.OrderCategory.Description,Medication.OriginalText,Medication.OriginalText"
* quantity.value -> "Medication.OrderQuantity"
* location -> "Medication.OutpatientSite"
* note.text -> "Medication.Remarks"

Mapping: vpr-to-MedicationDispenseOriginal
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationDispenseOriginal
* daysSupply -> "med.daysSupply,pharmacy (med).daysSupply"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "med.dose [m],pharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.code -> "med.dose [m],pharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.value -> "med.dose [m],pharmacy (med).dose [m]"
* medicationCodeableConcept.coding.code -> "med.route (>51.2-1),pharmacy (med).route (>51.2-1)"
* medicationCodeableConcept.text -> "med.route (>51.2-1),pharmacy (med).route (>51.2-1)"
* quantity.value -> "med.schedule,pharmacy (med).schedule"
* subject -> "med.units (>50.607-.01),pharmacy (med).units (>50.607-.01)"