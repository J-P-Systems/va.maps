Profile: MedRefillRequestMHVTask
Parent: http://hl7.org/fhir/StructureDefinition/Task
Id: MedRefillRequestMHVTask
Title: "MedRefillRequestMHV Task"
Description: "This StructureDefinition contains the maps for VistA file PRESCRIPTION REFILL REQUEST (52.43) to Task."
* ^status = #active
* for and focus and owner and status and note and intent and code MS
* for only Reference(Patient)
* focus only Reference(MedicationDispenseRefill)
* owner only Reference(Organization)
* status from http://va.gov/fhir/ValueSet/RefillRequestStatus
* intent = #proposal
* code obeys mrrmhvt-23-1852
* code obeys mrrmhvt-23-1861

Invariant: mrrmhvt-23-1852
Description: "null: if 31 RELEASED DATE/TIME not null (filled at least once) then #RF"
Severity: #warning

Invariant: mrrmhvt-23-1861
Description: "null: if 31 RELEASED DATE/TIME null (never filled) then #FF"
Severity: #warning

Mapping: source-to-MedRefillRequestMHVTask
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: MedRefillRequestMHVTask
* for -> "1844: reference from PRESCRIPTION REFILL REQUEST - PATIENT (52.43-9)"
* focus -> "1845: reference from PRESCRIPTION REFILL REQUEST - RX # (52.43-3)"
* owner -> "1846: reference from PRESCRIPTION REFILL REQUEST - INSTITUTION (52.43-4)"
* status -> "1848: terminologyMaps using VF_RefillRequestStatus on PRESCRIPTION REFILL REQUEST - RESULT (52.43-6)"
* note -> "1849: source value from PRESCRIPTION REFILL REQUEST - REMARKS (52.43-10)"
* intent -> "1851: fixed value = #proposal"
* code -> "1852: fixed value = #RF case 31 RELEASED DATE/TIME not null (filled at least once)"
* code -> "1861: fixed value = #FF case 31 RELEASED DATE/TIME null (never filled)"

Mapping: cdw-to-MedRefillRequestMHVTask
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: MedRefillRequestMHVTask
* for -> "RxOut.RefillRequest.PatientIEN"
* focus -> "RxOut.RefillRequest.RxNumber"
* owner -> "RxOut.RefillRequest.InstitutionCode"
* status -> "RxOut.RefillRequest.RefillRequestResult"
* note -> "RxOut.RefillRequest.RefillRequestRemarks"