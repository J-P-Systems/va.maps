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
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdo-26-1541
Description: "If (52-31) is not null then fixed value #completed"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

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
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN\nRxOut.RxOutpat.NationalDrugIEN\nRxOut.RxOutpatFill.LocalDrugIEN\nRxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN\nRxOut.RxOutpat.NationalDrugIEN\nRxOut.RxOutpatFill.LocalDrugIEN\nRxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"
* subject -> "RxOut.ActivityLog.PatientIEN\nRxOut.ActivityLogOtherComments.PatientIEN\nRxOut.RxOutpat.PatientIEN\nRxOut.RxOutpatExt.PatientIEN\nRxOut.RxOutpatExt.PatientSID\nRxOut.RxOutpatFill.PatientIEN\nRxOut.RxOutpatMedInstructions.PatientIEN\nRxOut.RxOutpatSig.PatientIEN"

Mapping: sda-to-MedicationDispenseOriginal
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationDispenseOriginal
* authorizingPrescription -> "Medication.ExternalId\nMedication.PlacerId"
* daysSupply -> "Medication.DaysSupply"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.patientInstruction -> "Medication.TextInstruction"
* medicationCodeableConcept.coding.code -> "Medication.DrugProduct\nMedication.CMOP\nMedication.DrugProduct.Identifier2\nMedication.DrugProduct.ProductName\nMedication.Extension[DrugProductExtension].FederalSchedule"
* medicationCodeableConcept.text -> "Medication.DrugProduct\nMedication.CMOP\nMedication.ComponentMeds[DrugProduct].Description\nMedication.ComponentMeds[DrugProduct].OriginalText\nMedication.DrugProduct.Description\nMedication.DrugProduct.OriginalText\nMedication.ATCCode.Code\nMedication.Generic.Description\nMedication.Route.Description\nMedication.OrderCategory.Description\nMedication.OriginalText\nMedication.OriginalText"
* quantity.value -> "Medication.OrderQuantity"
* location -> "Medication.OutpatientSite"
* note.text -> "Medication.Remarks"

Mapping: vpr-to-MedicationDispenseOriginal
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationDispenseOriginal
* daysSupply -> "med.daysSupply\npharmacy (med).daysSupply"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "med.dose [m]\npharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.code -> "med.dose [m]\npharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.value -> "med.dose [m]\npharmacy (med).dose [m]"
* medicationCodeableConcept.coding.code -> "med.route (>51.2-1)\npharmacy (med).route (>51.2-1)"
* medicationCodeableConcept.text -> "med.route (>51.2-1)\npharmacy (med).route (>51.2-1)"
* quantity.value -> "med.schedule\npharmacy (med).schedule"
* subject -> "med.units (>50.607-.01)\npharmacy (med).units (>50.607-.01)"