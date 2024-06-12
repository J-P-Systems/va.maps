Profile: PractitionerRole
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Id: PractitionerRole
Title: "Practitioner Role"
Description: "This StructureDefinition contains the maps for VistA file NEW PERSON (200) to us-core-practitionerrole"
* ^status = #draft
* telecom ^slicing.discriminator.type = #pattern
* telecom ^slicing.discriminator.path = "$this"
* telecom ^slicing.rules = #open
* telecom contains va-work 0..1 and va-phone3 0..1 and va-phone4 0..1 and va-commercial 0..1 and va-fax 0..1 and va-voice-pager 0..1 and va-digital-pager 0..1 and va-email 0..1
* extension contains http://hl7.org/fhir/StructureDefinition/practitioner-job-title named practitioner-job-title 0..1
* telecom[va-work].value and telecom[va-work].system and telecom[va-work].use and telecom[va-phone3].value and telecom[va-phone3].system and telecom[va-phone4].value and telecom[va-phone4].system and telecom[va-commercial].value and telecom[va-commercial].system and telecom[va-commercial].use and telecom[va-fax].value and telecom[va-fax].system and telecom[va-fax].use and telecom[va-voice-pager].value and telecom[va-voice-pager].system and telecom[va-digital-pager].value and telecom[va-digital-pager].system and telecom[va-email].value and telecom[va-email].system and active and period.start and practitioner and period.end and extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text and specialty.coding.code and specialty.coding.system and specialty.coding.display and location and code.coding.code and code.coding.system and code.coding.display and organization MS
* telecom[va-work].system = #phone
* telecom[va-work].use = #work
* telecom[va-phone3].system = #phone
* telecom[va-phone4].system = #phone
* telecom[va-commercial].system = #phone
* telecom[va-commercial].use = #work
* telecom[va-fax].system = #fax
* telecom[va-fax].use = #work
* telecom[va-voice-pager].system = #pager
* telecom[va-digital-pager].system = #pager
* telecom[va-email].system = #email
* specialty.coding.system = "http://nucc.org/provider-taxonomy"
* code.coding.system = "http://nucc.org/provider-taxonomy"

Mapping: vista-to-PractitionerRole
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: PractitionerRole
* telecom[va-work].value -> "384: source value from NEW PERSON - OFFICE PHONE (200-.132)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-work].system -> "384-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-work].use -> "384-2: fixed value = #work" "from mapParameter 2"
* telecom[va-phone3].value -> "385: source value from NEW PERSON - PHONE #3 (200-.133)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-phone3].system -> "385-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-phone4].value -> "386: source value from NEW PERSON - PHONE #4 (200-.134)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-phone4].system -> "386-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-commercial].value -> "387: source value from NEW PERSON - COMMERCIAL PHONE (200-.135)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-commercial].system -> "387-1: fixed value = #phone" "from mapParameter 1"
* telecom[va-commercial].use -> "387-2: fixed value = #work" "from mapParameter 2"
* telecom[va-fax].value -> "388: source value from NEW PERSON - FAX NUMBER (200-.136)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-fax].system -> "388-1: fixed value = #fax" "from mapParameter 1"
* telecom[va-fax].use -> "388-2: fixed value = #work" "from mapParameter 2"
* telecom[va-voice-pager].value -> "389: source value from NEW PERSON - VOICE PAGER (200-.137)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-voice-pager].system -> "389-1: fixed value = #pager" "from mapParameter 1"
* telecom[va-digital-pager].value -> "390: source value from NEW PERSON - DIGITAL PAGER (200-.138)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-digital-pager].system -> "390-1: fixed value = #pager" "from mapParameter 1"
* telecom[va-email].value -> "391: source value from NEW PERSON - EMAIL ADDRESS (200-.151)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom[va-email].system -> "391-1: fixed value = #email" "from mapParameter 1"
* active -> "411: fixed value = true when NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3) case date > now or = null" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* active -> "412: fixed value = false when NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3) case date < now" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* period.start -> "413: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Effective Date (200-8932.1 > 200.05-2)" "Changed mapping to indicate the effective date field related to the class which aligns to the role"
* practitioner -> "414: reference from NEW PERSON - NAME (200-.01)" "Use US Core Practitioner Profile.\nChanged map to better align with US Core"
* period.end -> "416: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Expiration Date (200-8932.1 > 200.05-3)" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "417: source value from NEW PERSON - SIGNATURE BLOCK TITLE (200-20.3)"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "418: source value from NEW PERSON - TITLE > TITLE - NAME (200-8 > 3.1-.01)"
* specialty.coding.code -> "419: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - X12 CODE (200-8932.1 > 200.05-.01 > 8932.1-6)" "Added paths"
* specialty.coding.system -> "419-1: fixed value = http://nucc.org/provider-taxonomy" "from mapParameter 1"
* specialty.coding.display -> "419-2: undefined" "from mapParameter 2"
* location -> "422: reference from PROVIDER - PROVIDER (44.1-.01)" "This is a reverse pointer. Location 44 contains 44.1, pointing at providers"
* code.coding.code -> "1408: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - X12 CODE (200-8932.1 > 200.05-.01 > 8932.1-6)"
* code.coding.system -> "1408-1: fixed value = http://nucc.org/provider-taxonomy" "from mapParameter 1"
* code.coding.display -> "1408-2: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - CLASSIFICATION (200-8932.1 > 200.05-.01 > 8932.1-1)" "from mapParameter 2"
* organization -> "1411: reference from NEW PERSON - DIVISION (200-16)" "Marked inactive. Division is not in CDW with a linkage to New Person. Institution is what Division points to, but there is no linkage from New Person to Institution either. The link from LocationProvider seems to be a \"Provider Directory\" rather than where the Provider saw the patient.\nVistA New Person does not have an authoritative organization. For the PHAPI, we could use the Encounter.serviceProvider, but in those cases we already have it on the Encounter, so it adds no value. For the Directory use case, locations or services will have lists of available providers via PractitionerRole. Unclear whether Division will play a role."

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
* telecom[va-digital-pager].value -> "SStaff.PrescribingProvider.DigitalPager,SStaff.SStaff.DigitalPager"
* telecom[va-email].value -> "SStaff.PrescribingProvider.EmailAddress,SStaff.SStaff.EmailAddress"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* period.start -> "StaffSub.ProviderTypeAssignment.EffectiveDateTime"
* practitioner -> "SStaff.PrescribingProvider.StaffName,SStaff.SStaff.StaffName"
* period.end -> "StaffSub.ProviderTypeAssignment.ExpirationDateTime"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "SStaff.SStaff.SignatureBlockTitle"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "SStaff.SStaff.PositionTitle,Staff.Staff.PositionTitle"
* location -> "Dim.LocationProvider.StaffIEN"