Profile: MedicationDispensePartial
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispensePartial
Title: "MedicationDispense: Partial"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense"
* ^status = #draft
* daysSupply and whenPrepared and destination.display and subject and authorizingPrescription and quantity.value and dosageInstruction.text and dosageInstruction.patientInstruction and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.doseAndRate.doseQuantity.unit and medicationCodeableConcept.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and dosageInstruction.doseAndRate.doseQuantity.code and status and type and location and note.text and performer MS
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits
* type = #PF

Mapping: source-to-MedicationDispensePartial
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispensePartial
* daysSupply -> "828: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - DAYS SUPPLY (52-60 > 52.2-.041)"
* whenPrepared -> "834: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8)" "see original fill note"
* destination.display -> "837: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (52-60 > 52.2-.02)"
* subject -> "1563: reference from PRESCRIPTION - PATIENT (52-2)"
* authorizingPrescription -> "1565: source value from PRESCRIPTION - PLACER ORDER # (52-39.3)"
* quantity.value -> "1566: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - QTY (52-60 > 52.2-.04)"
* dosageInstruction.text -> "1568: source value from PRESCRIPTION - SIG (52-10)"
* dosageInstruction.patientInstruction -> "1569: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "1570: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) case number"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "1571: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* medicationCodeableConcept.text -> "1572: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* medicationCodeableConcept.coding.code -> "1573: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1573-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "from mapParameter 1"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1576: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* status -> "1577: fixed value = #completed when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8) case not null"
* status -> "1578: fixed value = #in-progress when PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - RELEASED DATE/TIME (52-60 > 52.2-8) case null"
* type -> "1710: fixed value = #PF"
* destination.display -> "1713: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - MAIL/WINDOW (52-60 > 52.2-.02)"
* location -> "1714: reference from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - DIVISION (52-60 > 52.2-.09)" "not Clinic (written) but Division (filled)"
* note.text -> "1717: source value from PRESCRIPTION - PARTIAL DATE > PARTIAL DATE - REMARKS (52-60 > 52.2-.03)"
* performer -> "1728: reference from PRESCRIPTION - REFILL > REFILL - PHARMACIST NAME (52-52 > 52.1-4)"

Mapping: cdw-to-MedicationDispensePartial
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispensePartial
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"

Mapping: vpr-to-MedicationDispensePartial
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispensePartial
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* quantity.value -> "Pharmacy: quantity"
* dosageInstruction.text -> "Pharmacy: sig"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"