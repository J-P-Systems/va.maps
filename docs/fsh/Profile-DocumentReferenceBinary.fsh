Profile: DocumentReferenceBinary
Parent: http://hl7.org/fhir/StructureDefinition/Binary
Id: DocumentReferenceBinary
Title: "Document Reference Binary"
Description: "This StructureDefinition contains the maps for VistA file TIU DOCUMENT (8925) to Binary."
* ^status = #active
* data and contentType MS
* contentType = #text/plain

Mapping: source-to-DocumentReferenceBinary
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DocumentReferenceBinary
* data -> "1725: source value based on TIU DOCUMENT - REPORT TEXT (8925-2)"
* contentType -> "1725-1: fixed value = #text/plain" "generated from mapParameter line 1"

Mapping: sda-to-DocumentReferenceBinary
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DocumentReferenceBinary
* data -> "AdvanceDirective.Comments\nAlert.Comments\nDocuments.NoteText"

Mapping: vpr-to-DocumentReferenceBinary
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: DocumentReferenceBinary
* data -> "document.content[n]"