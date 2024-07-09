Profile: MedRefillRequestMHV
Parent: http://hl7.org/fhir/StructureDefinition/Task
Id: MedRefillRequestMHV
Title: "MedRefillRequestMHV"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Task"
* ^status = #draft
* for and focus and owner and status and note and intent and code MS
* for only Reference(http://hl7.org/fhir/StructureDefinition/Patient)
* focus only Reference(http://hl7.org/fhir/StructureDefinition/MedicationRequest)
* owner only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* status from http://va.gov/fhir/ValueSet/VSVFRefillRequestStatus
* intent = #proposal

Mapping: vista-to-MedRefillRequestMHV
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHV
* for -> "1844: reference from PRESCRIPTION REFILL REQUEST - PATIENT (52.43-9)"
* focus -> "1845: reference from PRESCRIPTION REFILL REQUEST - Rx# (52.43-3)"
* owner -> "1846: reference from PRESCRIPTION REFILL REQUEST - INSTITUTION (52.43-4)"
* status -> "1848: terminologyMaps using VF_RefillRequestStatus on PRESCRIPTION REFILL REQUEST - RESULT (52.43-6)"
* note -> "1849: source value from PRESCRIPTION REFILL REQUEST - REMARKS (52.43-10)"
* intent -> "1851: fixed value = #proposal"
* code -> "1852: fixed value = RF case 31 RELEASED DATE/TIME not null (filled at least once)"
* code -> "1861: fixed value = FF case 31 RELEASED DATE/TIME null (never filled)"

Mapping: cdw-to-MedRefillRequestMHV
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHV
* for -> "RxOut.RefillRequest.PatientIEN"
* focus -> "RxOut.RefillRequest.RxNumber"
* owner -> "RxOut.RefillRequest.InstitutionCode"
* status -> "RxOut.RefillRequest.RefillRequestResult"
* note -> "RxOut.RefillRequest.RefillRequestRemarks"