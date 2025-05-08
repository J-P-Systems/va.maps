Profile: ImmunizationImmunization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: ImmunizationImmunization
Title: "Immunization Immunization"
Description: "This StructureDefinition contains the maps for VistA file V IMMUNIZATION (9000010.11) to us-core-immunization."
* ^status = #active
* vaccineCode.coding ^slicing.discriminator.type = #value
* vaccineCode.coding ^slicing.discriminator.path = "$this"
* vaccineCode.coding ^slicing.rules = #open
* vaccineCode.coding contains va-cvx 0..1 and va-ndc 0..1
* statusReason and vaccineCode and primarySource and status and vaccineCode.coding[va-cvx].code and vaccineCode.text and vaccineCode.coding[va-cvx].system and patient and occurrenceDateTime and lotNumber and manufacturer and vaccineCode.coding[va-ndc].code and vaccineCode.coding[va-ndc].system and doseQuantity.value and performer.actor and performer.function and note.text and protocolApplied.doseNumberString and doseQuantity and doseQuantity.unit and doseQuantity.code and recorded and reaction.detail and encounter and location MS
* patient only Reference(Patient)
* performer.actor only Reference(Practitioner)
* reaction.detail only Reference(ImmunizationObservation)
* encounter only Reference(EncounterOutpatient)
* location only Reference(Location)
* statusReason from http://va.gov/fhir/ValueSet/immunizationStatusReason
* statusReason ^binding.description = "see mapping [VF_immunizationStatusReason](ConceptMap-VF-immunizationStatusReason.html)"
* statusReason obeys ii-24-527
* vaccineCode from http://va.gov/fhir/ValueSet/inferredCVX
* vaccineCode ^binding.description = "see mapping [VF_inferredCVX](ConceptMap-VF-inferredCVX.html)"
* vaccineCode obeys ii-24-528
* primarySource ^comment = "see mapping [VF_immunizationPrimarySource](ConceptMap-VF-immunizationPrimarySource.html)"
* status obeys ii-24-297
* status obeys ii-24-298
* status obeys ii-24-299
* vaccineCode.coding[va-cvx].code obeys ii-24-332
* vaccineCode.text obeys ii-24-332-1
* vaccineCode.coding[va-cvx].system obeys ii-24-332-2
* vaccineCode.coding[va-ndc].system = "http://hl7.org/fhir/sid/ndc"
* performer.function = http://terminology.hl7.org/CodeSystem/v2-0443#AP

Invariant: ii-24-527
Description: "If V IMMUNIZATION - IMMUNIZATION null then terminologyMaps (9000010.11-.01 > 9999999.14-.01) using VF_immunizationStatusReason"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-528
Description: "If V IMMUNIZATION - IMMUNIZATION null then terminologyMaps (9000010.11-.01 > 9999999.14-.01) using VF_inferredCVX"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-297
Description: "If (9000010.11-.01 > 9999999.14-.03) is CVX populated then fixed value #completed"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-298
Description: "If (9000010.11-.01 > 9999999.14-.01) is missing or unknown then exclude record"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-299
Description: "If (9000010.11-.01 > 9999999.14-.01) is text like 'contraindicated', 'refused', 'decline', 'not avail' then fixed value #not-done"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-332
Description: "If not null then source value from (9000010.11-.01 > 9999999.14-.03)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-332-1
Description: "If not null then source value from (9000010.11-.01 > 9999999.14-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: ii-24-332-2
Description: "If not null then fixed value http://hl7.org/fhir/sid/cvx"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-ImmunizationImmunization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationImmunization
* statusReason -> "527: terminologyMaps using VF_immunizationStatusReason on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) if V IMMUNIZATION - IMMUNIZATION null"
* vaccineCode -> "528: terminologyMaps using VF_inferredCVX on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) if V IMMUNIZATION - IMMUNIZATION null" "This map is used to identify CVX codes for immunizations that were not given, and which therefore are not coded. The name can be used to determine what the CVX Group."
* primarySource -> "607: transform using VF_immunizationPrimarySource on V IMMUNIZATION - EVENT INFORMATION SOURCE (9000010.11-1301)"
* status -> "297: fixed value = #completed when V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - CVX CODE (9000010.11-.01 > 9999999.14-.03) if CVX populated" "subfile: .03 is CVX"
* status -> "298: exclude record if missing or unknown" "subfile: .01 is text\nfor review?"
* status -> "299: fixed value = #not-done when V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) if text like 'contraindicated', 'refused', 'decline', 'not avail'" "subfile: .01 is text\nTransform because multiple sources\nuse map?"
* vaccineCode.coding[va-cvx].code -> "332: source value based on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - CVX CODE (9000010.11-.01 > 9999999.14-.03) if not null" "subfile: .03 is CVX ← ?? .03 is a field"
* vaccineCode.text -> "332-1: source value based on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) if not null" "generated from mapParameter line 1"
* vaccineCode.coding[va-cvx].system -> "332-2: fixed value = http://hl7.org/fhir/sid/cvx if not null" "generated from mapParameter line 2"
* patient -> "333: reference based on V IMMUNIZATION - PATIENT NAME > PATIENT/IHS - NAME (9000010.11-.02 > 9000001-.01)"
* occurrenceDateTime -> "334: source value based on V IMMUNIZATION - EVENT DATE AND TIME (9000010.11-1201)"
* lotNumber -> "338: source value based on V IMMUNIZATION - LOT > IMMUNIZATION LOT - LOT NUMBER (9000010.11-.05 > 9999999.41-.01)" "pointer to subfile 9999999.04-.02 MVX code, 9999999.04-.01 lot"
* manufacturer -> "339: source value based on V IMMUNIZATION - LOT > IMMUNIZATION LOT - MANUFACTURER (9000010.11-.05 > 9999999.41-.02)"
* vaccineCode.coding[va-ndc].code -> "1609: source value based on V IMMUNIZATION - LOT > IMMUNIZATION LOT - NDC CODE (VA) (9000010.11-.05 > 9999999.41-.18)" "constrains in us-core profile requires ndc as translation"
* vaccineCode.coding[va-ndc].system -> "1609-1: fixed value = http://hl7.org/fhir/sid/ndc" "generated from mapParameter line 1"
* doseQuantity.value -> "340: source value based on V IMMUNIZATION - DOSE (9000010.11-1312)"
* performer.actor -> "342: reference based on V IMMUNIZATION - ENCOUNTER PROVIDER (9000010.11-1204)" "instantiate with function or reference.display?"
* performer.function -> "342-1: fixed value = http://terminology.hl7.org/CodeSystem/v2-0443#AP" "generated from mapParameter line 1"
* note.text -> "343: source value based on V IMMUNIZATION - COMMENTS (9000010.11-81101)"
* protocolApplied.doseNumberString -> "344: source value based on V IMMUNIZATION - SERIES (9000010.11-.04)" "Can be numeral or letter"
* doseQuantity -> "464: source value based on V IMMUNIZATION - DOSE UNITS > UCUM CODES - (9000010.11-1313 > 757.5-)"
* doseQuantity.unit -> "464-1: source value based on V IMMUNIZATION - DOSE UNITS > UCUM CODES - DESCRIPTION OF THE UNIT (9000010.11-1313 > 757.5-.01)" "generated from mapParameter line 1"
* doseQuantity.code -> "464-2: source value based on V IMMUNIZATION - DOSE UNITS > UCUM CODES - UCUM CODE (9000010.11-1313 > 757.5-1)" "generated from mapParameter line 2"
* recorded -> "1593: source value based on V IMMUNIZATION - DATE/TIME RECORDED (9000010.11-1205)" "identified byMHV"
* reaction.detail -> "1673: reference"
* encounter -> "1767: reference based on V IMMUNIZATION - VISIT (9000010.11-.03)"
* location -> "1801: reference based on V IMMUNIZATION - VISIT > VISIT - HOSPITAL LOCATION (9000010.11-.03 > 9000010-.22)" "Added based on LH gap analysis; existed in PHAPI, not CoP maps"

Mapping: cdw-to-ImmunizationImmunization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImmunizationImmunization
* statusReason -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* vaccineCode -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* primarySource -> "Immun.Immunization.ImmunizationInformationSourceIEN"
* status -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.CVXCode"
* status -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* status -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* vaccineCode.coding[va-cvx].code -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.CVXCode"
* vaccineCode.text -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* patient -> "Immun.Immunization.PatientIEN"
* occurrenceDateTime -> "Immun.Immunization.EventDateTime"
* lotNumber -> "Dim.ImmunizationLot.ImmunizationLot"
* manufacturer -> "Dim.ImmunizationLot.ImmunizationManufacturerIEN,Dim.ImmunizationLot.ImmunizationManufacturerSID"
* vaccineCode.coding[va-ndc].code -> "Dim.ImmunizationLot.NDCCodeVAText"
* doseQuantity.value -> "Immun.Immunization.Dosage"
* performer.actor -> "Immun.Immunization.ImmunizingStaffIEN"
* note.text -> "Immun.Immunization.ImmunizationComments"
* protocolApplied.doseNumberString -> "Immun.Immunization.Series"
* doseQuantity -> "Immun.Immunization.DoseUnit"
* doseQuantity.unit -> "Immun.Immunization.DoseUnit\nDim.UCUMCode.DescriptionOfTheUnit"
* doseQuantity.code -> "Immun.Immunization.DoseUnit\nDim.UCUMCode.UCUMCode"
* recorded -> "Immun.Immunization.RecordedDateTime"
* encounter -> "Immun.Immunization.OutsideLocation,Immun.Immunization.VisitDateTime,Immun.Immunization.VisitIEN"
* location -> "Immun.Immunization.OutsideLocation,Immun.Immunization.VisitDateTime,Immun.Immunization.VisitIEN\nOutpat.Visit.LocationIEN,Outpat.Workload.LocationIEN"

Mapping: sda-to-ImmunizationImmunization
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ImmunizationImmunization
* statusReason -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Description,Vaccination.Route.Description,Vaccination.OrderItem[Order].Description,Vaccination.ObservationCodedValue[ObservationValueCode].Description"
* vaccineCode -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Description,Vaccination.Route.Description,Vaccination.OrderItem[Order].Description,Vaccination.ObservationCodedValue[ObservationValueCode].Description"
* primarySource -> "Vaccination.Extension[VaccinationExtension].Source"
* status -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Code,Vaccination.Route.Code,Vaccination.OrderItem[Order].Code"
* status -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Description,Vaccination.Route.Description,Vaccination.OrderItem[Order].Description,Vaccination.ObservationCodedValue[ObservationValueCode].Description"
* status -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Description,Vaccination.Route.Description,Vaccination.OrderItem[Order].Description,Vaccination.ObservationCodedValue[ObservationValueCode].Description"
* vaccineCode.coding[va-cvx].code -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Code,Vaccination.Route.Code,Vaccination.OrderItem[Order].Code"
* vaccineCode.text -> "Vaccination.MaxDoseQuantity,Vaccination.OrderItem,Vaccination.Extension[VaccinationExtension].CDCName,Vaccination.Extension[VaccinationExtension].Source,Vaccination.AdministrationSite.Description,Vaccination.Manufacturer[VA.Manufacturer].Description\nVaccination.OrderItem[Order].Description,Vaccination.Route.Description,Vaccination.OrderItem[Order].Description,Vaccination.ObservationCodedValue[ObservationValueCode].Description"
* patient -> "Vaccination.AdministrationSite.Code,Vaccination.Manufacturer[VA.Manufacturer].Code"
* occurrenceDateTime -> "Vaccination.FromTime,Vaccination.ToTime"
* doseQuantity.value -> "Vaccination.Administration.AdministeredAmount"
* performer.actor -> "Vaccination.Administration.AdministeringProvider"
* note.text -> "Vaccination.Comments"
* protocolApplied.doseNumberString -> "Vaccination.Administration.AdministrationStatus"
* doseQuantity -> "Vaccination.Administration.AdministeredUnits"
* doseQuantity.unit -> "Vaccination.Administration.AdministeredUnits"
* doseQuantity.code -> "Vaccination.Administration.AdministeredUnits"
* encounter -> "Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.Administration.AdministeredAtLocation"
* location -> "Vaccination.EncounterNumber,Vaccination.EnteredAt,Vaccination.Administration.AdministeredAtLocation\nEncounter.ExternalId,Encounter.HealthCareFacility"

Mapping: vpr-to-ImmunizationImmunization
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ImmunizationImmunization
* statusReason -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* vaccineCode -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* primarySource -> "immunization.source (>920.1-.01),immunization.source (>920.1-.02)"
* status -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* status -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* status -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* vaccineCode.coding[va-cvx].code -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* vaccineCode.text -> "immunization.cvx (>9999999.14-.03),immunization.name (>9999999.14-.01)"
* doseQuantity.value -> "immunization.dose"
* performer.actor -> "immunization.provider (>200-.01)"
* note.text -> "immunization.comment"
* protocolApplied.doseNumberString -> "immunization.series"
* encounter -> "immunization.administered,immunization.encounter,immunization.facility (>9000010-.06),immunization.location (>9000010-.22)"
* location -> "immunization.administered,immunization.encounter,immunization.facility (>9000010-.06),immunization.location (>9000010-.22)\nvisit.creditStopCode (>44-2503),visit.location (>44-.01),visit.visitString"