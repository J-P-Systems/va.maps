Profile: MedicationDispenseOriginal
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseOriginal
Title: "MedicationDispense: Original"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense"
* ^status = #draft
* subject and authorizingPrescription and quantity.value and daysSupply and whenPrepared and destination.display and dosageInstruction.text and dosageInstruction.patientInstruction and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.doseAndRate.doseQuantity.unit and status and medicationCodeableConcept.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and dosageInstruction.doseAndRate.doseQuantity.code and category and type and location and note.text and performer MS
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits
* category = #outpatient
* type = #FF

Mapping: source-to-MedicationDispenseOriginal
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseOriginal
* subject -> "820: reference from PRESCRIPTION - PATIENT (52-2)"
* authorizingPrescription -> "822: source value from PRESCRIPTION - PLACER ORDER # (52-39.3)"
* quantity.value -> "823: source value from PRESCRIPTION - QTY (52-7)"
* daysSupply -> "826: source value from PRESCRIPTION - DAYS SUPPLY (52-8)"
* whenPrepared -> "832: source value from PRESCRIPTION - RELEASED DATE/TIME (52-31)" "WHO Per discussion with Pharma: Josh Miller 5/27/22\nupdated to WP per discussion with Eric Spahn 2/5/24"
* destination.display -> "835: source value from PRESCRIPTION - MAIL/WINDOW/PARK (52-11)"
* dosageInstruction.text -> "838: source value from PRESCRIPTION - SIG (52-10)"
* dosageInstruction.patientInstruction -> "839: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "840: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) case number"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "842: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* status -> "1541: fixed value = #completed when PRESCRIPTION - RELEASED DATE/TIME (52-31) case not null"
* medicationCodeableConcept.text -> "1544: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* medicationCodeableConcept.coding.code -> "1545: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1545-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "from mapParameter 1"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1575: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* category -> "1668: fixed value = #outpatient"
* type -> "1708: fixed value = #FF"
* location -> "1711: reference from PRESCRIPTION - DIVISION (52-20)" "not Clinic (written) but Division (filled)"
* note.text -> "1716: source value from PRESCRIPTION - REMARKS (52-12)"
* performer -> "1727: reference from PRESCRIPTION - PHARMACIST (52-23)"

Mapping: cdw-to-MedicationDispenseOriginal
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseOriginal
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN\nDim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"

Mapping: vpr-to-MedicationDispenseOriginal
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseOriginal
* quantity.value -> "Pharmacy: quantity"
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.text -> "Pharmacy: sig"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"