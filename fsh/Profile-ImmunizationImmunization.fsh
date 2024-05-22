Profile: ImmunizationImmunization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: ImmunizationImmunization
Title: "Immunization Immunization"
Description: "This StructureDefinition contains the maps for VistA file V IMMUNIZATION (9000010.11) to us-core-immunization"
* ^status = #draft
* statusReason and vaccineCode and primarySource and status and vaccineCode.text and patient and occurrenceDateTime and lotNumber and manufacturer and vaccineCode.coding.code and vaccineCode.coding.system and doseQuantity.value and performer.actor and performer.function and note.text and protocolApplied.doseNumberString and doseQuantity and doseQuantity.unit and doseQuantity.code and recorded and reaction.detail and encounter and location MS
* statusReason from http://va.gov/fhir/ValueSet/VSVFimmunizationStatusReason
* vaccineCode from http://va.gov/fhir/ValueSet/VSVFinferredCVX
* primarySource.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* primarySource.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/CMVFimmunizationPrimarySource"
* vaccineCode.coding.system = "http://hl7.org/fhir/sid/ndc"
* performer.actor only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner)
* performer.function = http://terminology.hl7.org/CodeSystem/v2-0443#AP
* reaction.detail only Reference(ImmunizationObservation)

Mapping: vista-to-ImmunizationImmunization
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationImmunization
* statusReason -> "527: terminologyMaps using VF_immunizationStatusReason on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) case V IMMUNIZATION - IMMUNIZATION null"
* vaccineCode -> "528: terminologyMaps using VF_inferredCVX on V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) case V IMMUNIZATION - IMMUNIZATION null" "This map is used to identify CVX codes for immunizations that were not given, and which therefore are not coded. The name can be used to determine what the CVX Group."
* primarySource -> "607: transform using VF_immunizationPrimarySource on V IMMUNIZATION - EVENT INFORMATION SOURCE (9000010.11-1301)"
* status -> "297: fixed value = #completed when V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - CVX CODE (9000010.11-.01 > 9999999.14-.03) case CVX populated" "subfile: .03 is CVX"
* status -> "299: fixed value = #not-done when V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - NAME (9000010.11-.01 > 9999999.14-.01) case text like 'contraindicated', 'refused', 'decline', 'not avail'" "subfile: .01 is text\nTransform because multiple sources\nuse map?"
* vaccineCode -> "332: source value from V IMMUNIZATION - IMMUNIZATION > IMMUNIZATION - CVX CODE (9000010.11-.01 > 9999999.14-.03) case not null" "subfile: .03 is CVX"
* vaccineCode.text -> "332-1: undefined case not null" "from mapParameter 1"
* patient -> "333: source value from V IMMUNIZATION - PATIENT NAME (9000010.11-.02)"
* occurrenceDateTime -> "334: source value from V IMMUNIZATION - EVENT DATE AND TIME (9000010.11-1201)"
* lotNumber -> "338: source value from IMMUNIZATION LOT - LOT NUMBER (9999999.41-.01)" "pointer to subfile 9999999.04-.02 MVX code, 9999999.04-.01 lot"
* manufacturer -> "339: source value from IMMUNIZATION LOT - MANUFACTURER (9999999.41-.02)"
* vaccineCode.coding.code -> "1609: source value from IMMUNIZATION LOT - NDC CODE (VA) (9999999.41-.18)"
* vaccineCode.coding.system -> "1609-1: fixed value = http://hl7.org/fhir/sid/ndc" "from mapParameter 1"
* doseQuantity.value -> "340: source value from V IMMUNIZATION - DOSE (9000010.11-1312)"
* performer.actor -> "342: reference from V IMMUNIZATION - ENCOUNTER PROVIDER (9000010.11-1204)" "instantiate with function or reference.display?"
* performer.function -> "342-1: fixed value = http://terminology.hl7.org/CodeSystem/v2-0443#AP" "from mapParameter 1"
* note.text -> "343: source value from V IMMUNIZATION - COMMENTS (9000010.11-81101)"
* protocolApplied.doseNumberString -> "344: source value from V IMMUNIZATION - SERIES (9000010.11-.04)" "Can be numeral or letter"
* doseQuantity -> "464: source value from V IMMUNIZATION - DOSE UNITS > UCUM CODES - (9000010.11-1313 > 757.5-)"
* doseQuantity.unit -> "464-1: source value from V IMMUNIZATION - DOSE UNITS > UCUM CODES - DESCRIPTION OF THE UNIT (9000010.11-1313 > 757.5-.01)" "from mapParameter 1"
* doseQuantity.code -> "464-2: source value from V IMMUNIZATION - DOSE UNITS > UCUM CODES - UCUM CODE (9000010.11-1313 > 757.5-1)" "from mapParameter 2"
* recorded -> "1593: source value from V IMMUNIZATION - DATE/TIME RECORDED (9000010.11-1205)" "identified byMHV"
* reaction.detail -> "1673: reference"
* encounter -> "1767: reference from V IMMUNIZATION - VISIT (9000010.11-.03)"
* location -> "1801: reference from V IMMUNIZATION - VISIT > VISIT - HOSPITAL LOCATION (9000010.11-.03 > 9000010-.22)" "Added based on LH gap analysis; existed in PHAPI, not CoP maps"

Mapping: cdw-to-ImmunizationImmunization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImmunizationImmunization
* statusReason -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* vaccineCode -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* primarySource -> "Immun.Immunization.ImmunizationInformationSourceIEN"
* status -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.CVXCode"
* status -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.ImmunizationName,Dim.PharmacyOrderableItem.ImmunizationName"
* vaccineCode -> "Immun.Immunization.ImmunizationNameIEN\nDim.ImmunizationName.CVXCode"
* patient -> "Immun.Immunization.PatientIEN"
* occurrenceDateTime -> "Immun.Immunization.EventDateTime"
* lotNumber -> "Dim.ImmunizationLot.ImmunizationLot"
* manufacturer -> "Dim.ImmunizationLot.ImmunizationManufacturerIEN,Dim.ImmunizationLot.ImmunizationManufacturerSID"
* vaccineCode.coding.code -> "Dim.ImmunizationLot.NDCCodeVAText"
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