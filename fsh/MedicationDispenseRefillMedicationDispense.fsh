Profile: MedicationDispenseRefillMedicationDispense
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseRefillMedicationDispense
Title: "MedicationDispenseRefill {MedicationDispense}"
Description: "This StructureDefinition contains the maps for VistA PRESCRIPTION (file 52) to FHIR MedicationDispense"
* ^status = #draft
* status obeys inv-41
* status obeys inv-42
* status obeys inv-43

Invariant: inv-41
Description: "869: fixed value = completed if PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (#52-52 > 52.1-17) case not null"
Severity: #warning

Invariant: inv-42
Description: "819: fixed value = in-progress if PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (#52-52 > 52.1-17) case null"
Severity: #warning

Invariant: inv-43
Description: "1555: fixed value = in-progress if PRESCRIPTION - RELEASED DATE/TIME (#52-31) case null"
Severity: #warning

Mapping: vista-to-MedicationDispenseRefillMedicationDispense
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseRefillMedicationDispense
* authorizingPrescription -> "1553: source value from PRESCRIPTION - PLACER ORDER # (#52-39.3)"
* daysSupply -> "827: source value from PRESCRIPTION - REFILL > REFILL - DAYS SUPPLY (#52-52 > 52.1-1.1)"
* destination.display -> "836: source value from PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW (#52-52 > 52.1-2)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1559: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1579: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1558: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (#52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "1557: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (#52-114)"
* dosageInstruction.text -> "1556: source value from PRESCRIPTION - SIG (#52-10)"
* location -> "1552: reference from PRESCRIPTION - CLINIC (#52-5)"
* medicationCodeableConcept.coding.code -> "1561: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (#52-6 > 50-22)"
* medicationCodeableConcept.text -> "1560: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (#52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "824: source value from PRESCRIPTION - REFILL > REFILL - QTY (#52-52 > 52.1-1)"
* status -> "869: fixed value = completed if PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (#52-52 > 52.1-17) case not null" "updated table id (was a dup)"
* status -> "819: fixed value = in-progress if PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (#52-52 > 52.1-17) case null"
* status -> "1555: fixed value = in-progress if PRESCRIPTION - RELEASED DATE/TIME (#52-31) case null"
* subject -> "1551: reference from PRESCRIPTION - PATIENT (#52-2)"
* whenHandedOver -> "833: source value from PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (#52-52 > 52.1-17)"
* whenPrepared -> "830: source value from PRESCRIPTION - REFILL > REFILL - REFILL DATE (#52-52 > 52.1-.01)"

Mapping: cdw-to-MedicationDispenseRefillMedicationDispense
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseRefillMedicationDispense
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* location -> "RxOut.RxOutpatFill.PrescribingDivisionIEN"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.IVAdditiveIngredient.LocalDrugNameWithDose\nDim.IVSolutionIngredient.LocalDrugNameWithDose\nDim.LocalDrug.CorrespondingInpatientLocalDrugNameWithDose\nDim.LocalDrug.CorrespondingOutpatientLocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"

Mapping: vpr-to-MedicationDispenseRefillMedicationDispense
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseRefillMedicationDispense
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.text -> "Pharmacy: sig"
* location -> "Pharmacy: facility"
* quantity.value -> "Pharmacy: quantity"