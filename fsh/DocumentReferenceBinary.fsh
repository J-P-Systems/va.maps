Profile: DocumentReferenceBinary
Parent: http://hl7.org/fhir/StructureDefinition/Binary
Id: DocumentReferenceBinary
Title: "Document Reference {Binary}"
Description: "This StructureDefinition contains the maps for VistA file TIU DOCUMENT (#8925) to Binary"
* ^status = #draft
* contentType obeys inv-5

Invariant: inv-5
Description: "++: fixed value = text/plain"
Severity: #warning

Mapping: vista-to-DocumentReferenceBinary
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DocumentReferenceBinary
* data -> "++: source value from TIU DOCUMENT - REPORT TEXT (#8925-2)"
* contentType -> "++: fixed value = text/plain"