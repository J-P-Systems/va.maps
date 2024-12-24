Profile: LungCancerScreening
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Id: LungCancerScreening
Title: "Lung Cancer Screening"
Description: "This StructureDefinition contains the maps for VistA file TIU DOCUMENT (8925) to us-core-diagnosticreport-note."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note|6.1.0"
* presentedForm and subject and performer and encounter MS
* subject only Reference(Patient)
* performer only Reference(Practitioner)
* encounter only Reference(EncounterOutpatient)

Mapping: source-to-LungCancerScreening
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LungCancerScreening
* presentedForm -> "932: source value from TIU DOCUMENT - REPORT TEXT (8925-2)"
* subject -> "933: reference from TIU DOCUMENT - PATIENT > PATIENT/IHS - NAME (8925-.02 > 9000001-.01)"
* performer -> "934: reference from TIU DOCUMENT - AUTHOR/DICTATOR (8925-1202)"
* encounter -> "935: reference from TIU DOCUMENT - VISIT (8925-.03)"

Mapping: cdw-to-LungCancerScreening
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LungCancerScreening
* subject -> "TIU.TIUDocument.PatientIEN"
* performer -> "TIU.TIUDocument.AuthorDictatorStaffIEN"
* encounter -> "TIU.TIUDocument.VisitIEN"

Mapping: sda-to-LungCancerScreening
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: LungCancerScreening
* presentedForm -> "AdvanceDirective.Comments,Alert.Comments,Documents.NoteText"
* subject -> "Documents.DocumentType"
* performer -> "Alert.EnteredBy"
* encounter -> "AdvanceDirective.EncounterNumber,Alert.EncounterNumber,Documents.EncounterNumber"