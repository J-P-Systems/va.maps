Profile: MedicationDispensePartial
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispensePartial
Title: "MedicationDispense: Partial"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (#52) to MedicationDispense"
* ^status = #draft
* type and destination.display and authorizingPrescription and daysSupply and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and location and medicationCodeableConcept.coding.code and medicationCodeableConcept.text and quantity.value and status and subject and whenHandedOver and whenPrepared and performer.actor and note.text MS

Mapping: vista-to-MedicationDispensePartial
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispensePartial
* type -> "1710: fixed value = PF"
* destination.display -> "1713: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (#52-60 > 52.2-.02)"
* authorizingPrescription -> "1565: source value from PRESCRIPTION - PLACER ORDER # (#52-39.3)"
* daysSupply -> "828: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE- DAYS SUPPLY (#52-60 > 52.2-.041)"
* destination.display -> "837: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (#52-60 > 52.2-.02)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1571: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1576: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1570: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (#52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "1569: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (#52-114)"
* dosageInstruction.text -> "1568: source value from PRESCRIPTION - SIG (#52-10)"
* location -> "1564: reference from PRESCRIPTION - CLINIC (#52-5)"
* medicationCodeableConcept.coding.code -> "1573: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (#52-6 > 50-22)"
* medicationCodeableConcept.text -> "1572: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (#52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "1566: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - QTY (#52-60 > 52.2-.04)"
* status -> "1577: fixed value = completed when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (#52-60 > 52.2-8) case not null"
* status -> "1578: fixed value = in-progress when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (#52-60 > 52.2-8) case null"
* subject -> "1563: reference from PRESCRIPTION - PATIENT (#52-2)"
* whenHandedOver -> "834: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (#52-60 > 52.2-8)"
* whenPrepared -> "831: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - PARTIAL DATE (#52-60 > 52.2-.01)"
* performer.actor -> "1714: reference from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - DIVISION (#52-60 > 52.2-.09)"
* note.text -> "1717: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - REMARKS (#52-60 > 52.2-.03)"

Mapping: cdw-to-MedicationDispensePartial
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispensePartial
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* location -> "RxOut.RxOutpatFill.PrescribingDivisionIEN"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.IVAdditiveIngredient.LocalDrugNameWithDose\nDim.IVSolutionIngredient.LocalDrugNameWithDose\nDim.LocalDrug.CorrespondingInpatientLocalDrugNameWithDose\nDim.LocalDrug.CorrespondingOutpatientLocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"

Mapping: vpr-to-MedicationDispensePartial
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispensePartial
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.text -> "Pharmacy: sig"
* location -> "Pharmacy: facility"
* quantity.value -> "Pharmacy: quantity"