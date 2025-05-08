Profile: PractitionerRole
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Id: PractitionerRole
Title: "Practitioner Role"
Description: "This StructureDefinition contains the maps for VistA file NEW PERSON (200) to us-core-practitionerrole."
* ^status = #active
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "$this"
* telecom ^slicing.rules = #open
* telecom contains va-work 0..1 and va-phone3 0..1 and va-phone4 0..1 and va-commercial 0..1 and va-fax 0..1 and va-voice-pager 0..1 and va-data-pager 0..1 and va-mail 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/practitioner-job-title named practitioner-job-title 0..1
* telecom[va-work].value and telecom[va-work].system and telecom[va-work].use and telecom[va-phone3].value and telecom[va-phone3].system and telecom[va-phone4].value and telecom[va-phone4].system and telecom[va-commercial].value and telecom[va-commercial].system and telecom[va-commercial].use and telecom[va-fax].value and telecom[va-fax].system and telecom[va-fax].use and telecom[va-voice-pager].value and telecom[va-voice-pager].system and telecom[va-data-pager].value and telecom[va-data-pager].system and telecom[va-mail].value and telecom[va-mail].system and active and period.start and practitioner and period.end and extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text and specialty.coding.code and specialty.coding.system and specialty.coding.display and location and code.coding.code and code.coding.system and code.coding.display and organization MS
* practitioner only Reference(Practitioner)
* location only Reference(Location)
* organization only Reference(Organization)
* telecom[va-work].system = #phone
* telecom[va-work].use = #work
* telecom[va-phone3].system = #phone
* telecom[va-phone4].system = #phone
* telecom[va-commercial].system = #phone
* telecom[va-commercial].use = #work
* telecom[va-fax].system = #fax
* telecom[va-fax].use = #work
* telecom[va-voice-pager].system = #pager
* telecom[va-data-pager].system = #pager
* telecom[va-mail].system = #email
* active obeys pr-16-411
* active obeys pr-16-412
* specialty.coding.system = "http://nucc.org/provider-taxonomy"
* specialty.coding.display = "concat({PROVIDER TYPE (.01)}, {CLASSIFICATION (1)}, {AREA OF SPECIALIZATION (2)})"
* location obeys pr-16-422
* code.coding.system = "http://nucc.org/provider-taxonomy"

Invariant: pr-16-411
Description: "If (200-8932.1 > 200.05-3) is date > now or = null then fixed value true"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: pr-16-412
Description: "If (200-8932.1 > 200.05-3) is date < now then fixed value false"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: pr-16-422
Description: "If 44-2600>44.1-.01>200 then reference /Location based on (44-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-PractitionerRole
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: PractitionerRole
* telecom[va-work].value -> "384: source value based on NEW PERSON - OFFICE PHONE (200-.132)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-work].system -> "384-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-work].use -> "384-2: fixed value = #work" "generated from mapParameter line 2"
* telecom[va-phone3].value -> "385: source value based on NEW PERSON - PHONE #3 (200-.133)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-phone3].system -> "385-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-phone4].value -> "386: source value based on NEW PERSON - PHONE #4 (200-.134)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-phone4].system -> "386-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-commercial].value -> "387: source value based on NEW PERSON - COMMERCIAL PHONE (200-.135)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-commercial].system -> "387-1: fixed value = #phone" "generated from mapParameter line 1"
* telecom[va-commercial].use -> "387-2: fixed value = #work" "generated from mapParameter line 2"
* telecom[va-fax].value -> "388: source value based on NEW PERSON - FAX NUMBER (200-.136)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-fax].system -> "388-1: fixed value = #fax" "generated from mapParameter line 1"
* telecom[va-fax].use -> "388-2: fixed value = #work" "generated from mapParameter line 2"
* telecom[va-voice-pager].value -> "389: source value based on NEW PERSON - VOICE PAGER (200-.137)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-voice-pager].system -> "389-1: fixed value = #pager" "generated from mapParameter line 1"
* telecom[va-data-pager].value -> "390: source value based on NEW PERSON - DIGITAL PAGER (200-.138)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-data-pager].system -> "390-1: fixed value = #pager" "generated from mapParameter line 1"
* telecom[va-mail].value -> "391: source value based on NEW PERSON - EMAIL ADDRESS (200-.151)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-mail].system -> "391-1: fixed value = #email" "generated from mapParameter line 1"
* active -> "411: fixed value = true when NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3) if date > now or = null" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* active -> "412: fixed value = false when NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3) if date < now" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* period.start -> "413: source value based on NEW PERSON - PERSON CLASS > PERSON CLASS - Effective Date (200-8932.1 > 200.05-2)" "Changed mapping to indicate the effective date field related to the class which aligns to the role"
* practitioner -> "414: reference based on NEW PERSON - NAME (200-.01)" "Use US Core Practitioner Profile.\nChanged map to better align with US Core"
* period.end -> "416: source value based on NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3)" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "417: source value based on NEW PERSON - SIGNATURE BLOCK TITLE (200-20.3)"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "418: source value based on NEW PERSON - TITLE > TITLE - NAME (200-8 > 3.1-.01)"
* specialty.coding.code -> "419: source value based on NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - X12 CODE (200-8932.1 > 200.05-.01 > 8932.1-6)" "Added paths"
* specialty.coding.system -> "419-1: fixed value = http://nucc.org/provider-taxonomy" "generated from mapParameter line 1"
* specialty.coding.display -> "419-2: fixed value = concat({PROVIDER TYPE (.01)}, {CLASSIFICATION (1)}, {AREA OF SPECIALIZATION (2)})" "generated from mapParameter line 2"
* location -> "422: reference based on HOSPITAL LOCATION - (44-) if 44-2600>44.1-.01>200" "This is a reverse pointer. Location 44 contains 44.1, pointing at providers"
* code.coding.code -> "1408: source value based on NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - X12 CODE (200-8932.1 > 200.05-.01 > 8932.1-6)" "NUCC and X12 codes are the same"
* code.coding.system -> "1408-1: fixed value = http://nucc.org/provider-taxonomy" "generated from mapParameter line 1"
* code.coding.display -> "1408-2: source value based on NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - CLASSIFICATION (200-8932.1 > 200.05-.01 > 8932.1-1)" "generated from mapParameter line 2"
* endpoint -> "2013: target not supported" "See key 1410"
* organization -> "1411: reference based on NEW PERSON - DIVISION (200-16)" "Issue: VistA may have more than one record. Instantiate multiple Role resources."

Mapping: cdw-to-PractitionerRole
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: PractitionerRole
* telecom[va-work].value -> "SStaff.PrescribingProvider.OfficePhone,SStaff.SStaff.OfficePhone"
* telecom[va-phone3].value -> "SStaff.SStaff.Phone3"
* telecom[va-phone4].value -> "SStaff.SStaff.Phone4"
* telecom[va-commercial].value -> "SStaff.PrescribingProvider.CommercialPhone,SStaff.SStaff.CommercialPhone"
* telecom[va-fax].value -> "SStaff.PrescribingProvider.FaxNumber,SStaff.SStaff.FaxNumber"
* telecom[va-voice-pager].value -> "SStaff.PrescribingProvider.VoicePager,SStaff.SStaff.VoicePager"
* telecom[va-data-pager].value -> "SStaff.PrescribingProvider.DigitalPager,SStaff.SStaff.DigitalPager"
* telecom[va-mail].value -> "SStaff.PrescribingProvider.EmailAddress,SStaff.SStaff.EmailAddress"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* period.start -> "StaffSub.ProviderTypeAssignment.EffectiveDateTime"
* practitioner -> "SStaff.PrescribingProvider.StaffName,SStaff.SStaff.StaffName"
* period.end -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "SStaff.SStaff.SignatureBlockTitle"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "SStaff.SStaff.PositionTitle,Staff.Staff.PositionTitle"