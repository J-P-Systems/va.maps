Profile: PractitionerRole
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitionerrole
Id: PractitionerRole
Title: "Practitioner Role"
Description: "This StructureDefinition contains the maps for VistA file NEW PERSON (#200) to us-core-practitionerrole"
* ^status = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/practitioner-job-title named practitioner-job-title 0..1
* telecom.value and active and period.start and practitioner and period.end and extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text and specialty.coding.code and location and code.coding.code and organization MS

Mapping: vista-to-PractitionerRole
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: PractitionerRole
* telecom.value -> "384: source value from NEW PERSON - OFFICE PHONE (#200-.132)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "385: source value from NEW PERSON - PHONE #3 (#200-.133)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "386: source value from NEW PERSON - PHONE #4 (#200-.134)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "387: source value from NEW PERSON - COMMERCIAL PHONE (#200-.135)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "388: source value from NEW PERSON - FAX NUMBER (#200-.136)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "389: source value from NEW PERSON - VOICE PAGER (#200-.137)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "390: source value from NEW PERSON - DIGITAL PAGER (#200-.138)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* telecom.value -> "391: source value from NEW PERSON - EMAIL ADDRESS (#200-.151)" "Change from Practitioner to PractitionerRole (use case and FHIR Path) to support US Core"
* active -> "411: transform using true on NEW PERSON - PERSON CLASS > PERSON CLASS - EXPIRATION DATE (#200-8932.1 > 200.05-3) case date > now or = null" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* active -> "412: transform using false on NEW PERSON - PERSON CLASS > PERSON CLASS - EXPIRATION DATE (#200-8932.1 > 200.05-3) case date < now" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* period.start -> "413: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - EFFECTIVE DATE (#200-8932.1 > 200.05-2)" "Changed mapping to indicate the effective date field related to the class which aligns to the role"
* practitioner -> "414: reference from NEW PERSON - NAME (#200-.01)" "Use US Core Practitioner Profile.\nChanged map to better align with US Core"
* period.end -> "416: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - EXPIRATION DATE (#200-8932.1 > 200.05-3)" "Changed mapping to indicate the expiration date field related to the class which aligns to the role\n\n04/12/23 Confirmed during FHIR Office Hours: Role expiration date should be used; termination date is a system date"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "417: source value from SIGNATURE BLOCK TITLE (#200-20.3)"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "418: source value from NEW PERSON - TITLE > TITLE - NAME (#200-8 > 3.1-.01)"
* specialty.coding.code -> "419: source value from PERSON CLASS - X12 CODE (#8932.1-6)" "Added paths"
* location -> "422: reference from PROVIDER - PROVIDER (#44.1-.01)" "This is a reverse pointer. Location 44 contains 44.1, pointing at providers"
* code.coding.code -> "1408: source value from NEW PERSON - PERSON CLASS > PERSON CLASS - Person Class > PERSON CLASS - X12 CODE (#200-8932.1 > 200.05-.01 > 8932.1-6)"
* organization -> "1411: reference from NEW PERSON - DIVISION (#200-16)" "Marked inactive. Division is not in CDW with a linkage to New Person. Institution is what Division points to, but there is no linkage from New Person to Institution either. The link from LocationProvider seems to be a \"Provider Directory\" rather than where the Provider saw the patient.\nVistA New Person does not have an authoritative organization. For the PHAPI, we could use the Encounter.serviceProvider, but in those cases we already have it on the Encounter, so it adds no value. For the Directory use case, locations or services will have lists of available providers via PractitionerRole. Unclear whether Division will play a role."

Mapping: cdw-to-PractitionerRole
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: PractitionerRole
* telecom.value -> "SStaff.PrescribingProvider.OfficePhone,SStaff.SStaff.OfficePhone"
* telecom.value -> "SStaff.SStaff.Phone3"
* telecom.value -> "SStaff.SStaff.Phone4"
* telecom.value -> "SStaff.PrescribingProvider.CommercialPhone,SStaff.SStaff.CommercialPhone"
* telecom.value -> "SStaff.PrescribingProvider.FaxNumber,SStaff.SStaff.FaxNumber"
* telecom.value -> "SStaff.PrescribingProvider.VoicePager,SStaff.SStaff.VoicePager"
* telecom.value -> "SStaff.PrescribingProvider.DigitalPager,SStaff.SStaff.DigitalPager"
* telecom.value -> "SStaff.PrescribingProvider.EmailAddress,SStaff.SStaff.EmailAddress"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDate"
* active -> "StaffSub.ProviderTypeAssignment.ExpirationDate"
* period.start -> "StaffSub.ProviderTypeAssignment.EffectiveDate"
* practitioner -> "SStaff.PrescribingProvider.StaffName,SStaff.SStaff.StaffName"
* period.end -> "StaffSub.ProviderTypeAssignment.ExpirationDate"
* extension[http://hl7.org/fhir/StructureDefinition/practitioner-job-title].valueCodeableConcept.text -> "SStaff.SStaff.PositionTitle,Staff.Staff.PositionTitle"
* specialty.coding.code -> "Dim.ProviderType.X12Code"