Profile: MedicationDispenseRefill
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseRefill
Title: "MedicationDispense: Refill"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense."
* ^status = #active
* type and destination.display and authorizingPrescription and daysSupply and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and medicationCodeableConcept.text and quantity.value and status and subject and whenPrepared and location and note.text and performer.actor and category MS
* authorizingPrescription only Reference(MedicationRequestOutpatient)
* location only Reference(Location)
* performer.actor only Reference(Practitioner)
* type = http://terminology.hl7.org/CodeSystem/v3-ActCode#RF
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/DoseUnits
* dosageInstruction.doseAndRate.doseQuantity.code ^binding.description = "see mapping [VF_DoseUnits](ConceptMap-VF-DoseUnits.html)"
* dosageInstruction.doseAndRate.doseQuantity.value obeys mdr-24-1558
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* status obeys mdr-24-869
* status obeys mdr-24-819
* status obeys mdr-24-1555
* category = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient

Invariant: mdr-24-1558
Description: "If number then source value from (52-113 > 52.0113-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdr-24-869
Description: "If (52-52 > 52.1-17) is not null then fixed value #completed"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdr-24-819
Description: "If (52-52 > 52.1-17) is null then fixed value #in-progress"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: mdr-24-1555
Description: "If (52-31) is null then fixed value #in-progress"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-MedicationDispenseRefill
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseRefill
* type -> "1709: fixed value = http://terminology.hl7.org/CodeSystem/v3-ActCode#RF"
* destination.display -> "1712: source value based on PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-2)"
* authorizingPrescription -> "1553: reference based on PRESCRIPTION - PLACER ORDER # (52-39.3)"
* daysSupply -> "827: source value based on PRESCRIPTION - REFILL > REFILL - DAYS SUPPLY (52-52 > 52.1-1.1)"
* destination.display -> "836: source value based on PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-2)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1559: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1579: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1558: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) if number"
* dosageInstruction.patientInstruction -> "1557: source value based on PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.text -> "1556: source value based on PRESCRIPTION - SIG (52-10)"
* medicationCodeableConcept.coding.code -> "1561: source value based on PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1561-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "generated from mapParameter line 1"
* medicationCodeableConcept.text -> "1560: source value based on PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "824: source value based on PRESCRIPTION - REFILL > REFILL - QTY (52-52 > 52.1-1)"
* status -> "869: fixed value = #completed when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) if not null" "updated table id (was a dup)"
* status -> "819: fixed value = #in-progress when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) if null"
* status -> "1555: fixed value = #in-progress when PRESCRIPTION - RELEASED DATE/TIME (52-31) if null"
* subject -> "1551: reference based on PRESCRIPTION - PATIENT (52-2)"
* whenPrepared -> "833: source value based on PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17)" "see original fill note"
* location -> "1715: reference based on PRESCRIPTION - REFILL > REFILL - DIVISION > OUTPATIENT SITE - DEFAULT ERX CLINIC (52-52 > 52.1-8 > 59-10)" "not Clinic (written) but Division (filled)"
* note.text -> "1718: source value based on PRESCRIPTION - REFILL > REFILL - REMARKS (52-52 > 52.1-3)"
* performer.actor -> "1728: reference based on PRESCRIPTION - REFILL > REFILL - PHARMACIST NAME (52-52 > 52.1-4)"
* category -> "2215: fixed value = http://terminology.hl7.org/fhir/CodeSystem/medicationdispense-category#outpatient"

Mapping: cdw-to-MedicationDispenseRefill
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseRefill
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN\nRxOut.RxOutpat.NationalDrugIEN\nRxOut.RxOutpatFill.LocalDrugIEN\nRxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN\nRxOut.RxOutpat.NationalDrugIEN\nRxOut.RxOutpatFill.LocalDrugIEN\nRxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"
* subject -> "RxOut.ActivityLog.PatientIEN\nRxOut.ActivityLogOtherComments.PatientIEN\nRxOut.RxOutpat.PatientIEN\nRxOut.RxOutpatExt.PatientIEN\nRxOut.RxOutpatExt.PatientSID\nRxOut.RxOutpatFill.PatientIEN\nRxOut.RxOutpatMedInstructions.PatientIEN\nRxOut.RxOutpatSig.PatientIEN"

Mapping: sda-to-MedicationDispenseRefill
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationDispenseRefill
* destination.display -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* authorizingPrescription -> "Medication.ExternalId\nMedication.PlacerId"
* daysSupply -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* destination.display -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Medication.DosageSteps\nMedication.Route\nMedication.DoseQuantity\nMedication.DoseUoM\nMedication.Duration\nMedication.Frequency\nMedication.TextInstruction\nMedication.Conjunction\nMedication.Noun\nMedication.UnitsPerDose\nMedication.Verb"
* dosageInstruction.patientInstruction -> "Medication.TextInstruction"
* medicationCodeableConcept.coding.code -> "Medication.DrugProduct\nMedication.CMOP\nMedication.DrugProduct.Identifier2\nMedication.DrugProduct.ProductName\nMedication.Extension[DrugProductExtension].FederalSchedule"
* medicationCodeableConcept.text -> "Medication.DrugProduct\nMedication.CMOP\nMedication.ComponentMeds[DrugProduct].Description\nMedication.ComponentMeds[DrugProduct].OriginalText\nMedication.DrugProduct.Description\nMedication.DrugProduct.OriginalText\nMedication.ATCCode.Code\nMedication.Generic.Description\nMedication.Route.Description\nMedication.OrderCategory.Description\nMedication.OriginalText\nMedication.OriginalText"
* quantity.value -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* status -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* status -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* whenPrepared -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* location -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* note.text -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"
* performer.actor -> "Medication.RefillNumber\nMedication.EBilling\nMedication.Fills\nMedication.LastFilled"

Mapping: vpr-to-MedicationDispenseRefill
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: MedicationDispenseRefill
* dosageInstruction.doseAndRate.doseQuantity.unit -> "med.dose [m]\npharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.code -> "med.dose [m]\npharmacy (med).dose [m]"
* dosageInstruction.doseAndRate.doseQuantity.value -> "med.dose [m]\npharmacy (med).dose [m]"
* medicationCodeableConcept.coding.code -> "med.route (>51.2-1)\npharmacy (med).route (>51.2-1)"
* medicationCodeableConcept.text -> "med.route (>51.2-1)\npharmacy (med).route (>51.2-1)"
* subject -> "med.units (>50.607-.01)\npharmacy (med).units (>50.607-.01)"