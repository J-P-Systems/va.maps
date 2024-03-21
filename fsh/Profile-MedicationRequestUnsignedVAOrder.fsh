Profile: MedicationRequestUnsignedVAOrder
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Id: MedicationRequestUnsignedVAOrder
Title: "MedicationRequest: Unsigned VA Order"
Description: "This StructureDefinition contains the maps for VistA file ORDER (#100) to us-core-medicationrequest"
* ^status = #draft
* identifier MS

Mapping: vista-to-MedicationRequestUnsignedVAOrder
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedicationRequestUnsignedVAOrder
* identifier -> "1225: source value from ORDER - ORDER # (#100-.01) case package like 'PS%' & class 'I' & [exclude supply]" "confirm case"