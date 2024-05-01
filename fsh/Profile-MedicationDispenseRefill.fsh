Profile: MedicationDispenseRefill
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseRefill
Title: "MedicationDispense: Refill"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense"
* ^status = #draft
* type and destination.display and authorizingPrescription and daysSupply and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and location and medicationCodeableConcept.coding.code and medicationCodeableConcept.text and quantity.value and status and subject and whenHandedOver and whenPrepared and performer.actor and note.text MS
* type = #RF
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits

Mapping: vista-to-MedicationDispenseRefill
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseRefill
* type -> "1709: fixed value = #RF"
* destination.display -> "1712: source value from PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-.01)"
* authorizingPrescription -> "1553: source value from PRESCRIPTION - PLACER ORDER # (52-39.3)"
* daysSupply -> "827: source value from PRESCRIPTION - REFILL > REFILL - DAYS SUPPLY (52-52 > 52.1-1.1)"
* destination.display -> "836: source value from PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-2)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1559: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1579: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1558: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "1557: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.text -> "1556: source value from PRESCRIPTION - SIG (52-10)"
* location -> "1552: reference from PRESCRIPTION - CLINIC (52-5)"
* medicationCodeableConcept.coding.code -> "1561: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.text -> "1560: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "824: source value from PRESCRIPTION - REFILL > REFILL - QTY (52-52 > 52.1-1)"
* status -> "869: fixed value = #completed when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) case not null" "updated table id (was a dup)"
* status -> "819: fixed value = #in-progress when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) case null"
* status -> "1555: fixed value = #in-progress when PRESCRIPTION - RELEASED DATE/TIME (52-31) case null"
* subject -> "1551: reference from PRESCRIPTION - PATIENT (52-2)"
* whenHandedOver -> "833: source value from PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17)"
* whenPrepared -> "830: source value from PRESCRIPTION - REFILL > REFILL - REFILL DATE (52-52 > 52.1-.01)"
* performer.actor -> "1715: reference from PRESCRIPTION - REFILL > REFILL - DIVISION (52-52 > 52.1-8)"
* note.text -> "1718: source value from PRESCRIPTION - REFILL > REFILL - REMARKS (52-52 > 52.1-3)"

Mapping: cdw-to-MedicationDispenseRefill
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseRefill
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* location -> "RxOut.RxOutpatFill.PrescribingDivisionIEN"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.IVAdditiveIngredient.LocalDrugNameWithDose,Dim.IVSolutionIngredient.LocalDrugNameWithDose,Dim.LocalDrug.CorrespondingInpatientLocalDrugNameWithDose,Dim.LocalDrug.CorrespondingOutpatientLocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"

Mapping: vpr-to-MedicationDispenseRefill
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseRefill
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.text -> "Pharmacy: sig"
* location -> "Pharmacy: facility"
* quantity.value -> "Pharmacy: quantity"