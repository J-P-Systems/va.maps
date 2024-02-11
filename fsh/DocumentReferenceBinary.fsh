Profile: DocumentReferenceBinary
Parent: http://hl7.org/fhir/StructureDefinition/Binary
Id: DocumentReferenceBinary
Title: "Document Reference Binary"
Description: "This StructureDefinition contains the maps for VistA file TIU DOCUMENT (#8925) to Binary"
* ^status = #draft
* data and contentType MS

Mapping: vista-to-DocumentReferenceBinary
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DocumentReferenceBinary
* data -> "1725: source value from TIU DOCUMENT - REPORT TEXT (#8925-2)"
* contentType -> "1726: fixed value = text/plain"