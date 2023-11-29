Profile: MedDispenseOrigMedicationDispense
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedDispenseOrigMedicationDispense
Title: "MedDispenseOrig {MedicationDispense}"
Description: "This StructureDefinition contains the maps for VistA PRESCRIPTION (file 52) to FHIR MedicationDispense"
* ^status = #draft
* status obeys inv-37

Invariant: inv-37
Description: "1541: fixed value = completed if PRESCRIPTION - RELEASED DATE/TIME (#52-31) case not null"
Severity: #warning

Mapping: vista-to-MedDispenseOrigMedicationDispense
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedDispenseOrigMedicationDispense
* authorizingPrescription -> "822: source value from PRESCRIPTION - PLACER ORDER # (#52-39.3)"
* daysSupply -> "826: source value from PRESCRIPTION - DAYS SUPPLY (#52-8)"
* destination.display -> "835: source value from PRESCRIPTION - MAIL/WINDOW (#52-11)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "842: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1575: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "840: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (#52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "839: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (#52-114)"
* dosageInstruction.text -> "838: source value from PRESCRIPTION - SIG (#52-10)"
* location -> "821: reference from PRESCRIPTION - CLINIC (#52-5)"
* medicationCodeableConcept.coding.code -> "1545: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (#52-6 > 50-22)"
* medicationCodeableConcept.text -> "1544: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (#52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "823: source value from PRESCRIPTION - QTY (#52-7)"
* status -> "1541: fixed value = completed if PRESCRIPTION - RELEASED DATE/TIME (#52-31) case not null"
* subject -> "820: reference from PRESCRIPTION - PATIENT (#52-2)"
* whenHandedOver -> "832: source value from PRESCRIPTION - RELEASED DATE/TIME (#52-31)" "Per discussion with Pharma: Josh Miller 5/27/22"
* whenPrepared -> "1548: source value from PRESCRIPTION - FILL DATE (#52-22)" "Per discussion with Pharma: Josh Miller 5/27/22"

Mapping: cdw-to-MedDispenseOrigMedicationDispense
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedDispenseOrigMedicationDispense
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* location -> "RxOut.RxOutpatFill.PrescribingDivisionIEN"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.IVAdditiveIngredient.LocalDrugNameWithDose\nDim.IVSolutionIngredient.LocalDrugNameWithDose\nDim.LocalDrug.CorrespondingInpatientLocalDrugNameWithDose\nDim.LocalDrug.CorrespondingOutpatientLocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"

Mapping: vpr-to-MedDispenseOrigMedicationDispense
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedDispenseOrigMedicationDispense
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.text -> "Pharmacy: sig"
* location -> "Pharmacy: facility"
* quantity.value -> "Pharmacy: quantity"