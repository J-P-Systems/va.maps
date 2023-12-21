Profile: DocumentReference
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentreference
Id: DocumentReference
Title: "Document Reference"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR DocumentReference"
* ^status = #draft
* category obeys inv-3
* content.attachment.contentType obeys inv-4

Invariant: inv-3
Description: "875: fixed value = clinical-note"
Severity: #warning

Invariant: inv-4
Description: "889: fixed value = text/plain"
Severity: #warning

Mapping: vista-to-DocumentReference
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DocumentReference
* masterIdentifier -> "870: target not supported" "Not Must Support"
* identifier -> "871: source value from TIU DOCUMENT - IEN (#8925-.001)"
* type -> "874: source value from TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - DOCUMENT TYPE (#8925-.01 > 8925.1-1501 > 8926.1-.08)" "Get LOINC from VistA or use TIU_VHA_ENTERPRISE_STANDARD_TITLE_8926.1 file provided by KBS to look up LOINC mapping\nCDW now has a view."
* category -> "875: fixed value = clinical-note" "(= NOTE, ADDENDUM, CONSULT, etc.?)\nUse TIU_VHA_ENTERPRISE_STANDARD_TITLE_8926.1 file provided by KBS to look up DocType\nIf the document has a type or parent value, use that for the category"
* subject -> "876: source value from TIU DOCUMENT - PATIENT (#8925-.02)" "Pointer to PATIENT/HIS FILE (#9000001)"
* date -> "877: source value from TIU DOCUMENT - ENTRY DATE/TIME (#8925-1201)" "looking into façade pattern guidance on whether this is meaningful. 03/6/23 updated mapping based on LHV feedback"
* author -> "878: source value from TIU DOCUMENT - AUTHOR/DICTATOR (#8925-1202)"
* author -> "1663: source value from TIU DOCUMENT - SIGNED BY (#8925-1502)" "Added signed by as an author since it allows more than one."
* authenticator -> "y: source value from TIU DOCUMENT - VERIFIED BY (#8925-1306)"
* custodian -> "880: source value from TIU DOCUMENT - DIVISION (#8925-1212)" "who maintains the document = VA…. Or maybe a specific? Clinic\nPer 03/02/2023 email from LH, changed the Vista field from 1205 (hospital location) to 1212 (division)."
* description -> "885: source value from TIU DOCUMENT - SUBJECT (#8925-1701)"
* securityLabel -> "886: target not supported"
* content.id -> "887: target not supported" "remove"
* content.attachment.id -> "888: source value from TIU DOCUMENT - IEN (#8925-.001)" "keep. Using HDR to pull text; need this"
* content.attachment.contentType -> "889: fixed value = text/plain"
* content.attachment.language -> "890: target not supported"
* content.attachment.data -> "891: source value from TIU DOCUMENT - REPORT TEXT (#8925-2)" "option 1: tbd\nUS Core: DocumentReference.content.attachment.url or DocumentReference.content.attachment.data or both SHALL be present."
* content.attachment.size -> "893: transform using null" "calculated"
* content.attachment.hash -> "894: transform using null" "calculated"
* content.attachment.title -> "895: source value from TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - STANDARD TITLE (#8925-.01 > 8925.1-1501 > 8926.1-.01)" "03/06/23 added the secondary subfield based on LH feedback"
* content.attachment.creation -> "896: source value from TIU DOCUMENT - ENTRY DATE/TIME (#8925-1201)" ".07 does not indicate parent or child document only the treatment episode associated with document"
* content.format -> "897: target not supported" "These are specific document types, mostly IHE, not MIME"
* context.id -> "898: target not supported" "Or ad hoc, for transient assets"
* context.encounter -> "899: reference from TIU DOCUMENT - VISIT (#8925-.03)"
* context.event -> "900: source value from TIU DOCUMENT - VISIT TYPE (#8925-.13)" "candidate: 8925-.13"
* context.period.start -> "901: source value from TIU DOCUMENT - EPISODE BEGIN DATE/TIME (#8925-.07)"
* context.period.end -> "902: source value from TIU DOCUMENT - EPISODE END DATE/TIME (#8925-.08)"
* context.facilityType -> "903: source value from TIU DOCUMENT - HOSPITAL LOCATION > HOSPITAL LOCATION - TYPE (#8925-1205 > 44-2)"
* context.practiceSetting -> "904: source value from TIU DOCUMENT - TREATING SPECIALTY (#8925-1402)"
* context.sourcePatientInfo -> "905: target not supported" "a snapshot of patient at time of document"
* context.related -> "906: target not supported" "other related assets"

Mapping: cdw-to-DocumentReference
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DocumentReference
* date -> "TIU.TIUDocument.EntryDateTime"
* description -> "TIU.TIUDocument.DocumentSubject"
* content.attachment.creation -> "TIU.TIUDocument.EntryDateTime"
* context.event -> "TIU.TIUDocument.VisitType"
* context.period.start -> "TIU.TIUDocument.EpisodeBeginDateTime"
* context.period.end -> "TIU.TIUDocument.EpisodeEndDateTime"
* context.facilityType -> "Dim.Location.LocationType"

Mapping: vpr-to-DocumentReference
Id: vpr
Title: "Virtual Patient Record (VPR)"
Source: DocumentReference
* content.attachment.title -> "#ERROR_#REF!"