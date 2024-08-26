Profile: MedicationDispenseRefill
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseRefill
Title: "MedicationDispense: Refill"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense"
* ^status = #draft
* status and quantity.value and daysSupply and whenPrepared and destination.display and subject and authorizingPrescription and dosageInstruction.text and dosageInstruction.patientInstruction and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.doseAndRate.doseQuantity.unit and medicationCodeableConcept.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and dosageInstruction.doseAndRate.doseQuantity.code and type and location and note.text and performer MS
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits
* type = #RF

Mapping: source-to-MedicationDispenseRefill
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseRefill
* status -> "819: fixed value = #in-progress when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) case null"
* quantity.value -> "824: source value from PRESCRIPTION - REFILL > REFILL - QTY (52-52 > 52.1-1)"
* daysSupply -> "827: source value from PRESCRIPTION - REFILL > REFILL - DAYS SUPPLY (52-52 > 52.1-1.1)"
* whenPrepared -> "833: source value from PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17)" "see original fill note"
* destination.display -> "836: source value from PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-2)"
* status -> "869: fixed value = #completed when PRESCRIPTION - REFILL > REFILL - RELEASED DATE/TIME (52-52 > 52.1-17) case not null" "updated table id (was a dup)"
* subject -> "1551: reference from PRESCRIPTION - PATIENT (52-2)"
* authorizingPrescription -> "1553: source value from PRESCRIPTION - PLACER ORDER # (52-39.3)"
* status -> "1555: fixed value = #in-progress when PRESCRIPTION - RELEASED DATE/TIME (52-31) case null"
* dosageInstruction.text -> "1556: source value from PRESCRIPTION - SIG (52-10)"
* dosageInstruction.patientInstruction -> "1557: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1558: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) case number"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1559: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* medicationCodeableConcept.text -> "1560: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* medicationCodeableConcept.coding.code -> "1561: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1561-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "from mapParameter 1"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1579: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* type -> "1709: fixed value = #RF"
* destination.display -> "1712: source value from PRESCRIPTION - REFILL > REFILL - MAIL/WINDOW/PARK (52-52 > 52.1-2)"
* location -> "1715: reference from PRESCRIPTION - REFILL > REFILL - DIVISION (52-52 > 52.1-8)" "not Clinic (written) but Division (filled)"
* note.text -> "1718: source value from PRESCRIPTION - REFILL > REFILL - REMARKS (52-52 > 52.1-3)"
* performer -> "1729: reference from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - PHARMACIST NAME (52-60 > 52.2-.05)"

Mapping: cdw-to-MedicationDispenseRefill
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseRefill
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"

Mapping: vpr-to-MedicationDispenseRefill
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseRefill
* quantity.value -> "Pharmacy: quantity"
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.text -> "Pharmacy: sig"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"