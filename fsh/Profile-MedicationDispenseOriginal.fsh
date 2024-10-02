Profile: MedicationDispenseOriginal
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseOriginal
Title: "MedicationDispense: Original"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to MedicationDispense"
* ^status = #draft
* type and authorizingPrescription and daysSupply and destination.display and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and medicationCodeableConcept.text and quantity.value and status and subject and whenPrepared and category and location and note.text and performer MS
* authorizingPrescription only Reference(MedicationRequestOutpatient)
* type = #FF
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits
* medicationCodeableConcept.coding.system = "urn:oid:2.16.840.1.113883.6.233"
* category = #outpatient

Mapping: source-to-MedicationDispenseOriginal
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseOriginal
* type -> "1708: fixed value = #FF"
* authorizingPrescription -> "822: reference from PRESCRIPTION - PLACER ORDER # (52-39.3)"
* daysSupply -> "826: source value from PRESCRIPTION - DAYS SUPPLY (52-8)"
* destination.display -> "835: source value from PRESCRIPTION - MAIL/WINDOW/PARK (52-11)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "842: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1575: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "840: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "839: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.text -> "838: source value from PRESCRIPTION - SIG (52-10)"
* medicationCodeableConcept.coding.code -> "1545: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (52-6 > 50-22)"
* medicationCodeableConcept.coding.system -> "1545-1: fixed value = urn:oid:2.16.840.1.113883.6.233" "from mapParameter 1"
* medicationCodeableConcept.text -> "1544: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "823: source value from PRESCRIPTION - QTY (52-7)"
* status -> "1541: fixed value = #completed when PRESCRIPTION - RELEASED DATE/TIME (52-31) case not null"
* subject -> "820: reference from PRESCRIPTION - PATIENT (52-2)"
* whenPrepared -> "832: source value from PRESCRIPTION - RELEASED DATE/TIME (52-31)" "WHO Per discussion with Pharma: Josh Miller 5/27/22\nupdated to WP per discussion with Eric Spahn 2/5/24"
* category -> "1668: fixed value = #outpatient"
* location -> "1711: reference from PRESCRIPTION - DIVISION (52-20)" "not Clinic (written) but Division (filled)"
* note.text -> "1716: source value from PRESCRIPTION - REMARKS (52-12)"
* performer -> "1727: reference from PRESCRIPTION - PHARMACIST (52-23)"

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

Mapping: vpr-to-MedicationDispenseOriginal
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseOriginal
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN\nDim.LocalDrug.NationalDrugIEN\nDim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.LocalDrug.LocalDrugNameWithDose\nDim.LocalDrug.LocalDrugNameWithDose\nRxOut.RxOutpatFill.LocalDrugNameWithDose"