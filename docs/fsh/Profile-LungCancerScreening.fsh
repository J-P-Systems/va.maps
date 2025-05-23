Profile: LungCancerScreening
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Id: LungCancerScreening
Title: "Lung Cancer Screening"
Description: "This StructureDefinition contains the maps for VistA file TIU DOCUMENT (8925) to us-core-diagnosticreport-note."
* ^status = #draft
* presentedForm and subject and performer and encounter MS
* subject only Reference(Patient)
* performer only Reference(Practitioner)
* encounter only Reference(EncounterOutpatient)

Mapping: source-to-LungCancerScreening
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LungCancerScreening
* presentedForm -> "932: source value based on TIU DOCUMENT - REPORT TEXT (8925-2)"
* subject -> "933: reference based on TIU DOCUMENT - PATIENT > PATIENT/IHS - NAME (8925-.02 > 9000001-.01)"
* performer -> "934: reference based on TIU DOCUMENT - AUTHOR/DICTATOR (8925-1202)"
* encounter -> "935: reference based on TIU DOCUMENT - VISIT (8925-.03)"
* status -> "2159: target not supported" "auto added because of must-support"
* category[us-core] -> "2161: target not supported" "auto added because of must-support"
* code -> "2162: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2163: target not supported" "auto added because of must-support"
* issued -> "2164: target not supported" "auto added because of must-support"
* result -> "2165: target not supported" "auto added because of must-support"
* media -> "2166: target not supported" "auto added because of must-support"
* media.link -> "2167: target not supported" "auto added because of must-support"

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
* presentedForm -> "AdvanceDirective.Comments\nAlert.Comments\nDocuments.NoteText"
* subject -> "Documents.DocumentType"
* performer -> "Alert.EnteredBy"
* encounter -> "AdvanceDirective.EncounterNumber\nAlert.EncounterNumber\nDocuments.EncounterNumber"

Mapping: vpr-to-LungCancerScreening
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: LungCancerScreening
* presentedForm -> "document.content[n]"
* performer -> "document.clinician [m] (>200-.01)\ndocument.clinician [m] (>200-20.2)\ndocument.clinician [m] (>200-8932.1)"
* encounter -> "document.encounter"