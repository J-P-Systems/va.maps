Profile: MedicationRequestOutpatient
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestOutpatient
Title: "MedicationRequest: Outpatient"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION (52) to us-core-medicationrequest."
* ^status = #draft
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus named medicationrequest-pharmacyOrderStatus 0..1
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-cancelDate named medicationrequest-cancelDate 0..1
* dosageInstruction.doseAndRate.extension contains http://hl7.org/fhir/StructureDefinition/originalText named originalText 0..1
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-includeIndicationInSig named medicationrequest-includeIndicationInSig 0..1
* extension contains http://va.gov/fhir/StructureDefinition/medicationrequest-remainingRefillCount named medicationrequest-remainingRefillCount 0..1
* id and status and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system and intent and medicationCodeableConcept.text and medicationCodeableConcept.coding.code and medicationCodeableConcept.coding.system and subject and authoredOn and requester and dosageInstruction.text and dosageInstruction.patientInstruction and dosageInstruction.doseAndRate.doseQuantity.value and dosageInstruction.doseAndRate.doseQuantity.unit and dispenseRequest.validityPeriod.end and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-cancelDate].valueDateTime and dispenseRequest.numberOfRepeatsAllowed and dispenseRequest.quantity.value and dispenseRequest.expectedSupplyDuration and dosageInstruction.doseAndRate.extension[http://hl7.org/fhir/StructureDefinition/originalText].valueString and identifier.value and identifier.type and dosageInstruction.route.coding.code and dosageInstruction.route.coding.system and category and reasonCode.text and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-includeIndicationInSig].valueBoolean and extension[http://va.gov/fhir/StructureDefinition/medicationrequest-remainingRefillCount].valueInteger MS
* subject only Reference(Patient)
* requester only Reference(Practitioner)
* status from http://va.gov/fhir/ValueSet/OutMedRequestStatus
* status ^binding.description = "see mapping [VF_OutMedRequestStatus](ConceptMap-VF-OutMedRequestStatus.html)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system = "http://va.gov/terminology/vistaDefinedTerms/52-100"
* intent = #order
* medicationCodeableConcept.coding.system = "http://www.nlm.nih.gov/research/umls/rxnorm"
* dosageInstruction.doseAndRate.doseQuantity.value obeys mro-27-811
* dosageInstruction.doseAndRate.extension[http://hl7.org/fhir/StructureDefinition/originalText].valueString obeys mro-27-841
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#FILL
* dosageInstruction.route.coding.system = "http://va.gov/terminology/vistaDefinedTerms/53.1-3"
* category = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-includeIndicationInSig].valueBoolean ^comment = "see mapping [VF_Boolean](ConceptMap-VF-Boolean.html)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code obeys mro-27-1746
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system obeys mro-27-1746-1

Invariant: mro-27-811
Description: "If number then source value from (52-113 > 52.0113-.01)"
Severity: #warning
Expression: "true"

Invariant: mro-27-841
Description: "If not a number then source value from (52-113 > 52.0113-.01)"
Severity: #warning
Expression: "true"

Invariant: mro-27-1746
Description: "If (52-11) is P then fixed value #active-parked"
Severity: #warning
Expression: "true"

Invariant: mro-27-1746-1
Description: "If P then fixed value http://va.gov/terminology/vistaDefinedTerms/52-100"
Severity: #warning
Expression: "true"

Mapping: source-to-MedicationRequestOutpatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestOutpatient
* id -> "798: transform using ID_generation() on PRESCRIPTION - IEN (52-.001)"
* status -> "799: terminologyMaps using VF_OutMedRequestStatus on PRESCRIPTION - STATUS (52-100)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "800: source value based on PRESCRIPTION - STATUS (52-100)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system -> "800-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/52-100" "generated from mapParameter line 1"
* intent -> "801: fixed value = #order" "All records from file 52 are orders"
* medicationCodeableConcept.text -> "803: source value based on PRESCRIPTION - DRUG > DRUG - PSNDF VA PRODUCT NAME ENTRY > VA PRODUCT - VA PRINT NAME (52-6 > 50-22 > 50.68-5)"
* medicationCodeableConcept.coding.code -> "805: transform using null on PRESCRIPTION - DRUG > DRUG - NATIONAL DRUG FILE ENTRY > VA GENERIC - CODING SYSTEM > CODING SYSTEM - CODE (52-6 > 50-20 > 50.6-5 > 50.65-.02)" "Could add NDC as well, but usually not captured"
* medicationCodeableConcept.coding.system -> "805-1: fixed value = http://www.nlm.nih.gov/research/umls/rxnorm" "generated from mapParameter line 1"
* subject -> "806: reference based on PRESCRIPTION - PATIENT (52-2)"
* authoredOn -> "807: source value based on PRESCRIPTION - ISSUE DATE (52-1)" "We are using Issue Date for MedicationRequest.authoredOn.\nSDA records Login Date (52-21) as Entered On because Entered On cannot be null. It records Issue Date (52-1) in an extension, VAStartDate. This may not be an issue for CDA because Login Date (first fill) should be on or shortly after Issue date. It could be an issue for interfaces striving for a finer level of granularity."
* requester -> "808: reference based on PRESCRIPTION - PROVIDER (52-4)" "retrieve via order"
* dosageInstruction.text -> "809: source value based on PRESCRIPTION - SIG (52-10)"
* dosageInstruction.patientInstruction -> "810: source value based on PRESCRIPTION - PATIENT INSTRUCTIONS (52-114)"
* dosageInstruction.doseAndRate.doseQuantity.value -> "811: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) if number"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "812: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - UNITS (52-113 > 52.0113-2)"
* dispenseRequest.validityPeriod.end -> "815: source value based on PRESCRIPTION - EXPIRATION DATE (52-26)" "confirm"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-cancelDate].valueDateTime -> "1704: source value based on PRESCRIPTION - CANCEL DATE (52-26.1)"
* dispenseRequest.numberOfRepeatsAllowed -> "816: source value based on PRESCRIPTION - # OF REFILLS (52-9)" "confirm"
* dispenseRequest.quantity.value -> "1669: source value based on PRESCRIPTION - QTY (52-7)"
* dispenseRequest.expectedSupplyDuration -> "1670: source value based on PRESCRIPTION - DAYS SUPPLY (52-8)"
* dosageInstruction.doseAndRate.extension[http://hl7.org/fhir/StructureDefinition/originalText].valueString -> "841: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - DOSAGE ORDERED (52-113 > 52.0113-.01) if not a number"
* identifier.value -> "1664: source value based on PRESCRIPTION - RX # (52-.01)"
* identifier.type -> "1664-1: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#FILL" "generated from mapParameter line 1"
* dosageInstruction.route.coding.code -> "1665: source value based on PRESCRIPTION - MEDICATION INSTRUCTIONS > MEDICATION INSTRUCTIONS - ROUTE (52-113 > 52.0113-6)"
* dosageInstruction.route.coding.system -> "1665-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/53.1-3" "generated from mapParameter line 1"
* category -> "1666: fixed value = http://terminology.hl7.org/CodeSystem/medicationrequest-category#outpatient"
* reasonCode.text -> "1705: source value based on PRESCRIPTION - INDICATION FOR USE (52-128)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-includeIndicationInSig].valueBoolean -> "1706: transform using VF_Boolean on PRESCRIPTION - INDICATION FOR USE FLAG (52-129)"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "1746: fixed value = #active-parked when PRESCRIPTION - MAIL/WINDOW/PARK (52-11) if P" "This value is consistent with Active. \nAdd a second value, or overwrite Active with Parked?"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.system -> "1746-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/52-100 if P" "generated from mapParameter line 1"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-remainingRefillCount].valueInteger -> "1853: null" "A value calculated by subtracting first fill (based on Released) and refills (52.1) from total fills (52-9 # OF REFILLS + 1)"
* reportedBoolean -> "2182: target not supported" "auto added because of must-support"
* reportedReference -> "2183: target not supported" "auto added because of must-support"
* medicationReference -> "2184: target not supported" "auto added because of must-support"
* encounter -> "2185: target not supported" "auto added because of must-support"

Mapping: cdw-to-MedicationRequestOutpatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedicationRequestOutpatient
* status -> "RxOut.RxOutpat.RxStatus"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "RxOut.RxOutpat.RxStatus"
* medicationCodeableConcept.text -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN"
* medicationCodeableConcept.coding.code -> "RxOut.RxOutpat.LocalDrugIEN,RxOut.RxOutpat.NationalDrugIEN,RxOut.RxOutpatFill.LocalDrugIEN,RxOut.RxOutpatFill.NationalDrugIEN"
* subject -> "RxOut.ActivityLog.PatientIEN,RxOut.ActivityLogOtherComments.PatientIEN,RxOut.RxOutpat.PatientIEN,RxOut.RxOutpatExt.PatientIEN,RxOut.RxOutpatExt.PatientSID,RxOut.RxOutpatFill.PatientIEN,RxOut.RxOutpatMedInstructions.PatientIEN,RxOut.RxOutpatSig.PatientIEN"
* authoredOn -> "RxOut.ActivityLog.IssueDateTime,RxOut.RxOutpat.IssueDate,RxOut.RxOutpatExt.IssueDateTime,RxOut.RxOutpatFill.IssueDate,RxOut.RxOutpatMedInstructions.IssueDate,RxOut.RxOutpatSig.IssueDate"
* requester -> "RxOut.RxOutpat.ProviderIEN"
* dosageInstruction.patientInstruction -> "RxOut.RxOutpatSig.PatientInstructions"
* dosageInstruction.doseAndRate.doseQuantity.value -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "RxOut.RxOutpatMedInstructions.Unit"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-cancelDate].valueDateTime -> "RxOut.RxOutpat.CancelDate"
* dispenseRequest.numberOfRepeatsAllowed -> "RxOut.RxOutpat.MaxRefills"
* dosageInstruction.doseAndRate.extension[http://hl7.org/fhir/StructureDefinition/originalText].valueString -> "RxOut.RxOutpatMedInstructions.DoseOrdered"
* identifier.value -> "RxOut.RxOutpat.RxNumber"
* dosageInstruction.route.coding.code -> "RxOut.RxOutpatMedInstructions.MedRoute"
* reasonCode.text -> "RxOut.RxOutpatExt.IndicationForUse"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-includeIndicationInSig].valueBoolean -> "RxOut.RxOutpatExt.IndicationForUseFlag"

Mapping: sda-to-MedicationRequestOutpatient
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: MedicationRequestOutpatient
* status -> "Medication.PharmacyStatus,Medication.VAStatus"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-pharmacyOrderStatus].valueCoding.code -> "Medication.PharmacyStatus,Medication.VAStatus"
* medicationCodeableConcept.text -> "Medication.DrugProduct,Medication.CMOP"
* medicationCodeableConcept.coding.code -> "Medication.DrugProduct,Medication.CMOP"
* authoredOn -> "Medication.VAStartDate,Medication.FillQuantity"
* requester -> "Medication.OrderedBy"
* dosageInstruction.patientInstruction -> "Medication.TextInstruction"
* dosageInstruction.doseAndRate.doseQuantity.value -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dosageInstruction.doseAndRate.doseQuantity.unit -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* dispenseRequest.validityPeriod.end -> "Medication.ToTime,Medication.Expires"
* extension[http://va.gov/fhir/StructureDefinition/medicationrequest-cancelDate].valueDateTime -> "Medication.ToTime,Medication.DiscontinuedDateTime"
* dispenseRequest.numberOfRepeatsAllowed -> "Medication.NumberOfRefills"
* dispenseRequest.quantity.value -> "Medication.OrderQuantity"
* dispenseRequest.expectedSupplyDuration -> "Medication.DaysSupply"
* dosageInstruction.doseAndRate.extension[http://hl7.org/fhir/StructureDefinition/originalText].valueString -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* identifier.value -> "Medication.PrescriptionNumber,Medication.FillDate"
* dosageInstruction.route.coding.code -> "Medication.DosageSteps,Medication.Route,Medication.DoseQuantity,Medication.DoseUoM,Medication.Duration,Medication.Frequency,Medication.TextInstruction,Medication.Conjunction,Medication.Noun,Medication.UnitsPerDose,Medication.Verb"
* reasonCode.text -> "Medication.Indication"