Profile: MedicationDispenseOriginal
Parent: http://hl7.org/fhir/StructureDefinition/MedicationDispense
Id: MedicationDispenseOriginal
Title: "MedicationDispense: Original"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (#52) to MedicationDispense"
* ^status = #draft
* type and authorizingPrescription and daysSupply and destination.display and dosageInstruction.doseAndRate.doseQuantity.unit and dosageInstruction.doseAndRate.doseQuantity.code and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.patientInstruction and dosageInstruction.text and location and medicationCodeableConcept.coding.code and medicationCodeableConcept.text and quantity.value and status and subject and whenHandedOver and whenPrepared and category and performer.actor and note.text MS
* type = #FF
* dosageInstruction.doseAndRate.doseQuantity.code from http://va.gov/fhir/ValueSet/VSVFDoseUnits
* category = #outpatient

Mapping: vista-to-MedicationDispenseOriginal
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationDispenseOriginal
* type -> "1708: fixed value = #FF"
* authorizingPrescription -> "822: source value from PRESCRIPTION - PLACER ORDER # (#52-39.3)"
* daysSupply -> "826: source value from PRESCRIPTION - DAYS SUPPLY (#52-8)"
* destination.display -> "835: source value from PRESCRIPTION - MAIL/WINDOW (#52-11)"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "842: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.code -> "1575: terminologyMaps using VF_DoseUnits on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (#52-113 > 52.0113-2)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "840: source value from PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (#52-113 > 52.0113-.01) case number"
* dosageInstruction.patientInstruction -> "839: source value from PRESCRIPTION - PATIENT INSTRUCTIONS (#52-114)"
* dosageInstruction.text -> "838: source value from PRESCRIPTION - SIG (#52-10)"
* location -> "821: reference from PRESCRIPTION - CLINIC (#52-5)"
* medicationCodeableConcept.coding.code -> "1545: source value from PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY (#52-6 > 50-22)"
* medicationCodeableConcept.text -> "1544: source value from PRESCRIPTION - DRUG > DRUG - GENERIC NAME (#52-6 > 50-.01)" "This may not be necessary; we have the product."
* quantity.value -> "823: source value from PRESCRIPTION - QTY (#52-7)"
* status -> "1541: fixed value = #completed when PRESCRIPTION - RELEASED DATE/TIME (#52-31) case not null"
* subject -> "820: reference from PRESCRIPTION - PATIENT (#52-2)"
* whenHandedOver -> "832: source value from PRESCRIPTION - RELEASED DATE/TIME (#52-31)" "Per discussion with Pharma: Josh Miller 5/27/22"
* whenPrepared -> "1548: source value from PRESCRIPTION - FILL DATE (#52-22)" "Per discussion with Pharma: Josh Miller 5/27/22"
* category -> "1668: fixed value = #outpatient"
* performer.actor -> "1711: reference from PRESCRIPTION - DIVISION (#52-20)"
* note.text -> "1716: source value from PRESCRIPTION - REMARKS (#52-12)"

Mapping: cdw-to-MedicationDispenseOriginal
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationDispenseOriginal
* authorizingPrescription -> "RxOut.RxOutpat.CPRSOrderEntryNumber"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.code -> "RxOut.RxOutpatMedInstructions.Unit"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* location -> "RxOut.RxOutpatFill.PrescribingDivisionIEN"
* medicationCodeableConcept.coding.code -> "Dim.LocalDrug.DrugNameWithoutDoseIEN,Dim.LocalDrug.NationalDrugIEN,Dim.LocalDrug.NationalDrugIEN"
* medicationCodeableConcept.text -> "Dim.IVAdditiveIngredient.LocalDrugNameWithDose,Dim.IVSolutionIngredient.LocalDrugNameWithDose,Dim.LocalDrug.CorrespondingInpatientLocalDrugNameWithDose,Dim.LocalDrug.CorrespondingOutpatientLocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,Dim.LocalDrug.LocalDrugNameWithDose,RxOut.RxOutpatFill.LocalDrugNameWithDose"

Mapping: vpr-to-MedicationDispenseOriginal
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: MedicationDispenseOriginal
* daysSupply -> "Pharmacy: daysSupply"
* destination.display -> "Pharmacy: routing"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.code -> "Pharmacy: dose.units"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Pharmacy: dose.dose"
* dosageInstruction.text -> "Pharmacy: sig"
* location -> "Pharmacy: facility"
* quantity.value -> "Pharmacy: quantity"